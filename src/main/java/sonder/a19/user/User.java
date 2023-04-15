package sonder.a19.user;

import com.sun.imageio.plugins.jpeg.JPEGImageReaderResources;

public class User {

    private Integer id;
    private String username;
    private String password;
    private String head; // 头像
    private String access; // 权限(0管理员,1老师,2学生)
    private String age;
    private String gender;
    private String mail;
    private String TEL; // 电话号码

    public User(){
        head = null;
        access = "2";
        age = null;
        gender = null;
        mail = null;
        TEL = null;

    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getHead() { return head; }
    public void setHead(String head) { this.head = head; }

    public String getAccess() { return access; }
    public void setAccess(String access) {this.access = access; }

    public String getAge() { return age; }
    public void setAge(String age) { this.age = age; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender;}

    public String getMail() { return mail; }
    public void  setMail(String mail) { this.mail = mail; }

    public String getTEL() { return TEL; }
    public void setTEL(String TEL) {this.TEL = TEL; }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", head='" + head + '\'' +
                ", access='" + access + '\'' +
                ", age='" + age + '\'' +
                ", gender='" + gender + '\'' +
                ", mail='" + mail + '\'' +
                ", TEL='" + TEL + '\'' +
                '}';
    }
}
