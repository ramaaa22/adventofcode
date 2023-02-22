all = Hash.new
sum=0
proximo=0 
File.foreach("input.txt").with_index do |line, line_no|
    current_line = line.to_i
    if current_line===0
        all[proximo] = sum
        sum = 0
        proximo = proximo + 1
    else
        sum = sum + current_line
    end
end

puts ("the max value is #{all.values.max}")
puts "-----"
all = all.values.sort.reverse
puts "the sum of the three max is #{all[0] + all[1] + all[2]}"



