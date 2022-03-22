import Foundation

public class Person {
    var hair: String
    var age: Double
    var size: Double
    var name: String
    var lastName: String

    var fullname: String {
        "\(name) \(lastName)"
    }
    
    init(hair: String, age: Double, size: Double, name: String, lastName: String) {
        self.hair = hair
        self.age = age
        self.size = size
        self.name = name
        self.lastName = lastName
    }
}

class Student: Person {
    var grade: Double
    var course: String
    
    
    init(grade: Double, course: String, hair: String, age: Double, size: Double, name: String, lastName: String) {
        self.grade = grade
        self.course = course
        
        super.init(hair: hair, age: age, size: size, name: name, lastName: lastName)
    }

    convenience init(grade: Double, course: String) {
        self.init(grade: grade, course: course, hair: "", age: 0, size: 0, name: "Carlos", lastName: "Carmo")
    }
    
    func getGrade() -> Double {
        return grade
    }
}


var student01 = Student(grade: 8.9, course: "iOS", hair: "longo", age: 28, size: 1.89, name: "Carlos", lastName: "Carmo")

var student02 = Student.init(grade: 10.0, course: "Swift")

student01.fullname
student02.fullname
student02.getGrade()
student01.getGrade()
