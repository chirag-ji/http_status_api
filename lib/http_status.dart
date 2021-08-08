import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
enum Series {
  INFORMATIONAL,
  SUCCESSFUL,
  REDIRECTION,
  CLIENT_ERROR,
  SERVER_ERROR,
}

@jsonSerializable
class HttpStatus {
  // 1xx Informational

  /// 100 Continue
  /// <a href="https://tools.ietf.org/html/rfc7231#section-6.2.1">HTTP/1.1: Semantics and Content, section 6.2.1
  static final continuee = HttpStatus._def(
    100,
    'CONTINUE',
    Series.INFORMATIONAL,
    'Continue',
  );

  /// 101 Switching Protocols.
  /// <a href="https://tools.ietf.org/html/rfc7231#section-6.2.2">HTTP/1.1: Semantics and Content, section 6.2.2
  static final switchingProtocols = HttpStatus._def(
    101,
    'SWITCHING_PROTOCOLS',
    Series.INFORMATIONAL,
    'Switching Protocols',
  );

  /// {@code 102 Processing}.
  /// @see <a href="https://tools.ietf.org/html/rfc2518#section-10.1">WebDAV</a>
  static final processing = HttpStatus._def(
    102,
    'PROCESSING',
    Series.INFORMATIONAL,
    'Processing',
  );

  /// {@code 103 Checkpoint}.
  /// @see <a href="https://code.google.com/p/gears/wiki/ResumableHttpRequestsProposal">A proposal for supporting
  /// resumable POST/PUT HTTP requests in HTTP/1.0</a>
  static final checkpoint = HttpStatus._def(
    103,
    'CHECKPOINT',
    Series.INFORMATIONAL,
    'Checkpoint',
  );

  // 2xx Success
  /// {@code 200 OK}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.3.1">HTTP/1.1: Semantics and Content, section 6.3.1</a>
  static final ok = HttpStatus._def(
    200,
    'OK',
    Series.SUCCESSFUL,
    'OK',
  );

  /// {@code 201 Created}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.3.2">HTTP/1.1: Semantics and Content, section 6.3.2</a>
  static final created = HttpStatus._def(
    201,
    'CREATED',
    Series.SUCCESSFUL,
    'Created',
  );

  /// {@code 202 Accepted}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.3.3">HTTP/1.1: Semantics and Content, section 6.3.3</a>
  static final accepted = HttpStatus._def(
    202,
    'ACCEPTED',
    Series.SUCCESSFUL,
    "Accepted",
  );

  /// {@code 203 Non-Authoritative Information}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.3.4">HTTP/1.1: Semantics and Content, section 6.3.4</a>
  static final nonAuthoriativeInformation = HttpStatus._def(
    203,
    'NON_AUTHORITATIVE_INFORMATION',
    Series.SUCCESSFUL,
    "Non-Authoritative Information",
  );

  /// {@code 204 No Content}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.3.5">HTTP/1.1: Semantics and Content, section 6.3.5</a>
  static final noContent = HttpStatus._def(
    204,
    'NO_CONTENT',
    Series.SUCCESSFUL,
    "No Content",
  );

  /// {@code 205 Reset Content}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.3.6">HTTP/1.1: Semantics and Content, section 6.3.6</a>
  static final resetContent = HttpStatus._def(
    205,
    'RESET_CONTENT',
    Series.SUCCESSFUL,
    "Reset Content",
  );

  /// {@code 206 Partial Content}.
  /// @see <a href="https://tools.ietf.org/html/rfc7233#section-4.1">HTTP/1.1: Range Requests, section 4.1</a>
  static final partialContent = HttpStatus._def(
    206,
    'PARTIAL_CONTENT',
    Series.SUCCESSFUL,
    "Partial Content",
  );

  /// {@code 207 Multi-Status}.
  /// @see <a href="https://tools.ietf.org/html/rfc4918#section-13">WebDAV</a>
  static final multiStatus = HttpStatus._def(
    207,
    'MULTI_STATUS',
    Series.SUCCESSFUL,
    "Multi-Status",
  );

