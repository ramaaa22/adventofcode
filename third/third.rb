values = Hash.new
elem = "a"

(1..26).each { |iterator| 
    values[elem]=iterator
    elem = elem.next
}

elem = "A"

(27..52).each { |iterator| 
    values[elem]=iterator
    elem = elem.next
}


sum = 0 
File.foreach("input.txt").with_index do |line, line_no|
    first, second = line.chars.each_slice(line.length / 2).map(&:join)
    first_array = first.split('')
    first_array.each do |elem|
        if second.include?(elem)
            sum+= values[elem]
            break
        end
    end
end

puts sum
