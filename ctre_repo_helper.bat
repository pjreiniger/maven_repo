
SET RELEASE_VERSION=V1_5.2.1.1


:: Add necessary files
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-windows-x86.jar*
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-windows-x86-64.jar*

:: Revert files that don't need to be override
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/snobot_sim_java/maven-metadata.xml*
