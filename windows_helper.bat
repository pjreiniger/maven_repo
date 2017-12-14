
:: Add necessary files
git add com/snobot/simulator/snobot_sim_java/0.5/snobot_sim_java-0.5-uber_native-windows.jar*
git add com/snobot/simulator/wpilib/0.5/wpilib-0.5-wpi_native-windows.zip*
git add com/snobot/simulator/navx_sim/navx_simulator/0.5/navx_simulator-0.5.dll*
git add com/snobot/simulator/ctre_override/0.5/ctre_override-0.5-uber_native-windows.jar*

:: Revert files that don't need to be override
git checkout com/snobot/simulator/snobot_sim_java/0.5/snobot_sim_java-0.5-javadoc.jar*
git checkout com/snobot/simulator/snobot_sim_java/0.5/snobot_sim_java-0.5-sources.jar*
git checkout com/snobot/simulator/snobot_sim_java/0.5/snobot_sim_java-0.5-sources.zip*
git checkout com/snobot/simulator/snobot_sim_java/0.5/snobot_sim_java-0.5.jar*
git checkout com/snobot/simulator/snobot_sim_java/0.5/snobot_sim_java-0.5.pom*
git checkout com/snobot/simulator/snobot_sim_java/maven-metadata.xml*

git checkout com/snobot/simulator/navx_sim/navx_simulator/0.5/navx_simulator-0.5-headers.zip*
git checkout com/snobot/simulator/navx_sim/navx_simulator/0.5/navx_simulator-0.5-sources.zip*
git checkout com/snobot/simulator/navx_sim/navx_simulator/0.5/navx_simulator-0.5.pom*
git checkout com/snobot/simulator/navx_sim/navx_simulator/maven-metadata.xml*

git checkout com/snobot/simulator/ctre_override/0.5/ctre_override-0.5.jar*
git checkout com/snobot/simulator/ctre_override/0.5/ctre_override-0.5.pom*
git checkout com/snobot/simulator/ctre_override/maven-metadata.xml*

git checkout com/snobot/simulator/snobot_sim_gui
git checkout com/snobot/simulator/snobot_sim_utilites

git checkout com/snobot/simulator/wpilib/0.5/wpilib-0.5-wpi_headers.zip*
git checkout com/snobot/simulator/wpilib/0.5/wpilib-0.5.pom*
git checkout com/snobot/simulator/wpilib/maven-metadata.xml*

:: Remove unecessary files
rmdir /s /q com\snobot\simulator\snobot_sim_jni
rmdir /s /q com\snobot\simulator\snobot_sim