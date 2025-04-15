require 'singleton'

class Logger
  include Singleton

  # 'a' - mean add to end of text
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log_something wat
    @f.puts wat
    @f.flush
  end
end