  /// {@code 208 Already Reported}.
  /// @see <a href="https://tools.ietf.org/html/rfc5842#section-7.1">WebDAV Binding Extensions</a>
  static final alreadyReported = HttpStatus._def(
    208,
    'ALREADY_REPORTED',
    Series.SUCCESSFUL,
    "Already Reported",
  );

  /// {@code 226 IM Used}.
  /// @see <a href="https://tools.ietf.org/html/rfc3229#section-10.4.1">Delta encoding in HTTP</a>
  static final iAmUsed = HttpStatus._def(
    226,
    'IM_USED',
    Series.SUCCESSFUL,
    "IM Used",
  );

  // 3xx Redirection

  /// {@code 300 Multiple Choices}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.4.1">HTTP/1.1: Semantics and Content, section 6.4.1</a>
  static final multipleChoices = HttpStatus._def(
    300,
    'MULTIPLE_CHOICES',
    Series.REDIRECTION,
    "Multiple Choices",
  );

  /// {@code 301 Moved Permanently}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.4.2">HTTP/1.1: Semantics and Content, section 6.4.2</a>
  static final movedPermanently = HttpStatus._def(
    301,
    'MOVED_PERMANENTLY',
    Series.REDIRECTION,
    "Moved Permanently",
  );

  /// {@code 302 Found}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.4.3">HTTP/1.1: Semantics and Content, section 6.4.3</a>
  static final found = HttpStatus._def(
    302,
    'FOUND',
    Series.REDIRECTION,
    "Found",
  );

  /// {@code 302 Moved Temporarily}.
  /// @see <a href="https://tools.ietf.org/html/rfc1945#section-9.3">HTTP/1.0, section 9.3</a>
  @Deprecated('found')
  static final movedTemporarily = HttpStatus._def(
    302,
    'MOVED_TEMPORARILY',
    Series.REDIRECTION,
    "Moved Temporarily",
  );

  /// {@code 303 See Other}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.4.4">HTTP/1.1: Semantics and Content, section 6.4.4</a>
  static final seeOther = HttpStatus._def(
    303,
    'SEE_OTHER',
    Series.REDIRECTION,
    "See Other",
  );

  /// {@code 304 Not Modified}.
  /// @see <a href="https://tools.ietf.org/html/rfc7232#section-4.1">HTTP/1.1: Conditional Requests, section 4.1</a>
  static final notModified = HttpStatus._def(
    304,
    'NOT_MODIFIED',
    Series.REDIRECTION,
    "Not Modified",
  );

  /// {@code 305 Use Proxy}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.4.5">HTTP/1.1: Semantics and Content, section 6.4.5</a>
  @Deprecated(
      'due to security concerns regarding in-band configuration of a proxy')
  static final useProxy = HttpStatus._def(
    305,
    'USE_PROXY',
    Series.REDIRECTION,
    "Use Proxy",
  );

  /// {@code 307 Temporary Redirect}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.4.7">HTTP/1.1: Semantics and Content, section 6.4.7</a>
  static final tempRedirect = HttpStatus._def(
    307,
    'TEMPORARY_REDIRECT',
    Series.REDIRECTION,
    "Temporary Redirect",
  );

  /// {@code 308 Permanent Redirect}.
  /// @see <a href="https://tools.ietf.org/html/rfc7238">RFC 7238</a>
  static final permanentRedirect = HttpStatus._def(
    308,
    'PERMANENT_REDIRECT',
    Series.REDIRECTION,
    "Permanent Redirect",
  );

  // --- 4xx Client Error ---

  /// {@code 400 Bad Request}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.1">HTTP/1.1: Semantics and Content, section 6.5.1</a>
  static final badRequest = HttpStatus._def(
    400,
    'BAD_REQUEST',
    Series.CLIENT_ERROR,
    "Bad Request",
  );

