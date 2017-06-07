PATH=$PATH:/home/pj/Desktop/apache-maven-3.5.0/bin

local_repo=/home/pj/GitHub/FIRST/2017/maven_repo
wpi_mock_hal=/home/pj/GitHub/FIRST/2017/TempAllWpi
snobot_sim=/home/pj/GitHub/FIRST/2017/CppSimulator

mvn install:install-file -DgroupId=com.snobot.simulator -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=jar -DartifactId=snobotSim                                 -Dfile=$snobot_sim/build/snobotSim.jar
mvn install:install-file -DgroupId=com.snobot.simulator -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=jar -DartifactId=snobotSim -Dclassifier=gui                -Dfile=$snobot_sim/build/snobotSimGui.jar
mvn install:install-file -DgroupId=com.snobot.simulator -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=jar -DartifactId=snobotSim -Dclassifier=NativeJava-linux   -Dfile=$snobot_sim/build/snobotSimNative-linux.jar
mvn install:install-file -DgroupId=com.snobot.simulator -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=zip -DartifactId=snobotSim -Dclassifier=cpp-sources        -Dfile=$snobot_sim/build/snobotSimCppSources.zip
mvn install:install-file -DgroupId=com.snobot.simulator -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=zip -DartifactId=snobotSim -Dclassifier=javadeps           -Dfile=$snobot_sim/build/snobotSimJavaDependencies.zip
mvn install:install-file -DgroupId=com.snobot.simulator -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=zip -DartifactId=snobotSim -Dclassifier=NativeCpp-linux    -Dfile=$snobot_sim/build/snobotSimLibrary-linux.zip

mvn install:install-file -DgroupId=edu.wpilib           -Dversion=1.0 -DlocalRepositoryPath=$local_repo -Dpackaging=zip -DartifactId=wpilibSim -Dclassifier=linux    -Dfile=$wpi_mock_hal/wpilibSim.zip 
