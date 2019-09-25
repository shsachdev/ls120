class CircularQueue
  attr_accessor :arr

  def initialize(places)
    @arr = [nil] * places
  end

  def enqueue(num)
    if @arr.include?(nil)
      @arr[@arr.index(nil)] = num
    else
      @arr[0] = num
    end
  end

  def dequeue(num)
    @arr[0] = nil
  end
end