  /// {@code 401 Unauthorized}.
  /// @see <a href="https://tools.ietf.org/html/rfc7235#section-3.1">HTTP/1.1: Authentication, section 3.1</a>
  static final unauthorized = HttpStatus._def(
    401,
    'UNAUTHORIZED',
    Series.CLIENT_ERROR,
    "Unauthorized",
  );

  /// {@code 402 Payment Required}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.2">HTTP/1.1: Semantics and Content, section 6.5.2</a>
  static final paymentRequired = HttpStatus._def(
    402,
    'PAYMENT_REQUIRED',
    Series.CLIENT_ERROR,
    "Payment Required",
  );

  /// {@code 403 Forbidden}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.3">HTTP/1.1: Semantics and Content, section 6.5.3</a>
  static final forbidden = HttpStatus._def(
    403,
    'FORBIDDEN',
    Series.CLIENT_ERROR,
    "Forbidden",
  );

  /// {@code 404 Not Found}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.4">HTTP/1.1: Semantics and Content, section 6.5.4</a>
  static final notFound = HttpStatus._def(
    404,
    'NOT_FOUND',
    Series.CLIENT_ERROR,
    "Not Found",
  );

  /// {@code 405 Method Not Allowed}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.5">HTTP/1.1: Semantics and Content, section 6.5.5</a>
  static final methodNotAllowed = HttpStatus._def(
    405,
    'METHOD_NOT_ALLOWED',
    Series.CLIENT_ERROR,
    "Method Not Allowed",
  );

  /// {@code 406 Not Acceptable}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.6">HTTP/1.1: Semantics and Content, section 6.5.6</a>
  static final notAcceptable = HttpStatus._def(
    406,
    'NOT_ACCEPTABLE',
    Series.CLIENT_ERROR,
    "Not Acceptable",
  );

  /// {@code 407 Proxy Authentication Required}.
  /// @see <a href="https://tools.ietf.org/html/rfc7235#section-3.2">HTTP/1.1: Authentication, section 3.2</a>
  static final proxyAuthRequired = HttpStatus._def(
    407,
    'PROXY_AUTHENTICATION_REQUIRED',
    Series.CLIENT_ERROR,
    "Proxy Authentication Required",
  );

  /// {@code 408 Request Timeout}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.7">HTTP/1.1: Semantics and Content, section 6.5.7</a>
  static final requestTimeout = HttpStatus._def(
    408,
    'REQUEST_TIMEOUT',
    Series.CLIENT_ERROR,
    "Request Timeout",
  );

  /// {@code 409 Conflict}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.8">HTTP/1.1: Semantics and Content, section 6.5.8</a>
  static final conflict = HttpStatus._def(
    409,
    'CONFLICT',
    Series.CLIENT_ERROR,
    "Conflict",
  );

  /// {@code 410 Gone}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.9">
  ///     HTTP/1.1: Semantics and Content, section 6.5.9</a>
  static final gone = HttpStatus._def(
    410,
    'GONE',
    Series.CLIENT_ERROR,
    "Gone",
  );

  /// {@code 411 Length Required}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.10">
  ///     HTTP/1.1: Semantics and Content, section 6.5.10</a>
  static final lengthRequired = HttpStatus._def(
    411,
    'LENGTH_REQUIRED',
    Series.CLIENT_ERROR,
    "Length Required",
  );

  /// {@code 412 Precondition failed}.
  /// @see <a href="https://tools.ietf.org/html/rfc7232#section-4.2">
  ///     HTTP/1.1: Conditional Requests, section 4.2</a>
  static final preconditionFailed = HttpStatus._def(
    412,
    'PRECONDITION_FAILED',
    Series.CLIENT_ERROR,
    "Precondition Failed",
  );

  /// {@code 413 Payload Too Large}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.11">
  ///     HTTP/1.1: Semantics and Content, section 6.5.11</a>
  static final payloadTooLarge = HttpStatus._def(
    413,
    'PAYLOAD_TOO_LARGE',
    Series.CLIENT_ERROR,
    "Payload Too Large",
  );

