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

p "Sorted array: #{bubble_sort([5,5,6,2,1])}"