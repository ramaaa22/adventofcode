array = []
count = 0
File.foreach("input.txt").with_index do |line, line_no|
    array[line_no]=line.split(",")
end

array.each do |elem|
    puts "-------"
    puts elem
    first_range = elem[0].split("-")
    first_range = Range.new(first_range[0].to_i, first_range[1].to_i)
    second_range = elem[1].split("-")
    second_range = Range.new(second_range[0].to_i, second_range[1].to_i)

    if ((first_range.cover?(second_range)) || (second_range.cover?(first_range)))
        count += 1
    end
end


puts count

#part two
count = 0 

def overlap?(r1,r2)
    !(r1.first > r2.last || r1.last < r2.first)
end

array.each do |elem|
    first_range = elem[0].split("-")
    first_range = Range.new(first_range[0].to_i, first_range[1].to_i)
    second_range = elem[1].split("-")
    second_range = Range.new(second_range[0].to_i, second_range[1].to_i)

    if ((overlap?(first_range,second_range)) || (overlap?(second_range,first_range)))
        count += 1
    end
end

puts count 