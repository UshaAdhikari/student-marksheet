package stmarks

class HomeController {

    def index() { }

    def result(){
        render (view:"/home/result")
    }

    def show(){
        Student std = Student.findAllByBatchAndRollNumIlike(params.batch, params.rollNum);

        def studentName = studentInfo.stdName;
        def studentRoll = studentInfo.rollNum;

        def result = Marksheet.findAllByStdIlike(studentInfo);
        def totalObt = result.obtainedMarks.sum();
        def passMarks = result.sub.passMarks.sum();
        def total = result.sub.totalMarks.sum();
        def percent = (totalObt/total)*100;
        def imageList = studentInfo.image;
        render(view: "show",model: [result:result,stdName: studentName,rollNum:studentRoll,totalObt:totalObt,percent:percent,total:total,passmark:passMarks,image:imageList]);
    }

}
