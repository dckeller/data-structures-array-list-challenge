class ArrayList

	def initialize(size)
		@size = size
		@array = Array.new(@size)
	end 

## Add element to end of array
	def add(element)
		@array.push(element)
		element
	end

## Get element from array, unless nil
	def get(index)
		if @array[index] == nil
			"OutOfBoundsException"
		else
			@array[index]
		end
	end

## Replace an element in an array unless nil, or index > array length
	def set(index, element)
		if @array[index] == nil || index > ((@array.length) -1)
			"OutOfBoundsException"
		else
			@array.delete_at(index)
			@array.insert(index, element)
			@array
		end 
	end

## Get the number of elements in array
	def length
		@array.length
	end  

end

new_array = ArrayList.new(5)
p new_array
p new_array.add("Six")
p new_array
p new_array.get(4)
p new_array.get(5)
p new_array.set(2, "Three")
p new_array.set(5, "Replaced Six")
p new_array.set(6, "Seven")
p new_array.length