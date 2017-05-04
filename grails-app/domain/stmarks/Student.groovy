package stmarks

class Student {
    String stdName;
    String address;
    String email;
    double phone;
    double rollNum;
    String batch;
    String image;

    static constraints = {
        stdName(blank: false,nullable: false,minSize: 3)
    }
}
