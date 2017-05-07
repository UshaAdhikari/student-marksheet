package stmarks

class Student {
    String stdName;
    String address;
    String email;
    String phone;
    String rollNum;
    String batch;
    String image;

    static constraints = {
        stdName(blank: false,nullable: false)
        address(blank: false,nullable: false)
        email(blank: false,nullable: false)
        phone(blank: false,nullable: false)
        rollNum(blank: false,nullable: false)
        batch(blank: false,nullable: false)
        image(blank: false,nullable: false)
    }
}
