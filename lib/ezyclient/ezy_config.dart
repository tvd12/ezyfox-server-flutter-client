import 'dart:core';

class EzyConfig {
  late String zoneName;
  late String clientName;
  late bool enableSSL = false;
  late bool enableDebug = false;
  late EzyReconnectConfig reconnect = EzyReconnectConfig();

  String getClientName() {
    if(clientName == null)
      return zoneName;
    return clientName;
  }

  Map toMap() {
    Map map = Map();
    map["clientName"] = getClientName();
    map["zoneName"] = zoneName;
    map["enableSSL"] = enableSSL;
    map["enableDebug"] = enableDebug;
    map["reconnect"] = reconnect.toMap();
    return map;
  }
}

class EzyReconnectConfig {
  late bool enable = true;
  late int maxReconnectCount = 5;
  late int reconnectPeriod = 3000;

  Map toMap() {
    Map map = Map();
    map["enable"] = enable;
    map["maxReconnectCount"] = maxReconnectCount;
    map["reconnectPeriod"] = reconnectPeriod;
    return map;
  }
}