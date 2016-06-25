require 'bundler/setup'
require 'fluent-logger'

Fluent::Logger::FluentLogger.open(
  nil, 
  host: ENV['FLUENTD_PORT_24224_TCP_ADDR'],
  port: ENV['FLUENTD_PORT_24224_TCP_PORT']
)

Fluent::Logger.post("docker.info", { "agent" => "foo" })
