module Enumerable
  def all?(&block)
    res = true
    each { |item| res = false unless block.call(item) }
    res
  end

  def any?(&block)
    res = false
    each { |item| res = true if block.call(item) }
    res
  end

  def filter(&block)
    res = []
    each { |item| res << item if block.call(item) }
    res
  end
end
