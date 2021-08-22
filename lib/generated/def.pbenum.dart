///
//  Generated code. Do not modify.
//  source: def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Error_Kind extends $pb.ProtobufEnum {
  static const Error_Kind KIND_UNKNOWN = Error_Kind._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'KIND_UNKNOWN');
  static const Error_Kind KIND_NETWORK = Error_Kind._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'KIND_NETWORK');
  static const Error_Kind KIND_INVALID_PROTO = Error_Kind._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'KIND_INVALID_PROTO');
  static const Error_Kind KIND_INVALID_REQUEST = Error_Kind._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'KIND_INVALID_REQUEST');
  static const Error_Kind KIND_NOT_FOUND = Error_Kind._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'KIND_NOT_FOUND');
  static const Error_Kind KIND_SUBXT = Error_Kind._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'KIND_SUBXT');

  static const $core.List<Error_Kind> values = <Error_Kind>[
    KIND_UNKNOWN,
    KIND_NETWORK,
    KIND_INVALID_PROTO,
    KIND_INVALID_REQUEST,
    KIND_NOT_FOUND,
    KIND_SUBXT,
  ];

  static final $core.Map<$core.int, Error_Kind> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Error_Kind? valueOf($core.int value) => _byValue[value];

  const Error_Kind._($core.int v, $core.String n) : super(v, n);
}

class Reaction_Kind extends $pb.ProtobufEnum {
  static const Reaction_Kind UNKNOWN = Reaction_Kind._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UNKNOWN');
  static const Reaction_Kind UP_VOTE = Reaction_Kind._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UP_VOTE');
  static const Reaction_Kind DOWN_VOTE = Reaction_Kind._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'DOWN_VOTE');

  static const $core.List<Reaction_Kind> values = <Reaction_Kind>[
    UNKNOWN,
    UP_VOTE,
    DOWN_VOTE,
  ];

  static final $core.Map<$core.int, Reaction_Kind> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Reaction_Kind? valueOf($core.int value) => _byValue[value];

  const Reaction_Kind._($core.int v, $core.String n) : super(v, n);
}
