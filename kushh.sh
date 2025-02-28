#!/bin/bash

# Navigate to the repository
cd yahdikush/android_kernel_common-5.10 || { echo "Failed to navigate to repository"; exit 1; }

# Delete the directory
if rm -rf drivers/staging/kernelsu; then
  echo "Successfully deleted kernelsu directory"
else
  echo "Failed to delete kernelsu directory"
  exit 1
fi

# Stage the changes
if git add .; then
  echo "Successfully staged changes"
else
  echo "Failed to stage changes"
  exit 1
fi

# Commit the changes
if git commit -m "Remove unused kernelsu directory"; then
  echo "Successfully committed changes"
else
  echo "Failed to commit changes"
  exit 1
fi

# Push the changes to the remote repository
if git push origin custom-5.10; then
  echo "Successfully pushed changes"
else
  echo "Failed to push changes"
  exit 1
fi
