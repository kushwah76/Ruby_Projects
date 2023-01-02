$array=[]

# Add Students Module................
module Add_Students
    def add_students=students_info
        arr=[]
        @studentId,@studentName,@studentClass,@studentEmail,@studenttAddress=students_info
        finds=false
           (0...$array.size).each { |arr|
             finds =$array[arr].include?@studentId
             if finds
                 break
             end
           }
        if finds
         puts "Sorry Students Id already Exits...Please try again"   
         else
        arr.push(@studentId,@studentName,@studentClass,@studentEmail,@studenttAddress)
        $array.push(arr)
        puts "Students Add Successfull...!!!"
        end
        Students.Choose_opresion
    end
end

# Show Students Module....................
module Show_students
    def show_students
        puts "....Show All Students...."
        puts " "
        if $array.empty?()
            puts "Soory Not Found Record..!!"
        else
        puts "StudentsId\tStudentsName\tStudentsClass\tStudentsEmail\tStudentsAddress"
        $array.each{|arr|
            puts "  "
            print " #{arr[0]}\t\t#{arr[1]}\t\t#{arr[2]}\t\t#{arr[3]}\t\t#{arr[4]}"
        }
    end
       Students.Choose_opresion
    end
end
 
# delete_StudentsInformation module......................
module Delete_StudentsInformation
    def delete_StudentsInformation
        finds=false
        print "Enter Students Id :-"
        deleteId=gets.chomp.to_i
        if $array.empty?()
            puts "Soory Not Found Record..!!"
        else   
        (0...$array.size).each { |arr|
             finds =$array[arr].include?deleteId
             if finds
             $array.delete($array[arr])
            break
           end
        }
       end
        if finds==true
          puts "Delete Successfull StudentsInformation..."
        else
          puts "Sorry wrong StudentId ..please try again..!!"
        end
        Students.Choose_opresion
  end
end
# Search_Student  module,...........
module Search_Student
    def search_Student
        arr1=[]
        finds=false
        if $array.empty?()
            puts "Sorry Not Found Record !! Empty..!!"
        else
            print "Enter StudentId:-"
        studentId=gets.chomp.to_i
        puts "....Show StudentsInformation...."
        puts " "
        puts "StudentsId\tStudentsName\tStudentsClass\tStudentsEmail\tStudentsAddress"
        (0...$array.size).each { |arr|
            finds =$array[arr].include?studentId
            if finds
                arr1.push($array[arr])
                arr1.each{|arr2|
                print " #{arr2[0]}\t\t#{arr2[1]}\t\t#{arr2[2]}\t\t#{arr2[3]}\t\t#{arr2[4]}"
                }
               break
             end
        }
        if !finds
            puts "Sorry Not Found Record,,Wrong Id please try again..!!"
        end
        
    end
       Students.Choose_opresion
    end
end

# Update_StudentsInformations..module.......
module Update_StudentsInformations
    def update_StudentsInformations
        arr1=[]
        finds=false
        if $array.empty?()
            puts "Soory Not Found Record..Empty...!!"
        else
            print "Enter StudentId:-"
            studentId=gets.chomp.to_i
            (0...$array.size).each { |arr|
                finds =$array[arr].include?studentId
                if finds
                arr1.concat ($array[arr])
                puts " "
                puts "press 1 Update StudentName "
                puts "press 2 Update StudentClass "
                puts "press 3 Update StudentEmail "
                puts "press 4 Update StudentAddress "
                puts "Choose the  operation you want  to perform "
                choose=gets.chomp 
                case choose
                
                when "1"
                    puts "Enter StudentName "
                     studentName=gets.chomp
                       arr1[1]=studentName
                       $array[arr].replace(arr1)
                       puts "Student Information UpdateSuccessfull...!!!"

                     Students.Choose_opresion

                when "2"
                    puts "Enter StudentsClass"
                    studentClass=gets.chomp
                       arr1[2]=studentClass
                       $array[arr].replace(arr1)
                       puts "Student Information UpdateSuccessfull...!!!"
                    Students.Choose_opresion

                when "3"
                    puts "Enter StudentsEmail"
                    studentEmail=gets.chomp
                    arr1[3]=studentEmail
                    $array[arr].replace(arr1)
                    puts "Student Information UpdateSuccessfull...!!!"
                    Students.Choose_opresion

                when "4"
                    puts "Enter StudentsAddress"
                    studentAddress=gets.chomp
                    arr1[4]=studentAddress
                    $array[arr].replace(arr1)
                    puts "Student Information UpdateSuccessfull...!!!"

                    Students.Choose_opresion

                    else
                        puts "Wrong inputs please try again"
                        Students.update_StudentsInformations
                end     
            end
            }
            if !finds
            puts "Sorry Not Found Record,,Wrong Id please try again..!!"
            Students.update_StudentsInformations

            end

        end

     
    end
end

class Students
    extend Add_Students
    extend Show_students
    extend Delete_StudentsInformation
    extend Search_Student
    extend Update_StudentsInformations
    def self.Choose_opresion    
        puts " "

    puts "........Students_Managements_System....."
    puts "press 1 Add Students "
    puts "press 2 show Students "
    puts "press 3 Delete_StudentsInformation"
    puts "press 4 Search_Student"
    puts "press 5 Update_StudentsInformations.."
    puts "press 6 Exit"
    puts "Choose the  operation you want  to perform "
    choose=gets.chomp 
    case choose
    when "1"
        puts " "
        puts "Enter students id "
        studentsId=gets.chomp.to_i
        puts "Enter students name"
        studentName=gets.chomp 
        puts "Enter students class "
        studentClass=gets.chomp
        puts "Enter students Email"
        studentEmail=gets.chomp
        puts "Enter students Address"
        studentAddress=gets.chomp
        Students.add_students=studentsId,studentName,studentClass,studentEmail,studentAddress
    when "2"
        Students.show_students 
    when "3"
        Students.delete_StudentsInformation
    when "4"
        Students.search_Student
    when "5"
        Students.update_StudentsInformations
    when "6"
        exit
    else
        puts "Wrong inputs please try again"
        Students.Choose_opresion

    end
   end
    end
    Students.Choose_opresion
    