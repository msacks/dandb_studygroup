require 'find'
require 'pp'
require 'terminator'

def set_runtime_variables
  env = select_environment
  browser = select_browser
  print_file_names(env,browser)
end

def select_environment
  print "Which Environment would you like to run (qa, stg, prod):"
  return gets.chomp
end

def select_browser
  print "Which Browser would you like to run (firefox, chrome):"
  return gets.chomp
end

def print_file_names(env,browser)
  print "Please select which tests you would like to run: "
  number_value = Hash.new{|k,v| k[v]=[]}
  i = 1
  Find.find("features/") do |item|
    next if item == '.' or item == '..' or item.include? "pages/" or item.include? "/bootstrap" or item.include? "/extensions" or item.include? "MyHackWeekProject"

    item = item.gsub("features/dandb/","")
    number_value[:"#{i}"] << item
    i = i+1
  end

  pp number_value

  number =  gets.chomp
  number_array = number.split(",")

  #  puts number_array[0]
  #  puts number_array[1]
  #  puts number_array.size

  for j in 0...number_array.size
    test = number_value[:"#{number_array[j]}"]
    execute_the_test(env,browser,test)
  end
end

def execute_the_test(env,browser,test)
  Kernel.exec("bin/behat --profile #{env}_#{browser} features/dandb/#{test.join()}")
end

set_runtime_variables


##scratch work:
