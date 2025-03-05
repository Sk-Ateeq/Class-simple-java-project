#Step1: #pull a base image which gives all requried tools and libaries.
From openjdk:17-jdk-alpine

#Step2: #create a floder where the app code will be stored.
WORKDIR /app

#Step3: #copy the source code from your HOST mechine to your container.
#Copy the entire src directory to the container.
COPY src/ src/

#Step4: #Compile the application code.
#(Compile the Java program)
RUN mkdir -p bin && javac -d bin src/Main.java

#Step5: #run the application.
#(Run the compiled Java program)
CMD ["java", "-cp", "bin", "Main"]
