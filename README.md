# Vet-Assistant
A Web-Application which helps a Vet keep track and take care of its pet patients and their owners

# Application Description
This is a Web Based Application which is created to help vets for managing and keeping track of their pet patients. The idea is that each 
pet that comes in the vet's clinic should be registered in the system, and this way vet keeps records of pets medical data. Also each pet 
is registered together with its owner. The owner is registered with contact information and a full list of pets he owns, so vet knows who
to contact for each of the pets he has in its clinic.

Unfortunately, the implementation is very basic. For the pet you can only insert name, owner, age, picture and some comments on pets
condition. More specific fields could be added such as a list of vaccines or previous diseases that the pet has overcome.

Also there are 3 unimplemented options (or very little implementation is provided) such as: Vets, Warehouse and Info.
- Vets is thought to offer some log in system for big veterinary clinics, where each vet has its own account.
- Info is thought to give a general information on the pets which are in the clinic being taken care and their types, a full list of owners,
which also gives us the full list of pets.
- Warehouse is thought to offer something similar with an inventory to help vet also manage medicaments and other products sych as medicines 
or vaccines. Each movement of these products (like when a new supply arrives or when some medicaments are given to a pet) are saved in the
system. This way the vet has a clearer vision on which medicament is spent faster, which needs more supply and so on. 

# Prerequites
1. You need to have at least JDK8 installed in your machine, in order for the application to run. You can [click here](https://www3.ntu.edu.sg/home/ehchua/programming/howto/JDK_Howto.html)
for reading a tutorial on how to install JDK in Windows and/or Ubuntu.
2. This Application needs [Apache Tomcat](http://tomcat.apache.org/) to be installed in your machine. Tomcat is used to run the Java
Servelets. Since the Application is Web Based and is built using Spring MVC and Spring MVC in itself uses the Java Servlets and Java Server Pages Techonology, Tomcat must be installed and the application must run on Tomcat. Here you can follow a [Tomcat Installation Tutorial](https://www.youtube.com/watch?v=pKMgr8uNvGM)
3. In order to run the project easier, it is reccomended to use [IntelliJ IDE](https://www.jetbrains.com/idea/download/#section=windows)

# Running Application
There are two ways for running the Application. 
  1. The first and easier way is to open the full project with Intellij IDE (since that is the IDE I used during development). You configure the IDE to run the Application on Tomcat and Click Run. The default Web Browser will open the Application.
  2. Second way is to deploy the application via Maven on Tomcat. For this you must have [Maven configured and installed](https://www.theserverside.com/tutorial/How-to-install-Maven-and-build-apps-with-the-mvn-command-line) installed in your machine. You can follow [this tutorial](https://www.baeldung.com/tomcat-deploy-war) on how to deploy a web application on Tomcat via Maven and also other ways.
  
  #Built with
  * [JAVA 8](https://www.java.com/en/download/) - The programming language used
  * [Spring](https://spring.io/projects/spring-framework) - Java Framework used
  * [Spring MVC](https://docs.spring.io/spring/docs/current/spring-framework-reference/web.html) - Web Framework based on Spring
  * [Maven](https://maven.apache.org/) - Build Automation tool 
