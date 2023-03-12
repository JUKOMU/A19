package csu.a19.mapper;

import csu.a19.lesson.Lesson;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
public interface LessonMapper {
    /**
     * 根据课程查询课程对象
     * @param classname
     * @return
     */
    @Select("select * from tb_lesson where classname = #{classname}")
    Lesson selectByClassname(String classname);

    /**
     * 根据老师查询课程对象
     * @param teacher
     * @return
     */
    @Select("select * from tb_lesson where teacher = #{teacher}")
    Lesson selectByTeacher(String teacher);

    @Insert("insert into tb_lesson values(null,#{classname},#{teacher},#{CRY},#{pictures},#{week},#{date},#{classes},#{place})")
    void add(Lesson lesson);
}
