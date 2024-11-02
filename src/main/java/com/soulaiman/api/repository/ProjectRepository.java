package com.soulaiman.api.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.soulaiman.api.model.Project;

@Repository
public interface ProjectRepository extends CrudRepository<Project, Long>{

}
