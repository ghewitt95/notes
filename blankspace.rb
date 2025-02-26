
"The car costs $1000 and the cat costs $10".scan (/\d+/) do |x|
  puts x
end

"This is a test".scan (/[a-m]/) {|x| puts x} 