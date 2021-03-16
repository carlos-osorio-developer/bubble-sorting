def bubble_sort(nonsorted)
    i=0
    while  i<nonsorted.length-1 do
        j=0
        while j<nonsorted.length-1 do
            if nonsorted[j].to_i>nonsorted[j+1].to_i
                a=nonsorted[j]
                nonsorted[j]=nonsorted[j+1]
                nonsorted[j+1]=a
            end
            j+=1
            print "#{i} & #{j}"
        end
        i+=1
    end
    return nonsorted
end

def bubble_sort_by(array)
    sorted=false
    puts "Please enter a non empty array" if array.empty?
    until sorted
        0.upto(array.length - 2) do |i| 
            change=0
            checker=yield(array[i],array[i+1])
            if checker>0
                array[i], array[i+1]=array[i+1], array[i]
                change+=1                      
            end
            if change==0
                sorted=true
            end
        end
    end
end

p "Sorted_by array: #{bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end}"


p "Sorted array: #{bubble_sort([5,5,6,2,1])}"

