package pers.zzh.competition.entities;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Users {
    @TableId
    private Integer userId;
    private String name;
    private Boolean sex;
    private String birthday;
    private String school;
    private String address;
    private String phone;
    private String email;
    private Integer groupId;
    private String password;

    @TableField(exist = false)
    private Groups groups;

    @Override
    public String toString() {
        return "Users{" +
                "user_id=" + userId +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", birthday='" + birthday + '\'' +
                ", school='" + school + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", group_id=" + groupId +
                ", password='" + password + '\'' +
                ", groups=" + groups +
                '}' + '\n';
    }
}
