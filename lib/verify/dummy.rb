# encoding: utf-8
# Copyright 2014 Dominik Richter. All rights reserved.
# Spec file for Vulcano specs

# Get types
module DummyTestTypes
  # a few commands with special handling
  def describe *args; end
  def context *args; end

  def os
    {}
  end

  def command sth
    res = OpenStruct.new
    res.stdout = ""
    res.stderr = ""
    res
  end
end

module DummyVulcanoTypes
  %w(
    attributes registry_key
  ).each do |name|
    define_method name do |*arg|
    end
  end

  def processes *args; [] end
  def start_postgres_session *args; Describer.new end
  def start_mysql_session *args; Describer.new end

  class Describer
    def describe *args
    end
  end
end

class SshConf
  def initialize *args; end
end
class PostgresConf
  def initialize *args; end
  def params *a, &b; {} end
end
class MysqlConf
  def initialize *args; end
  def params *a, &b; {} end
end
