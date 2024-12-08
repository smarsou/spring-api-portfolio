DROP TABLE IF EXISTS projects;

CREATE TABLE projects (
  _id SERIAL PRIMARY KEY,
  topic VARCHAR(250) NOT NULL,
  html CLOB NOT NULL
);

-- INSERT INTO projects (topic, html) VALUES

-- ('Experiences', '<div class="project-image-wrapper"><img class="project-image" src="/public/pictures/anidris.png" alt="Project Image"></div>
--                 <div class="portfolio-row">
--                   <div class="layer">
--                     <h5>CMDB & ETL Software Development</h5>
--                     <p>
--                       During my internship at <strong style="color:#00eeff">Anidris S.A.</strong> in <strong style="color:#00eeff">Contern, Luxembourg</strong>, I developed a comprehensive <strong style="color:#00eeff">Configuration Management Database (CMDB)</strong> and automated data processing systems. <br>
--                       💻 Designed and implemented the CMDB as a <strong style="color:#00eeff">Tomcat application</strong> (CMDBuild) with a <strong style="color:#00eeff">PostgreSQL database</strong>, ensuring robust and scalable architecture. <br>
--                       🔄 Developed a fully automated <strong style="color:#00eeff">ETL process</strong> using Python for multi-source data acquisition, transformation, and integration. <br>
--                       🌐 Integrated external APIs, including the <strong style="color:#00eeff">Microsoft Graph API</strong>, and internal <strong style="color:#00eeff">REST APIs</strong> in the Python software implemented. <br>
--                       🧩 Managed a <strong style="color:#00eeff">Red Hat Enterprise Linux</strong> environment and configured <strong style="color:#00eeff">CI/CD pipelines</strong> using GitLab, ensuring efficient deployment workflows. <br>
--                       📚 Authored user documentation, trained employees on tool usage, and provided ongoing technical support for seamless adoption. <br>
--                       🛠️ Technologies: <strong style="color:#00eeff">Python</strong>, <strong style="color:#00eeff">PostgreSQL</strong>, <strong style="color:#00eeff">Tomcat</strong>, <strong style="color:#00eeff">MS Graph API</strong>, <strong style="color:#00eeff">Red Hat Enterprise Linux</strong>, and <strong style="color:#00eeff">GitLab CI/CD</strong>. <br>
--                     </p>
--                   </div>                  
--                 </div>'),

-- ('Experiences', '<div class="project-image-wrapper"><img class="project-image" src="/public/pictures/sopra.png" alt="Project Image"></div>
--                 <div class="portfolio-row">
--                   <div class="layer">
--                     <h5>LLM Research & Development</h5>
--                     <p>
--                       During my time at <strong style="color:#00eeff">Sopra Steria</strong> in <strong style="color:#00eeff">Strasbourg, France</strong>, I contributed to the research and development of <strong style="color:#00eeff">Large Language Models (LLMs)</strong> within the scope of the company, helping them explore and understand their potential applications. <br>
--                       📚 Co-authored a detailed <strong style="color:#00eeff">state-of-the-art review</strong> on LLM enhancement techniques, including training, optimization, and evaluation methodologies. <br>
--                       🧼 Conducted data collection, cleaning, and transformation to prepare a high-quality <strong style="color:#00eeff">text dataset</strong> for training and evaluation. <br>
--                       🚀 Trained and optimized a <strong style="color:#00eeff">CodeLLaMa LLM</strong>, providing insights and conclusions based on the dataset and performance metrics. <br>
--                       🛠️ Technologies: <strong style="color:#00eeff">Python</strong>, <strong style="color:#00eeff">HuggingFace</strong>, <strong style="color:#00eeff">Jupyter Notebook</strong>, <strong style="color:#00eeff">IBM Watson</strong>, and <strong style="color:#00eeff">LaTeX</strong>. <br>
--                     </p>
--                   </div>         
--                 </div>'),

-- ('Projects', '<div class="project-image-wrapper"><img class="project-image" src="/public/pictures/ai-1.png" alt="Project Image"></div>
--                 <div class="portfolio-row">
--                     <div class="layer">
--                       <h5>AI SaaS</h5>
--                       <p>
--                         I developed an AI SaaS platform that detects whether an English text was written by a human or a large language model (LLM). <br>
--                         🤖 The AI model is a <strong style="color:#00eeff">Random Forest</strong> classifier, selected after performing a <strong style="color:#00eeff">GridSearch</strong> across various models. <br>
--                         🔍 Explore the Exploratory Data Analysis (<strong style="color:#00eeff">EDA</strong>) and training process <a href="https://github.com/smarsou/ai-text-detector/blob/master/data/eda_and_training.ipynb" style="color:#00eeff" target="_blank">here</a>. <br>
--                         🧼 The dataset underwent thorough analysis and <strong style="color:#00eeff">cleaning</strong> prior to training. <br>
--                         📚 <strong style="color:#00eeff">FastText</strong> was used as the NLP method for data vectorization. <br>
--                         🚀 The AI model is deployed via a <strong style="color:#00eeff">REST API</strong> built with <strong style="color:#00eeff">Flask</strong>. <br>
--                         🌐 It is hosted on an <strong style="color:#00eeff">Ubuntu VM</strong> from <strong style="color:#00eeff">OVH Cloud</strong>, configured with <strong style="color:#00eeff">Nginx</strong> and <strong style="color:#00eeff">Docker</strong>. <br>
--                         📨 The web page interacts with the <strong style="color:#00eeff">REST API</strong> using <strong style="color:#00eeff">AJAX requests</strong>. <br>
--                       </p>                                                              
--                       <div class="list-button">
--                         <a href="http://smarsou.fr/lab/hackaton" target="_blank" rel="noopener noreferrer" class="btn-box">Try the app !</a>
--                         <div class="home-Sci"><a href="http://github.com/smarsou/ai-text-detector" target="_blank" rel="noopener noreferrer" style="--i:10"><i class="bx bxl-github"></i></a></div>
--                       </div>
--                     </div>
--                 </div>'),

-- ('Projects', '<div class="project-image-wrapper"><img class="project-image" src="/public/pictures/portfolio-2.png" alt="Project Image"></div>
--                 <div class="portfolio-row">
--                     <div class="layer">
--                         <h5>Portfolio Web Development</h5>
--                         <p>
--                           The current website on which you are is a web app developed in Java with the framework Spring Boot. <br>
--                           ⚙️ Backend in <strong style="color:#00eeff">Java</strong> with <strong style="color:#00eeff">Spring Boot</strong>.<br>
--                           🧪 <strong style="color:#00eeff">JUnit</strong> and <strong style="color:#00eeff">Mockito</strong> for unit and integration testing.<br>
--                           ✨ <strong style="color:#00eeff">SonarCloud</strong> for code quality assurance.<br>
--                           📦 Microservice <strong style="color:#00eeff">REST API</strong> for data management through a dedicated Spring Boot application.<br>
--                           🐳 <strong style="color:#00eeff">Docker</strong> with <strong style="color:#00eeff">Docker Compose</strong> and <strong style="color:#00eeff">Systemd</strong> for deploying applications (Web app, API, Nginx).<br>
--                           🌐 <strong style="color:#00eeff">Nginx</strong> used as a reverse proxy.<br>
--                           🚀 Workflow with <strong style="color:#00eeff">GitHub Actions</strong> for managing the CI/CD pipeline.<br>
--                         </p>                        
--                         <div class="list-button">
--                           <div class="home-Sci"><a href="http://github.com/smarsou/spring-web-portfolio" target="_blank" rel="noopener noreferrer" style="--i:10"><i class="bx bxl-github"></i></a></div>
--                         </div>
--                     </div>
--                 </div>'),

-- ('Projects', '<div class="project-image-wrapper"><img class="project-image" src="/public/pictures/eda.png" alt="Project Image"></div>
--                 <div class="portfolio-row">
--                   <div class="layer">
--                     <h5>EDA for Tree Defect Analysis and Prediction</h5>
--                     <p>
--                       A project aimed at predicting tree defects and enhancing vegetation management through data analysis and machine learning. <br>
--                       🧹 <strong style="color:#00eeff">Clean</strong> and <strong style="color:#00eeff">prepare</strong> data by handling missing values and removing redundant attributes. <br>
--                       📊 Analyze data correlations using <strong style="color:#00eeff">Pearson correlation</strong>, <strong style="color:#00eeff">χ² tests</strong>, and <strong style="color:#00eeff">Cramer’s V</strong>. <br>
--                       🤖 Build predictive models with <strong style="color:#00eeff">Random Forest</strong> for both unilabel and multilabel classification. <br>
--                       ⚖️ Handle imbalanced data using <strong style="color:#00eeff">SMOTE</strong> and class weight adjustments for improved accuracy. <br>
--                       🖼️ Visualize trends and patterns using <strong style="color:#00eeff">Matplotlib</strong>. <br>
--                       💻 Developed in a collaborative environment using <strong style="color:#00eeff">Jupyter Notebook</strong> with Python.
--                     </p>
--                     <div class="list-button">
--                       <a href="https://colab.research.google.com/drive/14Y4rP2lHipmAMgluWHemusxSByCuxLXn?usp=sharing" target="_blank" rel="noopener noreferrer" class="btn-box">Check the notebook !</a>
--                       <div class="home-Sci"><a href="http://github.com/smarsou" target="_blank" rel="noopener noreferrer" style="--i:10; visibility: hidden;"><i class="bx bxl-github"></i></a></div>
--                     </div>
--                   </div>
--               </div>'),

-- ('Projects', '<div class="project-image-wrapper"><img class="project-image" src="/public/pictures/viz.png" alt="Project Image"></div>
--                 <div class="portfolio-row">
--                   <div class="layer">
--                     <h5>Wildfire Data Visualization Mapping</h5>
--                     <p>
--                       A visualization project to enhance the evolution of forest fires in France over the years. <br>
--                       🌐 Collect <strong style="color:#00eeff">CSV data</strong> from official government websites. <br>
--                       🗺️ Find relevant <strong style="color:#00eeff">SVG maps</strong> of France. <br>
--                       🧹 <strong style="color:#00eeff">Clean</strong> and <strong style="color:#00eeff">transform</strong> data to apply it to maps. <br>
--                       💻 Create a simple and efficient <strong style="color:#00eeff">static website</strong> to display data. <br>
--                       📊 Implement visualizations with <strong style="color:#00eeff">JavaScript</strong> using the <strong style="color:#00eeff">D3.js</strong> library.
--                     </p>                    
--                     <div class="list-button">
--                       <a href="http://smarsou.fr/lab/viz/" target="_blank" rel="noopener noreferrer" class="btn-box">Have a look !</a>
--                       <div class="home-Sci"><a href="http://github.com/smarsou" target="_blank" rel="noopener noreferrer" style="--i:10; visibility: hidden;"><i class="bx bxl-github"></i></a></div>
--                     </div>
--                   </div>
--               </div>'),

-- ('Projects', '<div class="project-image-wrapper"></div>
--                 <div class="portfolio-row">
--                   <div class="layer">
--                     <h5>And Much More Coming Soon...</h5>
--                     <p>Currently being worked on...<br>
--                       Soon to be featured in this portfolio: Professional Experience, a ChatBot LLM project with HuggingFace integration, a C Compiler, C programming projects, and much more...  
--                     </p>                          
--                     <div class="list-button">
--                       <div class="home-Sci"><a href="http://github.com/smarsou" target="_blank" rel="noopener noreferrer" style="--i:10"><i class="bx bxl-github"></i></a></div>
--                     </div>
--                   </div>
--                 </div>')