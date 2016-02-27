puts "Into program."

at_exit do
  puts "I'm executed at the end. start..."
  at_exit { puts "I'm executed at last." }
  puts "I'm executed at the end. end..."
end

at_exit { puts "I'm executed after the 'Exit program'." }

puts "Exit program."
