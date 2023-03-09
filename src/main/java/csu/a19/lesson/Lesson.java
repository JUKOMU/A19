package csu.a19.lesson;

public class Lesson {
    private Integer id;
    private String classname;
    private String teacher;

    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getClassname() { return classname; }

    public void setClassname(String classname) {this.classname = classname;}

    public String getTeacher() { return teacher; }

    public void setTeacher(String teacher) { this.teacher = teacher;}

    @Override
    public String toString(){
        return "Lesson{" +
                "id=" + id +
                ", classname='" + classname + '\'' +
                ", teacher='" + teacher + '\'' +
                '}';
    }

}
