let studentInfo1: [String: Any] = ["name": "yalda", "age": 20, "totalScore": 18.56]
let studentInfo2: [String: Any] = ["name": "sara", "age": 23, "totalScore": 17.02]
let studentInfo3: [String: Any] = ["name": "sina", "age": 21, "totalScore": 16.66]
let studentInfo4: [String: Any] = ["name": "nima", "age": 22, "totalScore": 17.34]
let studentInfo5: [String: Any] = ["name": "bahar", "age": 24, "totalScore": 14.32]
let studentInfo6: [String: Any] = ["name": "zeynab", "age": 25, "totalScore": 15.78]

var allStudent = [studentInfo1, studentInfo2, studentInfo3, studentInfo4, studentInfo5, studentInfo6]
var scores: [Double] = []
let num = 1...6
var student: [String: Any] = [:]

for i in num {
    student = allStudent[i - 1]
    if let totalScore = student["totalScore"] as? Double {
        scores.append(totalScore)
    } else {
        print("Total Score is not available.")
    }
}

print(scores)
