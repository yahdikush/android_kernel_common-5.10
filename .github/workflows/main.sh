# Navigate to the repository
cd yahdikush/android_kernel_common-5.10

# Delete the directory
rm -rf drivers/staging/kernelsu

# Stage the changes
git add .

# Commit the changes
git commit -m "Delete kernelsu directory"

# Push the changes to the remote repository
git push origin custom-5.10
