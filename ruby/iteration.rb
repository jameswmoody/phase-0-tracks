def interation_method
  puts "Hello World!"
  yield("Water")
  puts "Goodbye World"
end

interation_method { |x| puts "Tada! #{x}" }
