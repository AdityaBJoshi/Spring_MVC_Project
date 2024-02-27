package in.school.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Mentor_Login {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer mid;
	private String mname;
	private String memail;
	private String mpassword;
	private String maddress;
	private String mmobileno;
}
