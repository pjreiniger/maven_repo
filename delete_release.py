import os
import shutil


release_to_delete = "dev-2019-0.0.0"

for root, dirs, _ in os.walk("."):
    
    for d in dirs:
        if d == release_to_delete:
            full_dir = os.path.join(root, d)
            shutil.rmtree(full_dir)
            print d