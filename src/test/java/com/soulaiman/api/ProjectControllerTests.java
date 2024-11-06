package com.soulaiman.api;

import org.hamcrest.CoreMatchers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;


@SpringBootTest
@AutoConfigureMockMvc
public class ProjectControllerTests {
    
    @Autowired
    public MockMvc mockMvc;

    @Test
    public void testGetProjectsStatus() throws Exception{
        mockMvc.perform(MockMvcRequestBuilders.get("/project"))
        .andExpect(MockMvcResultMatchers.status().isOk());
    }

    @ParameterizedTest
    @CsvSource({ "0,Software Development" , "5,Data &amp; AI"})
    public void testGetProjectsValues(String index, String topic) throws Exception{
        mockMvc.perform(MockMvcRequestBuilders.get("/project"))
        .andExpect(MockMvcResultMatchers.status().isOk())
        .andExpect(MockMvcResultMatchers.jsonPath("$["+index+"].topic", CoreMatchers.is(topic)));
    }

    @Test
    public void testPostProjectSuccess() throws Exception{

        String jsonContent = "{ \"topic\" : \"Software Development\", \"html\":\"<p>Test</p>\"}";

        mockMvc.perform(MockMvcRequestBuilders.post("/project").contentType("application/json").content(jsonContent))
        .andExpect(MockMvcResultMatchers.status().isOk());

    }

    @ParameterizedTest
    @CsvSource({ "{ \"topic\" : \"Software Development\", \"content\": \"Should fail because content field doesn t exist\"}"
                , "{ \"topic\" : \"Software Development\"}"})
    public void testPostProjectFail(String jsonContent) throws Exception{

        mockMvc.perform(MockMvcRequestBuilders.post("/project").contentType("application/json").content(jsonContent))
        .andExpect(MockMvcResultMatchers.status().isBadRequest());
        
    }
   

}
