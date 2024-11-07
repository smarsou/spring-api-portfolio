package com.soulaiman.api.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soulaiman.api.model.Project;
import com.soulaiman.api.repository.ProjectRepository;

@Service
public class ProjectService {

    @Autowired
    private ProjectRepository projectRepository;

    public Iterable<Project> getProjects() {
        return projectRepository.findAll();
    }

    public Optional<Project> getProject(final Long id){
        return projectRepository.findById(id);
    }

    public Project saveProject(final Project project){
        return projectRepository.save(project);
    }

    public void deleteProject(final long id){
        projectRepository.deleteById(id);
    }

}
