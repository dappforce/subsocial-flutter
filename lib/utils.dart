/// original: https://github.com/dart-lang/isolate/blob/ca133acb5af3a60a026fa2aab12b81e60048b3be/lib/ports.dart

import 'dart:async';
import 'dart:isolate';

/// Create a [SendPort] that accepts only one message.
///
/// The [callback] function is called once, with the first message
/// received by the receive port.
/// All further messages are ignored.
///
/// If [timeout] is supplied, it is used as a limit on how
/// long it can take before the message is received. If a
/// message isn't received in time, the `callback` function
/// is called once with the [timeoutValue] instead.
///
/// If the received value is not a [T], it will cause an uncaught
/// asynchronous error in the current zone.
///
/// Returns the `SendPort` expecting the single message.
///
/// Equivalent to:
/// ```dart
/// (new ReceivePort()
///       ..first.timeout(duration, () => timeoutValue).then(callback))
///     .sendPort
/// ```
SendPort singleCallbackPort<P>(void Function(P? response) callback,
    {Duration? timeout, P? timeoutValue}) {
  final responsePort = RawReceivePort();
  final zone = Zone.current;
  // ignore: parameter_assignments
  callback = zone.registerUnaryCallback(callback);
  Timer? timer;
  responsePort.handler = (response) {
    responsePort.close();
    timer?.cancel();
    zone.runUnary(callback, response as P);
  };
  if (timeout != null) {
    timer = Timer(timeout, () {
      responsePort.close();
      callback(timeoutValue);
    });
  }
  return responsePort.sendPort;
}

/// Create a [SendPort] that accepts only one message.
///
/// When the first message is received, the [callback] function is
/// called with the message as argument,
/// and the [completer] is completed with the result of that call.
/// All further messages are ignored.
///
/// If `callback` is omitted, it defaults to an identity function.
/// The `callback` call may return a future, and the completer will
/// wait for that future to complete. If [callback] is omitted, the
/// message on the port must be an instance of [R].
///
/// If [timeout] is supplied, it is used as a limit on how
/// long it can take before the message is received. If a
/// message isn't received in time, the [onTimeout] is called,
/// and `completer` is completed with the result of that call
/// instead.
/// The [callback] function will not be interrupted by the time-out,
/// as long as the initial message is received in time.
/// If `onTimeout` is omitted, it defaults to completing the `completer` with
/// a [TimeoutException].
///
/// The [completer] may be a synchronous completer. It is only
/// completed in response to another event, either a port message or a timer.
///
/// Returns the `SendPort` expecting the single message.
SendPort singleCompletePort<R, P>(Completer<R> completer,
    {FutureOr<R> Function(P? message)? callback,
    Duration? timeout,
    FutureOr<R> Function()? onTimeout}) {
  if (callback == null && timeout == null) {
    return singleCallbackPort<R>((response) {
      _castComplete<R>(completer, response);
    });
  }
  final responsePort = RawReceivePort();
  Timer? timer;
  if (callback == null) {
    responsePort.handler = (response) {
      responsePort.close();
      timer?.cancel();
      _castComplete<R>(completer, response);
    };
  } else {
    final zone = Zone.current;
    final action = zone.registerUnaryCallback((response) {
      try {
        // Also catch it if callback throws.
        completer.complete(callback(response as P));
      } catch (error, stack) {
        completer.completeError(error, stack);
      }
    });
    responsePort.handler = (response) {
      responsePort.close();
      timer?.cancel();
      zone.runUnary(action, response as P);
    };
  }
  if (timeout != null) {
    timer = Timer(timeout, () {
      responsePort.close();
      if (onTimeout != null) {
        completer.complete(Future.sync(onTimeout));
      } else {
        completer
            .completeError(TimeoutException('Future not completed', timeout));
      }
    });
  }
  return responsePort.sendPort;
}

// Helper function that casts an object to a type and completes a
// corresponding completer, or completes with the error if the cast fails.
void _castComplete<R>(Completer<R> completer, Object? value) {
  try {
    completer.complete(value as R);
  } catch (error, stack) {
    completer.completeError(error, stack);
  }
}