  /// {@code 413 Request Entity Too Large}.
  /// @see <a href="https://tools.ietf.org/html/rfc2616#section-10.4.14">HTTP/1.1, section 10.4.14</a>
  @Deprecated('payloadTooLarge')
  static final reqEntityTooLarge = HttpStatus._def(
    413,
    'REQUEST_ENTITY_TOO_LARGE',
    Series.CLIENT_ERROR,
    "Request Entity Too Large",
  );

  /// {@code 414 URI Too Long}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.12">
  ///     HTTP/1.1: Semantics and Content, section 6.5.12</a>
  static final uriTooLong = HttpStatus._def(
    414,
    'URI_TOO_LONG',
    Series.CLIENT_ERROR,
    "URI Too Long",
  );

  /// {@code 414 Request-URI Too Long}.
  /// @see <a href="https://tools.ietf.org/html/rfc2616#section-10.4.15">HTTP/1.1, section 10.4.15</a>
  @Deprecated('uriTooLong')
  static final reqUriTooLong = HttpStatus._def(
    414,
    'REQUEST_URI_TOO_LONG',
    Series.CLIENT_ERROR,
    "Request-URI Too Long",
  );

  /// {@code 415 Unsupported Media Type}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.13">
  ///     HTTP/1.1: Semantics and Content, section 6.5.13</a>
  static final unsupportedMediaType = HttpStatus._def(
    415,
    'UNSUPPORTED_MEDIA_TYPE',
    Series.CLIENT_ERROR,
    "Unsupported Media Type",
  );

  /// {@code 416 Requested Range Not Satisfiable}.
  /// @see <a href="https://tools.ietf.org/html/rfc7233#section-4.4">HTTP/1.1: Range Requests, section 4.4</a>
  static final requestRangeNotSatisfiable = HttpStatus._def(
    416,
    'REQUESTED_RANGE_NOT_SATISFIABLE',
    Series.CLIENT_ERROR,
    "Requested range not satisfiable",
  );

  /// {@code 417 Expectation Failed}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.5.14">
  ///     HTTP/1.1: Semantics and Content, section 6.5.14</a>
  static final expectationFailed = HttpStatus._def(
    417,
    'EXPECTATION_FAILED',
    Series.CLIENT_ERROR,
    "Expectation Failed",
  );

  /// {@code 418 I'm a teapot}.
  /// @see <a href="https://tools.ietf.org/html/rfc2324#section-2.3.2">HTCPCP/1.0</a>
  static final iAmTeapot = HttpStatus._def(
    418,
    'I_AM_A_TEAPOT',
    Series.CLIENT_ERROR,
    "I'm a teapot",
  );

  /// @deprecated See
  /// <a href="https://tools.ietf.org/rfcdiff?difftype=--hwdiff&url2=draft-ietf-webdav-protocol-06.txt">
  ///     WebDAV Draft Changes</a>
  @deprecated
  static final insufficientSpaceOnResource = HttpStatus._def(
    419,
    'INSUFFICIENT_SPACE_ON_RESOURCE',
    Series.CLIENT_ERROR,
    "Insufficient Space On Resource",
  );

  /// @deprecated See
  /// <a href="https://tools.ietf.org/rfcdiff?difftype=--hwdiff&url2=draft-ietf-webdav-protocol-06.txt">
  ///     WebDAV Draft Changes</a>
  @deprecated
  static final methodFailure = HttpStatus._def(
    420,
    'METHOD_FAILURE',
    Series.CLIENT_ERROR,
    "Method Failure",
  );

  /// @deprecated
  /// See <a href="https://tools.ietf.org/rfcdiff?difftype=--hwdiff&url2=draft-ietf-webdav-protocol-06.txt">
  ///     WebDAV Draft Changes</a>
  @deprecated
  static final destinationLocked = HttpStatus._def(
    421,
    'DESTINATION_LOCKED',
    Series.CLIENT_ERROR,
    "Destination Locked",
  );

