package stmarks

class StudentController {

    def index() {
        params.max = 2
        def studentList = Student.list(params);
        [stdlist: studentList, totalCount:Student.count()]
    }

    def edit(){
        def student = Student.get(params.id);
        [studentInfo: student]
    }

    def update(){
        def student = Student.get(params.id);
        student.stdName = params.stdName
        student.address = params.address
        student.email = params.email
        student.phone = Integer.parseInt(params.phone)
        student.rollNum = Integer.parseInt(params.rollNum)
        student.batch = params.batch
        student.imageName = params.imageName

        if(student.save())
        {
            flash.message = "Student updated successfully."
            redirect(action: "index")
        }else
        {
            render (view: "edit", model: [studentInfo: student])
        }
    }
    def delete(){
        def student = Student.get(params.id);
        if(student){
            student.delete();
            flash.message = "Student deleted successfully"
            redirect(action: "index")
        }else
        {
            flash.message = "Student does not exist."
            redirect(action: "index")
        }
    }

    def create() {

    }

    def save() {
        def student = new Student(params);
        if (student.save()) {
            redirect(action: "index")
        } else {
            redirect(action: "create")
        }
    }
}
