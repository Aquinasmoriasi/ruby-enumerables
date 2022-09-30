require './my_enumerable.rb'
class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args;
  end
  
  def each
    @list.each { |items| yield items if block_given? }
  end

end
list = MyList.new(1, 2, 3, 4, 5)

list.all? {|e| e < 5}
list.all? {|e| e > 5}
list.any? {|e| e == 2}
list.any? {|e| e == 5}
list.filter {|e| e.even?}