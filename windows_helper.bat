@echo off

SET RELEASE_VERSION=2019-0.0.1-RC


:: Add necessary files
git add com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-windowsx86.jar*
git add com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-windowsx86*.zip
git add com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-windowsx86-64.jar*
git add com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-windowsx86-64*.zip
git add com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-windowsx86.jar*
git add com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-windowsx86*.zip*
git add com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-windowsx86-64*.zip*
git add com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-windowsx86-64.jar*
git add com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-windowsx86.jar*
git add com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-windowsx86*.zip
git add com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-windowsx86-64.jar*
git add com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-windowsx86-64*.zip

git add com/snobot/simulator/snobot_sim/%RELEASE_VERSION%/snobot_sim-%RELEASE_VERSION%-windowsx86*.zip*
git add com/snobot/simulator/snobot_sim/%RELEASE_VERSION%/snobot_sim-%RELEASE_VERSION%-windowsx86-64*.zip

:: Revert files that don't need to be override
git checkout com/snobot/simulator/wpilib

git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/snobot_sim_java/%RELEASE_VERSION%/snobot_sim_java-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/snobot_sim_java/maven-metadata.xml*
git checkout com/snobot/simulator/snobot_sim_java/maven-metadata-local.xml*

git checkout com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-headers.zip*
git checkout com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/navx_simulator/%RELEASE_VERSION%/navx_simulator-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/navx_simulator/maven-metadata.xml*
git checkout com/snobot/simulator/navx_simulator/maven-metadata-local.xml*

git checkout com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%-headers.zip*
git checkout com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/adx_family/%RELEASE_VERSION%/adx_family-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/adx_family/maven-metadata.xml*
git checkout com/snobot/simulator/adx_family/maven-metadata-local.xml*

git checkout com/snobot/simulator/snobot_sim/%RELEASE_VERSION%/snobot_sim-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/snobot_sim/%RELEASE_VERSION%/snobot_sim-%RELEASE_VERSION%-headers.zip*
git checkout com/snobot/simulator/snobot_sim/%RELEASE_VERSION%/snobot_sim-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/snobot_sim/maven-metadata.xml*
git checkout com/snobot/simulator/snobot_sim/maven-metadata-local.xml*

git checkout com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-javadoc.jar*
git checkout com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-sources.jar*
git checkout com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-sources.zip*
git checkout com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%-headers.zip*
git checkout com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%.jar*
git checkout com/snobot/simulator/snobot_sim_jni/%RELEASE_VERSION%/snobot_sim_jni-%RELEASE_VERSION%.pom*
git checkout com/snobot/simulator/snobot_sim_jni/maven-metadata.xml*
git checkout com/snobot/simulator/snobot_sim_jni/maven-metadata-local.xml*

git checkout com/snobot/simulator/snobot_sim_gui
git checkout com/snobot/simulator/snobot_sim_utilities

:::: Remove unecessary files
::rmdir /s /q com\snobot\simulator\snobot_sim_jni
::rmdir /s /q com\snobot\simulator\snobot_sim