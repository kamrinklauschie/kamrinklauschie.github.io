def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  # The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  value = yield
  if attributes.nil?
    return "<#{tag_name}>#{value}</#{tag_name}>"
  elsif attributes.count == 2
    return "<#{tag_name} #{attributes[0]}=\"#{attributes[1]}\">#{value}</#{tag_name}>"
  end
end
