DROP TABLE IF EXISTS projects;

CREATE TABLE projects (
  _id INT AUTO_INCREMENT PRIMARY KEY,
  topic VARCHAR(250) NOT NULL,
  html VARCHAR(MAX) NOT NULL
);

INSERT INTO projects (topic, html) VALUES
('Software Development', '&lt;p class=&quot;subsubtitle&quot;&gt;Spring Boot Web Portfolio&lt;/p&gt;&lt;p&gt;A Java web application with Spring Boot to manage and render my portfolio. It includes : &lt;ul&gt;&lt;li&gt;Retrieve projects&#39; data from a custom microservice API (&lt;a href=&quot;https://github.com/smarsou/spring-api-portfolio&quot; target=&quot;_blank&quot;&gt;https://github.com/smarsou/spring-api-portfolio&lt;/a&gt;).&lt;/li&gt;&lt;li&gt;Display a home page, with my CV and my projects&lt;/li&gt;&lt;li&gt;Manage projects data through an admin panel&lt;/li&gt;&lt;/ul&gt;It communicates with the API to manage the data which I want to display on my portfolio.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Tech stack&lt;/strong&gt;: Java, Spring Boot, Maven, Azure VM, Linux, GitHub CI/CD, REST API, Nginx&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;https://github.com/smarsou/spring-web-portfolio&quot;&gt;Github repo...&lt;/a&gt;'),

('Software Development', '&lt;p class=&quot;subsubtitle&quot;&gt;Microservice API for the Portfolio&lt;/p&gt;&lt;p&gt;A microservice API implemented with Spring Boot for my web app portfolio (&lt;a href=&quot;https://github.com/smarsou/spring-web-portfolio&quot; target=&quot;_blank&quot;&gt;https://github.com/smarsou/spring-web-portfolio&lt;/a&gt;).&lt;/p&gt;&lt;p&gt;It handles CRUD operations and is hosted on the same virtual machine as the Spring Boot web application.&lt;/p&gt;&lt;p&gt;I use Apiary for the online documentation: &lt;a href=&quot;https://smarsousportfolioapi.docs.apiary.io/&quot; target=&quot;_blank&quot;&gt;https://smarsousportfolioapi.docs.apiary.io/&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Tech stack&lt;/strong&gt;: Java, Spring Boot, REST API, Apiary&lt;/p&gt;'),

('Software Development', '&lt;p class=&quot;subsubtitle&quot;&gt;JavaFX project&lt;/p&gt;&lt;p&gt; It is an academic project in which we had to learn JavaFX and use it to implement a desktop app, within 5 days.&lt;/p&gt;&lt;p&gt; A UML diagram we have designed for the application is available in the github repository. &lt;/p&gt;&lt;p&gt;Below is a video of the result application. It was recorded for an exam evaluation during my master&apos;s degree. You can also find the github repo below. &lt;br&gt;&lt;br&gt; &lt;iframe width=&quot;460&quot; height=&quot;215&quot; src=&quot;https://www.youtube.com/embed/sAErV-kfg3c?si=zUM2Jr_tzyLPCu1r&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share&quot; referrerpolicy=&quot;strict-origin-when-cross-origin&quot; allowfullscreen&gt;&lt;/iframe&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Tech stack&lt;/strong&gt;: Java, JavaFX, Gradle&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;https://github.com/smarsou/javafx-app&quot;&gt;Github repo...&lt;/a&gt;'),

('Software Development', '&lt;p class=&quot;subsubtitle&quot;&gt;Internship - Database Design &amp; Python ETL Development&lt;/p&gt;&lt;p&gt;My 6 long-term internship with Anidris S.A. (Luxembourg) was a project of CMDB implementation. The main points of this project are :&lt;ul&gt;&lt;li&gt;Designed a CMDB (Configuration Management Database) using a Tomcat app and its PostgreSQL DB.&lt;/li&gt;&lt;li&gt;ETL process implemented in Python to send data sources into the CMDB with automation.&lt;/li&gt;&lt;li&gt; Manipulated GRAPH API and internal REST API, OOP in Python and managed Linux environment.&lt;/li&gt;&lt;li&gt; Written user documentation and trained employees on the tool&#39;s usage&lt;/li&gt;&lt;/ul&gt;&lt;p&gt; &lt;strong&gt;Technologies:&lt;/strong&gt; Python, PostgreSQL, Tomcat, MS GRAPH API, Red Hat Entreprise Linux, Gitlab CI/CD.&lt;/p&gt;'),

('Software Development', '&lt;p class=&quot;subsubtitle&quot;&gt;Compiler syntax and semantic analysis (Java)&lt;/p&gt;&lt;p&gt;This project involves implementing the syntax and semantic analysis phases of a compiler. The chosen language is Tiger. Code generation in assembly language is not part of this project.&lt;/p&gt;&lt;p&gt;The syntax analysis was carried out by establishing an LL grammar, which allowed us to construct the abstract syntax tree (AST).&lt;/p&gt;&lt;p&gt;Next, based on this abstract tree, we implemented semantic checks in Java using the Visitor design pattern.&lt;/p&gt;&lt;p&gt;This enabled us to build the symbol table in the end.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Tech stack &lt;/strong&gt;: Java, ANTLR&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;https://github.com/smarsou/compiler-syntax-semantic-analysis&quot;&gt;Github repo...&lt;/a&gt;'),

('Data &amp; AI', '&lt;p class=&quot;subsubtitle&quot;&gt;Generative AI &amp; LLM research project&lt;/p&gt;&lt;p&gt;Written a state-of-the-art research on LLMs about fine-tuning, optimization and comparison. Fine-tuned a model for code generation, optimized it using prompt engineering and quantization. Documented test results and provided conclusions to complete the research report.&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;/pdf/pi.pdf&quot;&gt;Learn more...&lt;/a&gt;'),

('Data &amp; AI', '&lt;p class=&quot;subsubtitle&quot;&gt;AI text generated detector&lt;/p&gt;&lt;p&gt;Training different models with the goal of distinguishing between an essay written by a high school student and one generated by an AI. This project originates from the statement of a Kaggle competition.&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;https://github.com/smarsou/ai-text-detector&quot;&gt;Github repo...&lt;/a&gt;'),

('Data &amp; AI', '&lt;p class=&quot;subsubtitle&quot;&gt;EDA: Analysis of Grenoble&apos;s Urban Vegetation&lt;/p&gt;&lt;p&gt;Exploratory Data Analysis of Grenoble&apos;s Urban Vegetation.&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;https://colab.research.google.com/drive/13i1xwQEhz7C6L1DBw0atsRNq6nh4-aSz?usp=sharing&quot;&gt;Learn more...&lt;/a&gt;'),

('Data &amp; AI', '&lt;p class=&quot;subsubtitle&quot;&gt;Data Visualization: Wildfires in France&lt;/p&gt;&lt;p&gt;Design of various visualizations to understand wildfire data in France since 1973.&lt;/p&gt;&lt;a style=&quot;&quot; target=&quot;_blank&quot; href=&quot;https://github.com/smarsou/data-visualization-forest-fires&quot;&gt;Github repo...&lt;/a&gt;');