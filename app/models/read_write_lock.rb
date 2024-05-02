require 'monitor'

class ReadWriteLock
  def initialize
    @lock = Monitor.new
    @readers = 0
    @writers = 0
    @writer_waiting = false
  end

  def acquire_read_lock
    @lock.synchronize do
      while @writers > 0 || @writer_waiting
        @lock.wait
      end
      @readers += 1
    end
  end

  def release_read_lock
    @lock.synchronize do
      @readers -= 1
      @lock.broadcast if @readers == 0
    end
  end

  def acquire_write_lock
    @lock.synchronize do
      @writer_waiting = true
      while @readers > 0 || @writers > 0
        @lock.wait
      end
      @writers += 1
    end
  end

  def release_write_lock
    @lock.synchronize do
      @writers -= 1
      @writer_waiting = false
      @lock.broadcast
    end
  end
end
