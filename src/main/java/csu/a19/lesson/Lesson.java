package csu.a19.lesson;

public class Lesson {
    private Integer id;
    private String classname;
    private String teacher;
    private String CRY; // "CRY" 是 "content" 的缩写
    private String pictures;
    private String week;
    private String date;
    private String classes; // 第几节
    private String place;
    private Integer likes; // 点赞
    private String subject;
    public Integer getId() { return id; }

    public void setId(Integer id) { this.id = id; }

    public String getClassname() { return classname; }

    public void setClassname(String classname) {this.classname = classname;}

    public String getTeacher() { return teacher; }

    public void setTeacher(String teacher) { this.teacher = teacher;}

    public String getCRY() { return CRY; }

    public void setCRY(String CRY) { this.CRY = CRY; }

    public String getPictures() { return pictures; }

    public void setPictures(String pictures) { this.pictures = pictures; }

    public String getWeek() { return week; }

    public void setWeek(String week) { this.week = week; }

    public String getDate() { return date;}
    public void setDate(String date) { this.date = date;}

    public String getClasses() { return classes;}
    public void setClasses(String classes) {this.classes = classes;}

    public String getPlace() { return place;}
    public void setPlace(String place) { this.place = place;}

    public Integer getLikes() { return likes;}
    public void setLikes(Integer likes) { this.likes = likes;}

    public String getSubject() { return subject;}
    public void setSubject(String subject) { this.subject = subject;}



    @Override
    public String toString(){
        return "Lesson{" +
                "id=" + id +
                ", classname='" + classname + '\'' +
                ", teacher='" + teacher + '\'' +
                ", CRY='" + CRY + '\'' +
                ", pictures='" + pictures + '\'' +
                ", week='" + week + '\'' +
                ", date='" + date + '\'' +
                ", classes='" + classes + '\'' +
                ", place='" + place + '\'' +
                ", likes='" + likes + '\'' +
                ", subject='" + subject + '\'' +
                '}';
    }

}
