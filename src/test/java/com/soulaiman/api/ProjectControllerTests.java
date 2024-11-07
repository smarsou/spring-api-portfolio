package com.soulaiman.api;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.hamcrest.CoreMatchers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.soulaiman.api.model.Project;


@SpringBootTest
@AutoConfigureMockMvc
class ProjectControllerTests {
    
    @Autowired
    MockMvc mockMvc;

    @Test
    void testGetProjectsStatus() throws Exception{
        mockMvc.perform(MockMvcRequestBuilders.get("/project"))
        .andExpect(MockMvcResultMatchers.status().isOk());
    }

    @ParameterizedTest
    @CsvSource({ "0,Software Development" , "5,Data &amp; AI"})
    void testGetProjectsValues(String index, String topic) throws Exception{
        mockMvc.perform(MockMvcRequestBuilders.get("/project"))
        .andExpect(MockMvcResultMatchers.status().isOk())
        .andExpect(MockMvcResultMatchers.jsonPath("$["+index+"].topic", CoreMatchers.is(topic)));
    }

    @Test
    void testGetProjectSuccess() throws Exception{
        // Modify an unkown project
        mockMvc.perform(MockMvcRequestBuilders.get("/project/1"))
        .andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    void testPostProjectSuccess() throws Exception{
        String jsonContent = "{ \"topic\" : \"Software Development\", \"html\":\"<p>Test</p>\"}";
        mockMvc.perform(MockMvcRequestBuilders.post("/project").contentType("application/json").content(jsonContent))
        .andExpect(MockMvcResultMatchers.status().isOk());

    }

    @ParameterizedTest
    @CsvSource({ "{ \"topic\" : \"Software Development\", \"content\": \"Should fail because content field doesn t exist\"}"
                , "{ \"topic\" : \"Software Development\"}"})
    void testPostProjectFail(String jsonContent) throws Exception{
        mockMvc.perform(MockMvcRequestBuilders.post("/project").contentType("application/json").content(jsonContent))
        .andExpect(MockMvcResultMatchers.status().isBadRequest());
        
    }

    @ParameterizedTest
    @CsvSource({ "topic, Topic modified !,{ \"topic\" : \"Topic modified !\"}", "html, <p>Html modified !</p>,{ \"html\" : \"<p>Html modified !</p>\"}"})
    void testPutProjectSuccess(String field, String expectedModification, String modifyContent) throws Exception{
        // Add a project first
        String jsonContent = "{ \"topic\" : \"Software Development\", \"html\":\"<p>Test</p>\"}";
        MvcResult result = mockMvc.perform(MockMvcRequestBuilders.post("/project").contentType("application/json").content(jsonContent))
        .andExpect(MockMvcResultMatchers.status().isOk())
        .andReturn();
        String body = result.getResponse().getContentAsString();
        Project project = (new ObjectMapper()).readValue(body, Project.class);
        // Modify the project
        String resultModified = mockMvc.perform(MockMvcRequestBuilders.put("/project/" + project.getId().toString()).contentType("application/json").content(modifyContent))
        .andExpect(MockMvcResultMatchers.status().isAccepted())
        .andReturn().getResponse().getContentAsString();
        Project projectModified = (new ObjectMapper()).readValue(resultModified, Project.class);
        // Test the modification
        switch (field) {
            case "topic":
                assertEquals(expectedModification, projectModified.getTopic());
                break;
            case "html":
                assertEquals(expectedModification, projectModified.getHtml());
                break;
            default:
                fail("Field correspond to no json key");
                break;
        }
    }

    @Test
    void testPutProjectFail() throws Exception{
        // Modify an unkown project
        String modifyContent = "{\"html\":\"<p>Modified Html !</p>\"}";
        mockMvc.perform(MockMvcRequestBuilders.put("/project/999").contentType("application/json").content(modifyContent))
        .andExpect(MockMvcResultMatchers.status().isNotFound());
        
    }

    @Test
    void testDeleteProjectSuccess() throws Exception{
        // Add a project first
        String jsonContent = "{ \"topic\" : \"Software Development\", \"html\":\"<p>Test</p>\"}";
        MvcResult result = mockMvc.perform(MockMvcRequestBuilders.post("/project").contentType("application/json").content(jsonContent))
        .andExpect(MockMvcResultMatchers.status().isOk())
        .andReturn();
        String body = result.getResponse().getContentAsString();
        Project project = (new ObjectMapper()).readValue(body, Project.class);
        // Delete the project
        mockMvc.perform(MockMvcRequestBuilders.delete("/project/" + project.getId().toString()))
        .andExpect(MockMvcResultMatchers.status().isOk());
        // Test if the project still exist
        mockMvc.perform(MockMvcRequestBuilders.get("/project/" + project.getId().toString()))
        .andExpect(MockMvcResultMatchers.status().isNotFound());
    }

}
