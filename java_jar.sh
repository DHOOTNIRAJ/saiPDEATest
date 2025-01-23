# Create the directory
mkdir -p /usr/achanna_sai_devops_git_23012025_V_2.1_D
 
# Navigate to the directory
cd /usr/achanna_sai_devops_git_23012025_V_2.1_D
 
# Initialize a Git repository
git init
 
# Copy the Java file to the repository
cp -ar /usr/achanna_sai_devops_git_v_2.1/* .
#cp /usr/achanna_sai_devops_git_v_2.1/pom.xml .
 
# Stage and commit the file
git add MyJavaAppDocker.java
git commit -m "Added MyJavaAppDocker.java"


mvn clean package

# Rename the JAR file for clarity
mv target/*.jar /usr/achanna_sai_devops_git_23012025_V_2.1_D/achanna_devops_sr_dev_first.jar

java -jar /usr/achanna_sai_devops_git_23012025_V_2.1_D/achanna_devops_sr_dev_first.jar "$@"
