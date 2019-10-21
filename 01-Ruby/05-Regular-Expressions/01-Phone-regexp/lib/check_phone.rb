def french_phone_number?(phone_number)
  # TODO: true or false?
  phone_number.match?(/^(0|\+?33\W?)[1-9]\W?\d{2}\W?\d{2}\W?\d{2}\W?\d{2}/)
end
