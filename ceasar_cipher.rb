require 'pry-byebug'

puts "Write your message and I'll cipher it for ya"

message = gets.chop

puts "Now tell me the shift factor"

factor = gets.chop.to_i

message_array = message.split("")

intergered_message = message_array.map {|letter| letter.ord }

shifted_message = intergered_message.map do |num| 
    unless num.between?(32,63)
        if num.between?(97,122) && num + factor > 122 || num.between?(65,90) && num + factor > 90
        num + factor - 26
        else
            num + factor
        end 
    else
        num
    end
end

coded_message = shifted_message.map {|interger| interger.chr}

puts coded_message.join("")