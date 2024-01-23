package Student.Repository;

import org.springframework.data.jpa.repository.JpaRepository;



import Student.Entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
	public Student findByEmail(String email);
}
