package com.fastcampus.nodemo.repository;

import com.fastcampus.nodemo.JPA.freeboard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface boardRepo extends JpaRepository<freeboard, Long> {

}