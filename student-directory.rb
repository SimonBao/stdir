def input_student
  print 'Student name: '
  name = gets.chomp
  students = []
  until name.empty? do
    cohort, hobby, country, height = student_details
    students << {name: name.capitalize.to_sym,
                 cohort: cohort.capitalize.to_sym,
                 hobby: hobby.capitalize.to_sym,
                 country: country.capitalize.to_sym,
                 height: height}
    print "Current Student Count: #{students.count}\n"
    print 'Student name:'
    name = gets.chomp
  end
  students
end


def student_details
  print 'Student cohort: '
  cohort = gets.chomp
  print 'Student hobby: '
  hobby = gets.chomp
  print 'Student country: '
  country = gets.chomp
  print 'Student height: '
  height = gets.chomp
  check_answer(cohort, hobby, country, height)
end

def check_answer(cohort, hobby, country, height)
  cohort = 'None' if cohort.empty?
  hobby = 'None' if hobby.empty?
  country = 'None' if country.empty?
  height = 'None' if height.empty?
  return cohort, hobby, country, height
end

def print_header
  puts 'Students of Villains Academy'.center(100)
  puts '--------------'.center(100)

end

def prints(students)
  students.each do |student|
    print student.map { |key, value| "#{key}: #{value}" }.join(', ').center(100)
    puts
  end
end

def print_footer(students)
  puts '--------------'.center(100)
  if students.count > 1
    puts "We have #{students.count} great students.".center(100)
  elsif students.count.zero?
    puts "Sadly we have #{students.count} students.".center(100)
  else
    puts "We have #{students.count} great student.".center(100)
  end
end

students = input_student
print_header
prints(students)
print_footer(students)
