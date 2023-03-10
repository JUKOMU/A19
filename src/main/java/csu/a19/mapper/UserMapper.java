package csu.a19.mapper;

import csu.a19.user.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface UserMapper {


    /**
     * 根据用户名和密码查询用户对象
     * @param username
     * @param password
     * @return
     */
    @Select("select * from tb_user where username = #{username} and password = #{password}")
    User select(@Param("username") String username, @Param("password")  String password);

    /**
     * 根据用户名查询用户对象
     * @param username
     * @return
     */
    @Select("select * from tb_user where username = #{username}")
    User selectByUsername(String username);

    /**
     * 根据权限查询用户对象
     * @param access
     * @return
     */
    @Select("select * from tb_user where access = #{access}")
    User selectByAccess(String access);

    /**
     * 根据年龄查询用户对象
     * @param age
     * @return
     */
    @Select("select * from tb_user where age = #{age}")
    User selectByAge(String age);

    /**
     * 根据性别查询用户对象
     * @param gender
     * @return
     */
    @Select("select * from tb_user where gender = #{gender}")
    User selectByGender(String gender);

    /**
     * 根据邮箱查询用户对象
     * @param mail
     * @return
     */
    @Select("select * from tb_user where mail = #{mail}")
    User selectByMail(String mail);

    /**
     * 根据电话号码查询用户对象
     * @param TEL
     * @return
     */
    @Select("select * from tb_user where TEL = #{TEL}")
    User selectByTEL(String TEL);

    /**
     * 添加用户
     * @param user
     */
    @Insert("insert into tb_user values(null,#{username},#{password},#{head},#{access},#{age},#{gender},#{mail},#{TEL})")
    void add(User user);

    /**
     * 修改密码
     * @param password
     * @return
     */
    @Update("update tb_user set password = #{password} where id = #{id}")
    User updatePassword(String password);

    /**
     * 修改头像
     * @param head
     * @return
     */
    @Update("update tb_user set head = #{head} where id = #{id}")
    User updateHead(String head);

    /**
     * 修改权限
     * @param access
     * @return
     */
    @Update("update tb_user set access = #{access} where id = #{id}")
    User updateAccess(String access);

    /**
     * 修改年龄
     * @param age
     * @return
     */
    @Update("update tb_user set age = #{age} where id = #{id}")
    User updateAge(String age);

    /**
     * 修改性别
     * @param gender
     * @return
     */
    @Update("update tb_user set gender = #{gender} where id = #{id}")
    User updateGender(String gender);

    /**
     * 修改邮箱
     * @param mail
     * @return
     */
    @Update("update tb_user set mail = #{mail} where id = #{id}")
    User updateMail(String mail);

    /**
     * 修改电话号码
     * @param TEL
     * @return
     */
    @Update("update tb_user set TEL = #{TEL} where id = #{id}")
    User updateTEL(String TEL);

}