  /// {@code 422 Unprocessable Entity}.
  /// @see <a href="https://tools.ietf.org/html/rfc4918#section-11.2">WebDAV</a>
  static final unprocessableEntity = HttpStatus._def(
    422,
    'UNPROCESSABLE_ENTITY',
    Series.CLIENT_ERROR,
    "Unprocessable Entity",
  );

  /// {@code 423 Locked}.
  /// @see <a href="https://tools.ietf.org/html/rfc4918#section-11.3">WebDAV</a>
  static final locked = HttpStatus._def(
    423,
    'LOCKED',
    Series.CLIENT_ERROR,
    "Locked",
  );

  /// {@code 424 Failed Dependency}.
  /// @see <a href="https://tools.ietf.org/html/rfc4918#section-11.4">WebDAV</a>
  static final failedDependency = HttpStatus._def(
    424,
    'FAILED_DEPENDENCY',
    Series.CLIENT_ERROR,
    "Failed Dependency",
  );

  /// {@code 425 Too Early}.
  /// @see <a href="https://tools.ietf.org/html/rfc8470">RFC 8470</a>
  static final tooEarly = HttpStatus._def(
    425,
    'TOO_EARLY',
    Series.CLIENT_ERROR,
    "Too Early",
  );

  /// {@code 426 Upgrade Required}.
  /// @see <a href="https://tools.ietf.org/html/rfc2817#section-6">Upgrading to TLS Within HTTP/1.1</a>
  static final upgradeRequired = HttpStatus._def(
    426,
    'UPGRADE_REQUIRED',
    Series.CLIENT_ERROR,
    "Upgrade Required",
  );

  /// {@code 428 Precondition Required}.
  /// @see <a href="https://tools.ietf.org/html/rfc6585#section-3">Additional HTTP Status Codes</a>
  static final preconditionRequired = HttpStatus._def(
    428,
    'PRECONDITION_REQUIRED',
    Series.CLIENT_ERROR,
    "Precondition Required",
  );

  /// {@code 429 Too Many Requests}.
  /// @see <a href="https://tools.ietf.org/html/rfc6585#section-4">Additional HTTP Status Codes</a>
  static final tooManyRequests = HttpStatus._def(
    429,
    'TOO_MANY_REQUESTS',
    Series.CLIENT_ERROR,
    "Too Many Requests",
  );

  /// {@code 431 Request Header Fields Too Large}.
  /// @see <a href="https://tools.ietf.org/html/rfc6585#section-5">Additional HTTP Status Codes</a>
  static final reqHeaderFieldsTooLarge = HttpStatus._def(
    431,
    'REQUEST_HEADER_FIELDS_TOO_LARGE',
    Series.CLIENT_ERROR,
    "Request Header Fields Too Large",
  );

  /// {@code 451 Unavailable For Legal Reasons}.
  /// @see <a href="https://tools.ietf.org/html/draft-ietf-httpbis-legally-restricted-status-04">
  /// An HTTP Status Code to Report Legal Obstacles</a>
  static final unavailableForLegalReasons = HttpStatus._def(
    451,
    'UNAVAILABLE_FOR_LEGAL_REASONS',
    Series.CLIENT_ERROR,
    "Unavailable For Legal Reasons",
  );

  // --- 5xx Server Error ---

  /// {@code 500 Internal Server Error}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.6.1">HTTP/1.1: Semantics and Content, section 6.6.1</a>
  static final internalServerError = HttpStatus._def(
    500,
    'INTERNAL_SERVER_ERROR',
    Series.SERVER_ERROR,
    "Internal Server Error",
  );

  /// {@code 501 Not Implemented}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.6.2">HTTP/1.1: Semantics and Content, section 6.6.2</a>
  static final notImplemented = HttpStatus._def(
    501,
    'NOT_IMPLEMENTED',
    Series.SERVER_ERROR,
    "Not Implemented",
  );

  /// {@code 502 Bad Gateway}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.6.3">HTTP/1.1: Semantics and Content, section 6.6.3</a>
  static final badGateway = HttpStatus._def(
    502,
    'BAD_GATEWAY',
    Series.SERVER_ERROR,
    "Bad Gateway",
  );

