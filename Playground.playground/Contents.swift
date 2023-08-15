//using enum
enum allMajor {
  case computer_engineering
  case electrical_engineering
  case biomedical_engineering
  case mechanical_engineering
  case french_literature
  case psychology
  case architecture
  case painting
}
struct student {
  var name : String
  var age : Int
  var totalScore : Double
  let studentID : Int
  let major : allMajor

}
let studentInfo1 = student(name: "yalda", age: 20, totalScore: 17.20,  studentID: 1, major: allMajor.computer_engineering)
let studentInfo2 = student(name: "sara", age: 23, totalScore:  17.02,  studentID: 2, major: allMajor.biomedical_engineering)
let studentInfo3 = student(name: "sina", age: 21, totalScore: 16.56,  studentID: 3, major: allMajor.electrical_engineering)
let studentInfo4 = student(name: "nima", age: 22, totalScore: 15.56,  studentID: 4, major: allMajor.painting)
let studentInfo5 = student(name: "bahar", age: 24, totalScore: 14.56,  studentID: 5, major: allMajor.psychology)
let studentInfo6 = student(name: "zeynab", age: 25, totalScore: 18.56,  studentID: 6, major: allMajor.french_literature)
let studentInfo7 = student(name: "amin", age: 18, totalScore: 16.6,  studentID: 7, major: allMajor.mechanical_engineering)

//using arrey
var allStudent = [
  studentInfo1, studentInfo2, studentInfo3, studentInfo4, studentInfo5, studentInfo6,
]
var scores: [Double] = []
var averageScore: Double = 0
let num = 1...6
//using set
var studentsID = Set<Int>()

var hi = { ()->Int in 

  print("hi, welcome to my school manager!\nPlease enter the option you want:\n1: updating\n2: average of scores\n3: list of student\n4: adding a new student\n5: deleting a student\n 6:sort by name\n")
  if let input =  readLine(){

    if let number = Int(input) {

        print("You entered: \(number)")

        return number
    } else {

        print("Invalid input. Please enter a valid number.")

        return 0
    }
  } else {
    print("No input provided.")
    return 0
  }
}
func goToOption (action1: () -> Void, action2: () -> Void, action3: () -> Void, action4: () -> Void){
  var theOption : Int
  theOption = hi()
  switch theOption{
    case 1:
      action1()
    case 2:
      action2()
    case 3:
      break
    case 4:
      break
    case 5:
      break
    case 6:
      break
    default: 
      theOption = hi()
  }
}
var update : (() -> Void) = {}
var showAverage : (() -> Void) = {}
var showStudentList : (() -> Void) = {}
var sortByName : (() -> Void) = {}

showAverage = {

  averageScore = averageScore / 6
  if averageScore >= 17 {

    print("your students are average is excellent")
  } else if averageScore >= 14 && averageScore < 17 {

    print("your students are average is good")
  } else {

    print("most of your student needs more exercise")
  }
  goToOption(action1: update, action2:showAverage, action3: showStudentList, action4:sortByName)
}
update = { 

  var tempStudent : student
  for i in num {
    
      tempStudent = allStudent[i - 1]
      scores.append(tempStudent.totalScore)
      averageScore += tempStudent.totalScore
      studentsID.insert(tempStudent.studentID)
  }
  goToOption(action1: update, action2:showAverage, action3: showStudentList, action4:sortByName)
}
showStudentList = {

  for student in allStudent {

    print("Name: \(student.name)")
    print("Age: \(student.age)")
    print("Total Score: \(student.totalScore)")
    print("Student ID: \(student.studentID)")
    print("Major: \(student.major)")
    print("-----------------------------")
  }
  goToOption(action1: update, action2:showAverage, action3: showStudentList, action4:sortByName)
}
sortByName = {

  var allName = [studentInfo1.name, studentInfo2.name, studentInfo3.name, studentInfo4.name,  studentInfo5.name,  studentInfo6.name,  studentInfo7.name ]
  allName.sort()
  print ("allName")
  goToOption(action1: update, action2:showAverage, action3: showStudentList, action4:sortByName)
}
let deletingStudent = {}
let addingStudent = {}