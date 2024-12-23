# Use the official Tomcat base image
FROM tomcat:9.0-jdk11

# Set the working directory inside the container
WORKDIR /usr/local/tomcat

# Remove the default webapps to avoid conflicts
# RUN rm -rf webapps/*

# Remove default web apps (optional, only if you want to clean up default Tomcat apps)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the Tomcat webapps directory
# COPY target/advait-1.0.war webapps/ROOT.war

# Copy the WAR file to the Tomcat webapps directory with the desired context path
COPY ./target/advait-1.0.war /usr/local/tomcat/webapps/advait.war


# Expose the port on which Tomcat runs
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
