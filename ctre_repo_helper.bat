
SET RELEASE_VERSION=5.12.0_V0_RC


:: Add necessary files
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-windowsx86.jar*
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-windowsx86*.zip
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-windowsx86-64.jar*
git add com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-windowsx86-64*.zip

:: Revert files that don't need to be override
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%-headers.zip*
git checkout com/snobot/simulator/ctre_sim_override/%RELEASE_VERSION%/ctre_sim_override-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/ctre_sim_override/maven-metadata.xml*
