package csu.a19.lesson;

public class Lesson {
    private Integer id;
    private String classname;
    private String teacher;
    private String CRY; // "CRY" 是 "content" 的缩写
    private String[] pictures;
    private String[] date_and_time;

    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getClassname() { return classname; }

    public void setClassname(String classname) {this.classname = classname;}

    public String getTeacher() { return teacher; }

    public void setTeacher(String teacher) { this.teacher = teacher;}

    public String getCRY() { return CRY; }

    public void setCRY(String CRY) { this.CRY = CRY; }

    public String[] getPictures() { return pictures; }

    public void setPictures(String[] pictures) { this.pictures = pictures; }

    public String[] getDate_and_time() { return date_and_time; }

    public void setDate_and_time(String[] date_and_time) { this.date_and_time = date_and_time; }



    @Override
    public String toString(){
        return "Lesson{" +
                "id=" + id +
                ", classname='" + classname + '\'' +
                ", teacher='" + teacher + '\'' +
                ", CRY='" + CRY + '\'' +
                ", pictures='" + pictures + '\'' +
                ", date_and_time='" + date_and_time + '\'' +
                '}';
    }

}
