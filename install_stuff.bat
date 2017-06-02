set PATH=%PATH%;C:\Program Files\apache-maven-3.5.0\bin

call mvn install:install-file -DgroupId=com.snobot -DartifactId=snobotSim -Dversion=1.0 -Dpackaging=zip -Dfile=C:\Users\PJ\GitHub\FIRST_2017\WpiUpdates\WpiHalRefactor\snobotSim.zip -DlocalRepositoryPath=C:\Users\PJ\GitHub\FIRST_2017\maven_repo
call mvn install:install-file -DgroupId=com.snobot -DartifactId=snobotSim -Dversion=1.0 -Dpackaging=jar -Dfile=C:\Users\PJ\GitHub\FIRST_2017\WpiUpdates\WpiHalRefactor\snobotSim.jar -DlocalRepositoryPath=C:\Users\PJ\GitHub\FIRST_2017\maven_repo
call mvn install:install-file -DgroupId=edu.wpilib -DartifactId=wpilibSim -Dversion=1.0 -Dpackaging=zip -Dfile=C:\Users\PJ\GitHub\FIRST_2017\xxxTempWpi\wpilibSim.zip -DlocalRepositoryPath=C:\Users\PJ\GitHub\FIRST_2017\maven_repo