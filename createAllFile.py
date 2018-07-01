
import os
import zipfile


def createAll(root_path, library_name, version):
    temp_build_dir = "build/" + library_name
    rootdir = os.path.abspath(".")
    library_path = os.path.join(rootdir, root_path, library_name, version)
    
    natives = []
    natives.append(os.path.join(library_path, library_name + "-" + version + "-linux-x86-64.jar"))
    natives.append(os.path.join(library_path, library_name + "-" + version + "-os x-x86-64.jar"))
    natives.append(os.path.join(library_path, library_name + "-" + version + "-windows-x86.jar"))
    natives.append(os.path.join(library_path, library_name + "-" + version + "-windows-x86-64.jar"))
        
    for native in natives:
        zip_ref = zipfile.ZipFile(native, 'r')
        zip_ref.extractall(temp_build_dir)
        zip_ref.close()
        
    
    # ziph is zipfile handle
    ziph = zipfile.ZipFile(library_path + "/" + library_name + "-" + version + "-native-all.jar", 'w', zipfile.ZIP_DEFLATED)
    for root, dirs, files in os.walk(temp_build_dir):
        for file in files:
            full_path = os.path.join(root, file)
            zip_path = full_path[len(temp_build_dir)+len(os.sep):] #XXX: relative path
            print full_path, zip_path
            ziph.write(full_path, zip_path)

    pass

is_simulator = True

if is_simulator:
    version = "2018-1.0.0"
    createAll("com/snobot/simulator", "navx_simulator", version)
    createAll("com/snobot/simulator", "adx_family", version)
    createAll("com/snobot/simulator", "temp_hal_interface", version)
else:
    createAll("com/snobot/simulator", "ctre_sim_override", "V0_5.3.1.0")
