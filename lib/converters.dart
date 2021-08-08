import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:http_status_api/http_status.dart';

class HttpStatusConverter extends ICustomConverter<HttpStatus> {
  @override
  HttpStatus fromJSON(json, [DeserializationContext? context]) {
    return HttpStatus.getHttpStatus(json);
  }

  @override
  toJSON(HttpStatus status, [SerializationContext? context]) {
    return status.getStatus();
  }
}

class HttpStatusByCodeConverter extends ICustomConverter<HttpStatus> {
  @override
  HttpStatus fromJSON(code, [DeserializationContext? context]) {
    return HttpStatus.getHttpStatusByCode(code);
  }

  @override
  toJSON(HttpStatus status, [SerializationContext? context]) {
    return status.getCode();
  }
}
