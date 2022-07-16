
answer = ''
date = ''
puts 'Enter a movie'
movie = gets.chomp
lines = []
file = File.open('C:\\Users\\NEAK\\Downloads\\netflix.txt', 'r')
file_data = file.readlines
file1 = File.open('C:\\Users\\NEAK\\Downloads\\testing1.txt', 'r')
file_data2 = file1.readlines

show = file_data2[0]
show.each_char {|x|
  puts x
  date += x
  if x == "\t"
    puts 'Y'
    answer = ''
  else
    answer += x.to_s
  end
}

file.close
answer = answer.strip
if movie == answer
  puts 'Yes, You Have Watched the Movie'
else
  puts 'No, You Have Not Watched the Movie'
end


puts date


ITERATION WHOLE FILE

answer = ''
date = ''
puts 'Enter a movie'
movie = gets.chomp
lines = []
file = File.open('C:\\Users\\NEAK\\Downloads\\netflix.txt', 'r')
file_data = file.readlines
file1 = File.open('C:\\Users\\NEAK\\Downloads\\testing1.txt', 'r')
file_data2 = file1.readlines

file_data2.each { |c|

  c.each_char {|x|
    puts x
    date += x
    if x == "\t"
      puts 'Y'
      answer = ''
    else
      answer += x.to_s
    end
  }

}


file.close
answer = answer.strip
if movie == answer
  puts 'Yes, You Have Watched the Movie'
else
  puts 'No, You Have Not Watched the Movie'
end


puts date
