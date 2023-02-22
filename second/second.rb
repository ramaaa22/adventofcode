points = {
    "X" => 1,
    "Y" => 2,
    "Z" => 3
}

results = {
    "A" => {
        "X" => 3,
        "Y" => 6,
        "Z" => 0
    },
    "B" => {
        "X" => 0,
        "Y" => 3,
        "Z" => 6
    },
    "C" => {
        "X" => 6,
        "Y" => 0,
        "Z" => 3
    }
}

need_result = {
    "X"=> 0 ,
    "Y" => 3 ,
    "Z"=> 6,
}

sum_points = 0

File.foreach("input.txt").with_index do |line, line_no|
    me= line[2]
    sum_points += points[me]
    oponent = line[0]
    sum_points += results[oponent][me]
end

 puts "the result is #{sum_points}"

sum_points = 0

 File.foreach("input.txt").with_index do |line, line_no|
    oponent = line[0]
    need = need_result[line[2]]
    value = results[oponent].key(need)
    sum_points += points[value]
    sum_points += need
end

puts "the total is #{sum_points}"