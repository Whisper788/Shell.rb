
=begin

    shell.rb - A shell for interpreting ruby code in the terminal.

    if for some reason you want to use this code it is under CC-0

=end

require "io/console"

screen = IO.console.winsize

screen[0].times do
    puts "\n"
end

pre_eval = ""

while true do

    print ("\n(" + pre_eval.to_s + ")$ ")
    code = gets.to_s
    print "\n"
    begin
        pre_eval = eval(code)
    rescue => exception
        warn exception.message
        pre_eval = ""
    end

end
