//using enum
enum major {
  case computer_engineering
  case electrical_engineering
  case biomedical_engineering
  case mechanical_engineering
  case french_literature
  case psychology
  case architecture
  case painting
}
//using dictionary
let studentInfo1: [String: Any] = [
  "name": "yalda", "age": 20, "totalScore": 18.56, "studentID": 1,
  "major": major.computer_engineering,
]
let studentInfo2: [String: Any] = [
  "name": "sara", "age": 23, "totalScore": 17.02, "studentID": 2,
  "major": major.biomedical_engineering,
]
let studentInfo3: [String: Any] = [
  "name": "sina", "age": 21, "totalScore": 16.66, "studentID": 3,
  "major": major.electrical_engineering,
]
let studentInfo4: [String: Any] = [
  "name": "nima", "age": 22, "totalScore": 17.34, "studentID": 4, "major": major.painting,
]
let studentInfo5: [String: Any] = [
  "name": "bahar", "age": 24, "totalScore": 14.32, "studentID": 5, "major": major.psychology,
]
let studentInfo6: [String: Any] = [
  "name": "zeynab", "age": 25, "totalScore": 15.78, "studentID": 6,
  "major": major.french_literature,
]
//using arrey
var allStudent = [
  studentInfo1, studentInfo2, studentInfo3, studentInfo4, studentInfo5, studentInfo6,
]
var scores: [Double] = []
var averageScore: Double = 0
let num = 1...6
var student: [String: Any] = [:]
//using set
var studentsID = Set<Int>()

var hi = { ()->Int in 

  print("hi, welcome to my school manager!\nPlease enter the option you want:\n1: updating\n2: average of scores\n3: list of student\n4: adding a new student\n5: deleting a student\n 6: sort by score\n 7:sort by name\n")
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
func goToOption (action1: () -> Void, action2: () -> Void){
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
    case 7:
      break
    default: 
      theOption = hi()
  }
}
var update : (() -> Void) = {}
var showAverage : (() -> Void) = {}
showAverage = {
  averageScore = averageScore / 6
  if averageScore >= 17 {
    print("your students are average is excellent")
  } else if averageScore >= 14 && averageScore < 17 {
    print("your students are average is good")
  } else {
    print("most of your student needs more exercise")
  }
  goToOption(action1: update, action2:showAverage)
}
update = { 
  for i in num {
    student = allStudent[i - 1]
    if let totalScore = student["totalScore"] as? Double {
      scores.append(totalScore)
      averageScore += totalScore
   } else {
    print("Total Score is not available.")
   }
    if let ID = student["studentID"] as? Int {
     studentsID.insert(ID)
    } else {
     print("Total Score is not available.")
    }
  }
  goToOption(action1: update, action2:showAverage)
}
