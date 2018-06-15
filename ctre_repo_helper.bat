
SET RELEASE_VERSION=V0_5.3.1.0


:: Add necessary files
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%.jar*
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-native-windows.jar*

:: Revert files that don't need to be override
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/snobot_sim_java/maven-metadata.xml*
