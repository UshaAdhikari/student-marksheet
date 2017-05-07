package stmarks

class User {
    String username;
    String password;
    String userType;

    static constraints = {
        username(blank: false,nullable: false)
        password(blank: false,nullable: false)
        userType(blank: false, nullable: false)
    }
}
