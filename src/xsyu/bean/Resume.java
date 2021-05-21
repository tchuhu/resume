package xsyu.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName Resume
 * @Description Hello World!
 * @Author tchuhu
 * @Date 2021/5/21 10:52
 * @Version 1.0
 */
public class Resume implements Serializable {
    private static final long serialVersionUID = 1L;

    private int resumeId;		//简历编号
    private String username; 	//姓名
    private String sex; 		//性别
    private String nation; 	//民族
    private String education; 	//学历
    private String location; 	//籍贯
    private String political; 	//政治面貌
    private Date birth; 		//出生年月
    private String phone; 		//电话
    private String email; 		//邮箱
    private String intention; 	//求职意向
    private String hobby; 		//兴趣爱好
    private String experience; 	//项目经验
    private String skill; 		//个人技能
    private String honor; 		//荣誉奖励
    private String evaluate; 	//自我评价
    private String photo; //图片名
    private String file;//附件
    public Resume(){}

    public Resume(int resumeId, String username, String sex, String nation, String education, String location, String political, Date birth, String phone, String email, String intention, String hobby, String experience, String skill, String honor, String evaluate, String photo, String file) {
        this.resumeId = resumeId;
        this.username = username;
        this.sex = sex;
        this.nation = nation;
        this.education = education;
        this.location = location;
        this.political = political;
        this.birth = birth;
        this.phone = phone;
        this.email = email;
        this.intention = intention;
        this.hobby = hobby;
        this.experience = experience;
        this.skill = skill;
        this.honor = honor;
        this.evaluate = evaluate;
        this.photo = photo;
        this.file = file;
    }

    public int getResumeId() {
        return resumeId;
    }

    public void setResumeId(int resumeId) {
        this.resumeId = resumeId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPolitical() {
        return political;
    }

    public void setPolitical(String political) {
        this.political = political;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIntention() {
        return intention;
    }

    public void setIntention(String intention) {
        this.intention = intention;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getHonor() {
        return honor;
    }

    public void setHonor(String honor) {
        this.honor = honor;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "resumeId=" + resumeId +
                ", username='" + username + '\'' +
                ", sex='" + sex + '\'' +
                ", nation='" + nation + '\'' +
                ", education='" + education + '\'' +
                ", location='" + location + '\'' +
                ", political='" + political + '\'' +
                ", birth=" + birth +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", intention='" + intention + '\'' +
                ", hobby='" + hobby + '\'' +
                ", experience='" + experience + '\'' +
                ", skill='" + skill + '\'' +
                ", honor='" + honor + '\'' +
                ", evaluate='" + evaluate + '\'' +
                ", photo='" + photo + '\'' +
                ", file='" + file + '\'' +
                '}';
    }
}
