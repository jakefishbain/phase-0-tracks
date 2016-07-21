classroom = {
			reading_nook: ["books", "beanbags", "paper"], 
			group_station: ["carpet", "smartboard", "doc_viewer"], 
			student_space: [[desks: ["scissors", "notebook"]], "chairs", "pencils"]
			}

puts "list all components of group stations"
puts classroom[:group_station]
puts "---"

puts "change chairs in students space to seats and print"
classroom[:student_space][1] = "seats"
puts classroom[:student_space]
puts "---"

puts "add teacher_space array with components"
classroom[:teacher_space] = ["large_desk", "computer", "stickers"]
puts classroom
puts "---"

puts "delete beanbags from nook"
classroom[:reading_nook].delete_at(1)
puts classroom[:reading_nook]
puts "---"

puts "type we have a... for all items in reading_nook"
classroom[:reading_nook].each { |item| puts "We have #{item}."}
puts "---"