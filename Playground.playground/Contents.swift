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

averageScore = averageScore / 6

if averageScore >= 17 {
  print("your students are average is excellent")
} else if averageScore >= 14 && averageScore < 17 {
  print("your students are average is good")
} else {
  print("most of your student needs more exercise")
}

// i will use switch case for having a welcome and selection page 