  /// {@code 503 Service Unavailable}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.6.4">HTTP/1.1: Semantics and Content, section 6.6.4</a>
  static final serviceUnavailable = HttpStatus._def(
    503,
    'SERVICE_UNAVAILABLE',
    Series.SERVER_ERROR,
    "Service Unavailable",
  );

  /// {@code 504 Gateway Timeout}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.6.5">HTTP/1.1: Semantics and Content, section 6.6.5</a>
  static final gatewayTimeout = HttpStatus._def(
    504,
    'GATEWAY_TIMEOUT',
    Series.SERVER_ERROR,
    "Gateway Timeout",
  );

  /// {@code 505 HTTP Version Not Supported}.
  /// @see <a href="https://tools.ietf.org/html/rfc7231#section-6.6.6">HTTP/1.1: Semantics and Content, section 6.6.6</a>
  static final httpVersionNotSupported = HttpStatus._def(
    505,
    'HTTP_VERSION_NOT_SUPPORTED',
    Series.SERVER_ERROR,
    "HTTP Version not supported",
  );

  /// {@code 506 Variant Also Negotiates}
  /// @see <a href="https://tools.ietf.org/html/rfc2295#section-8.1">Transparent Content Negotiation</a>
  static final variantAlsoNegotiates = HttpStatus._def(
    506,
    'VARIANT_ALSO_NEGOTIATES',
    Series.SERVER_ERROR,
    "Variant Also Negotiates",
  );

  /// {@code 507 Insufficient Storage}
  /// @see <a href="https://tools.ietf.org/html/rfc4918#section-11.5">WebDAV</a>
  static final insufficientStorage = HttpStatus._def(
    507,
    'INSUFFICIENT_STORAGE',
    Series.SERVER_ERROR,
    "Insufficient Storage",
  );

  /// {@code 508 Loop Detected}
  /// @see <a href="https://tools.ietf.org/html/rfc5842#section-7.2">WebDAV Binding Extensions</a>
  static final loopDetected = HttpStatus._def(
    508,
    'LOOP_DETECTED',
    Series.SERVER_ERROR,
    "Loop Detected",
  );

  /// {@code 509 Bandwidth Limit Exceeded}
  static final bandwidthLimitExceeded = HttpStatus._def(
    509,
    'BANDWIDTH_LIMIT_EXCEEDED',
    Series.SERVER_ERROR,
    "Bandwidth Limit Exceeded",
  );

  /// {@code 510 Not Extended}
  /// @see <a href="https://tools.ietf.org/html/rfc2774#section-7">HTTP Extension Framework</a>
  static final notExtended = HttpStatus._def(
    510,
    'NOT_EXTENDED',
    Series.SERVER_ERROR,
    "Not Extended",
  );

  /// {@code 511 Network Authentication Required}.
  /// @see <a href="https://tools.ietf.org/html/rfc6585#section-6">Additional HTTP Status Codes</a>
  static final networkAuthRequired = HttpStatus._def(
    511,
    'NETWORK_AUTHENTICATION_REQUIRED',
    Series.SERVER_ERROR,
    "Network Authentication Required",
  );

  final int _code;
  final String _status;
  final Series _series;
  final String _reason;

  static Map<String, HttpStatus> _statuses = {};

  HttpStatus._def(this._code, this._status, this._series, this._reason) {
    var _self = this;
    _statuses.putIfAbsent(_status, () => _self);
  }

  int getCode() => _code;

  String getStatus() => _status;

  String getReason() => _reason;

  Series getSeries() => _series;

  static HttpStatus getHttpStatus(String status) => _statuses[status] ?? ok;

  static HttpStatus getHttpStatusByCode(int code) {
    for (HttpStatus httpStatus in _statuses.values) {
      if (httpStatus._code == code) return httpStatus;
    }
    return HttpStatus.ok;
  }
}
