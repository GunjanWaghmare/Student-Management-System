package Student.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import Student.Entity.StudentInfo;

@Repository
public interface InfoStudentRepository extends JpaRepository<StudentInfo, Long> {
    
}