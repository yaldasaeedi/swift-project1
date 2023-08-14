//using dictionary
let studentInfo1: [String: Any] = ["name": "yalda", "age": 20, "totalScore": 18.56, "studentID" : 1] 
let studentInfo2: [String: Any] = ["name": "sara", "age": 23, "totalScore": 17.02, "studentID" : 2]
let studentInfo3: [String: Any] = ["name": "sina", "age": 21, "totalScore": 16.66, "studentID" : 3]
let studentInfo4: [String: Any] = ["name": "nima", "age": 22, "totalScore": 17.34, "studentID" : 4]
let studentInfo5: [String: Any] = ["name": "bahar", "age": 24, "totalScore": 14.32, "studentID" : 5]
let studentInfo6: [String: Any] = ["name": "zeynab", "age": 25, "totalScore": 15.78, "studentID" : 6]
//using arrey
var allStudent = [studentInfo1, studentInfo2, studentInfo3, studentInfo4, studentInfo5, studentInfo6]
var scores: [Double] = []
let num = 1...6
var student: [String: Any] = [:]
//using set
var studentsID = Set<Int>() 
for i in num {
    student = allStudent[i - 1]
    if let totalScore = student["totalScore"] as? Double {
        scores.append(totalScore)
    } else {
        print("Total Score is not available.")
    }
    if let ID = student["studentID"] as? Int {
        studentsID.insert(ID)
    } else {
        print("Total Score is not available.")
    }
}
print(studentsID)
print(scores)