package stmarks

class Student {
    String stdName;
    String address;
    String email;
    double phone;
    double rollNum;
    String batch;
    String imageName;

    static constraints = {
        stdName(blank: false,nullable: false,minSize: 3)
    }
}
