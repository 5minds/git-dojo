#!/bin/sh

# This creates the patches against master
git format-patch master --stdout > one-big.patch

# Now remove all lines you do not want to have.
# Find an example in diff_of_the_patches.txt and 0001-sparkles-Add-the-two-Sample-Files.patch.
#
# In this example we want to add the file 'take_this.txt' and do not want to
# take the file 'ommit_this.txt'.

# Checkout master
git checkout master

# 4. Apply Patch in this case final_patch.patch
git am final_patch.patch

# 5. QED.
