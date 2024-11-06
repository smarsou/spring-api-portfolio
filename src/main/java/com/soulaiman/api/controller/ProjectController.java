package com.soulaiman.api.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import com.soulaiman.api.model.Project;
import com.soulaiman.api.service.ProjectService;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.PutMapping;

@RestController
public class ProjectController {

    @Autowired
    private ProjectService projectService;

    @GetMapping("/project")
    public Iterable<Project> getProjects() {
        return projectService.getProjects();
    }

    @GetMapping("/project/{id}")
    public Project getProject(@PathVariable("id") Long id) {
        return projectService.getProject(id).orElse(null);
    }

    @PostMapping("/project")
    public ResponseEntity<?> createProject(@RequestBody Project entity) {
        if (entity.getHtml() != null && entity.getTopic() != null){
            return new ResponseEntity<>(projectService.saveProject(entity), HttpStatus.OK);
        }else{
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @PutMapping("/project/{id}")
    public Project updateProject(@PathVariable("id") Long id, @RequestBody Project input_project) {
            Optional<Project> projectOptional = projectService.getProject(id);
            if ( projectOptional.isPresent() ){
                Project project_to_update = projectOptional.get();
                if (input_project.getTopic() != null){
                    project_to_update.setTopic(input_project.getTopic());
                }
                if (input_project.getHtml() != null){
                    project_to_update.setHtml(input_project.getHtml());
                }
                return project_to_update;
            }else{
                return null;
            }
    }
    
    @DeleteMapping("/project/{id}")
    public void deleteProject(@PathVariable("id") Long id){
        projectService.deleteProject(id);
    }

}
