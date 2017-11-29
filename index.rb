def ordinal_indicator(number)

  if number.digits.last == 1 && number.digits[1] == 1 || number.digits.last == 1 && number.digits.first == 2 || number.digits.last == 1 && number.digits.first == 3
    number.to_s + 'th'
  elsif number.digits.first == 1
    number.to_s + 'st'
  elsif number.digits.first == 2
    number.to_s + 'nd'
  elsif number.digits.first == 3
    number.to_s + 'rd'
  else
    number.to_s + 'th'
  end

end

numbers = (1..70)

numbers.each do |x|
  p ordinal_indicator(x)
end
