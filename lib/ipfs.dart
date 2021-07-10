import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:path_provider/path_provider.dart';

import 'package:path/path.dart' as p;

const String _kIpfsMediaBaseUrl = 'https://app.subsocial.network/ipfs/ipfs';
const String _kIpfsBaseUrl =
    'https://app.subsocial.network/offchain/v1/ipfs/get';

class IpfsClient {
  static final Dio _client = Dio()
    ..httpClientAdapter = Http2Adapter(
      ConnectionManager(
        idleTimeout: 10 * 1000,
      ),
    );

  Future<Uint8List?> media(String cid) async {
    final tmpDir = await getTemporaryDirectory();
    final savingPath = p.join(tmpDir.path, cid);
    final result = await _client.download(
      '$_kIpfsMediaBaseUrl/$cid',
      savingPath,
    );
    if (result.statusCode == 200) {
      final f = File(savingPath);
      final bytes = await f.readAsBytes();
      await f.delete(); // delete the tmp file.
      return bytes;
    } else {
      return null;
    }
  }

  Future<Map<String, T>> query<T>(
    List<String> cids,
    T Function(Map<String, dynamic>) converter,
  ) async {
    final result = await _client.get<Map<String, dynamic>>(
      _kIpfsBaseUrl,
      queryParameters: {
        'cids': cids.join(','),
      },
      options: Options(
        contentType: ContentType.json.value,
      ),
    );
    if (result.statusCode == 200) {
      return result.data!.map(
        (key, value) => MapEntry(key, converter(value as Map<String, dynamic>)),
      );
    } else {
      return {};
    }
  }
}
