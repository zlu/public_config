Pry.color = true
Pry.print = Proc.new {|output, value| output.puts "=> #{value.inspect}"}