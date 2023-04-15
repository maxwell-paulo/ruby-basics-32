def array_to_hash(array)
  # TODO: implement the method :)
  hash = {}

  array.each_with_index do |current, index|
    if block_given?
      hash[yield(index)] = current
    else
      hash[index.to_s] = current
    end
  end

  hash
end
