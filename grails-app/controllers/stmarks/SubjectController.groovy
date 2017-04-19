package stmarks

class SubjectController {

    def index() {
        def subjectList = Subject.list();
        [sublist: subjectList]
    }

    def edit(){
        def subject = Subject.get(params.id);
        [subjectInfo: subject]
    }

    def update(){
        def subject = Subject.get(params.id);
        subject.subName = params.subName
        subject.totalMarks = params.totalMarks

        if(subject.save())
        {
            flash.message = "Subject updated successfully."
            redirect(action: "index")
        }else
        {
            render (view: "edit", model: [subjectInfo: subject])
        }
    }

    def delete(){
        def subject = Subject.get(params.id);
        if(subject){
            subject.delete();
            flash.message = "Subject deleted successfully"
            redirect(action: "index")
        }else
        {
            flash.message = "Subject does not exist."
            redirect(action: "index")
        }
    }

    def create() {

    }

    def save() {
        def subject = new Subject(params);
        if (subject.save()) {
            redirect(action: "index")
        } else {
            redirect(action: "create")
        }
    }
}