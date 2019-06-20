function fn() {
  var Mock = Java.type('com.intuit.karate.netty.FeatureServer');
  var file = new java.io.File('cats-mock.feature');
  var server = Mock.start(file, 0, false, null);
  return server.port;
}
