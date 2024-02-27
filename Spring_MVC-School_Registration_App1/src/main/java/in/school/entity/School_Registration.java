package in.school.entity;


import javax.persistence.*;

import lombok.Data;

@Entity
@Data
public class School_Registration {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sid;
	private String sname;
	private Integer sclass;
	private String sdiv;
	
}
