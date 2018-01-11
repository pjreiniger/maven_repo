
SET RELEASE_VERSION=0.7.1


:: Add necessary files
git add com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%-uber_native-windows.jar*
git add com/snobot/simulator/wpilib/%RELEASE_VERSION%/wpilib-%RELEASE_VERSION%-wpi_native-windows.zip*
git add com/snobot/simulator/navx_sim/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%.dll*
git add com/snobot/simulator/ctre_override/%RELEASE_VERSION%/ctre_override-%RELEASE_VERSION%-native-windows.jar*

:: Revert files that don't need to be override
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/snobot_sim_java/maven-metadata.xml*

git checkout com/snobot/simulator/navx_sim/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-headers.zip*
git checkout com/snobot/simulator/navx_sim/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/navx_sim/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/navx_sim/navx_simulator/maven-metadata.xml*

git checkout com/snobot/simulator/ctre_override/%RELEASE_VERSION%/ctre_override-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/ctre_override/%RELEASE_VERSION%/ctre_override-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/ctre_override/maven-metadata.xml*

git checkout com/snobot/simulator/snobot_sim_gui
git checkout com/snobot/simulator/snobot_sim_utilites

git checkout com/snobot/simulator/wpilib/%RELEASE_VERSION%/wpilib-%RELEASE_VERSION%-wpi_headers.zip*
git checkout com/snobot/simulator/wpilib/%RELEASE_VERSION%/wpilib-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/wpilib/maven-metadata.xml*

:: Remove unecessary files
rmdir /s /q com\snobot\simulator\snobot_sim_jni
rmdir /s /q com\snobot\simulator\snobot_sim