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


# PART TWO

lines = File.readlines("input.txt")

array = []
siguiente = 0
(0..99).each { |iterator|
    array[iterator]= lines[siguiente]
    siguiente+=1
    array[iterator]+= lines[siguiente]
    siguiente+=1
    array[iterator]+= lines[siguiente]
    siguiente+=1
}


sum = 0

array.length.times do |iterator|
    group = array[iterator]
    group1 = group.split()[0]
    group2 = group.split()[1]
    group3 = group.split()[2]
    group1 = group1.chars
    group1.each do |elem|
        if group2.include?(elem) && group3.include?(elem)
            sum+=values[elem]
            break
        end
    end
end

puts sum

