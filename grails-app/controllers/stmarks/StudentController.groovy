package stmarks

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

class StudentController extends BaseController{

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
        student.phone = Double.parseDouble(params.phone)
        student.rollNum = Double.parseDouble(params.rollNum)
        student.batch = params.batch
        student.image = params.imageName

        if(student.save())
        {
            flash.message = "Student updated successfully."
            redirect(action: "index")
        }else {
            flash.message = "Update failed..Please try again..!!"
            render (view: "edit", model: [studentInfo: student])
        }
    }
    def search(){
        if (params.keyword){
            params.max = 2
            def studentList = Student.findAllByStdNameIlikeAndRollNum(params.keyword+"%", params.keyword+"%", params);
            def studentCount = Student.findAllByStdNameIlikeAndRollNum(params.keyword+"%", params.keyword+"%", params);
            render (view: "index", model: [stdlist: studentList, totalCount: studentCount, params: params])
        }else {
            redirect(action: "index")
        }
    }

    def delete(){
        def student = Student.get(params.id);

        if(student) {
            Marksheet.executeUpdate("delete Marksheet m where m.std.id = ?", [student.id])

            student.delete();
            flash.message = "Student deleted Successfully";
            redirect(action:'index');
        } else {
            flash.message = "Student doesn't exists";
            redirect(action:'index');
        }
    }

    def create() {

    }

    def save() {
        uploadImage(params)
        def student = new Student(params);

        if(student.save()) {
            redirect(action: 'index');
        } else {
            render(view: "create", model: [studentInstance: student])
            return
        }
    }

    def uploadImage(params)
    {
        String path = grailsApplication.mainContext.servletContext.getRealPath("");
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request; //error
        CommonsMultipartFile file = (CommonsMultipartFile) mpr.getFile("studentImage");

        if(file)
        {
            file.transferTo(new File(path+"/images/student/${file.getOriginalFilename()}"))
            params.image = file.getOriginalFilename();
            params.remove("studentImage");
        }
    }
}
