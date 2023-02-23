
def differents(sub,count)
    array = []
    count = (sub.length) 
    count.times do |i|
        array<<sub[i] if !array.include?(sub[i])
    end
    array.length==count
end


file = File.read('input.txt')


continue= true
first = 0
last = 3
while continue
    first_part = file[first..last]
    if (differents(first_part,4))
        continue = false
    end
    first +=1
    last +=1
end
puts last


first = 0
last = 13

continue = true
while continue
    first_part = file[first..last]
    if (differents(first_part,14))
        continue = false
    end
    first +=1
    last +=1
end
puts last



