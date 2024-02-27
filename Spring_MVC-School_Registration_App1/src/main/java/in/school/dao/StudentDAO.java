package in.school.dao;

import org.springframework.data.repository.CrudRepository;

import in.school.entity.*;

public interface StudentDAO extends CrudRepository<School_Registration, Integer> {

}
