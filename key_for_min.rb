# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # smallest_key = nil
  # smallest_value = 100000
  #
  # name_hash.each do |key, value|
  #   if smallest_value > value
  #     smallest_value = value
  #     smallest_key = key
  #   end
  # end
  #
  # return smallest_key

  if name_hash == {}
    return nil
  end

  array = []

	name_hash.each do |key, value|
		array << [key, value]
	end

	smallest_key = array[0][0]
	smallest_value = array[0][1]

	i = 0
	while i < array.length
		pair = array[i]

		if smallest_value > pair[1]
			smallest_value = pair[1]
			smallest_key = pair[0]
		end

		i += 1
	end

	# puts smallest_value
	return smallest_key
end
