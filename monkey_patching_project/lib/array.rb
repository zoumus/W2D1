# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    
    def span
        return nil if self.empty?
        self.max - self.min
    end

    def average
        return nil if self.empty?
        self.sum / (self.length * 1.0)
    end

    def median
        arr = self.sort
        middle = arr.length/2
        return nil if self.empty?
        if self.length.odd?
            return arr[middle]
        else
            return (arr[middle] + arr[middle - 1])/2.0
        end
    end

    def counts
        h = Hash.new(0)
        self.each { |el| h[el] += 1 }
        h
    end

    def my_count(value)
        count = 0
        self.each { |el| count += 1 if el == value }
        count
    end

    
    def my_index(value)
        self.each_with_index do |el, i|
            return i if el == value
        end
        nil
    end

    def my_uniq
        arr = []
        self.each do |el|
            arr << el if !arr.include?(el)
        end
        arr
    end

    def my_transpose
        arr = (0...self.length).map do |i|
            self.map {|sub| sub[i] }
        end
        arr
    end
end
