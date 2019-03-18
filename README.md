# Face-Recognition-System-using-PCA
Face Recognition System, developed in MATLAB, to detect and recognize faces based on Principal Component Analysis (PCA) and Computer Vision.

***important instructions:

1) Before running this code, copy all the folders from "Training_dataset" and place/paste them alongwith the code files.(otherwise, this will not work!!)
2) Now Run the Code i.e. gui file with MATLAB
3) Press button "UPLOAD IMAGE"
4) Select any image from "Test_dataset_1" (for high accuracy)
5) Press button "PREPROCESSING" (Do not check "Face Detect" checkbox!!)
6) Press button "START SEARCH"

**Note: "Test_dataset_2" can also be used at step-4. But it does not show good accuracy results because this code is developed just for preprocessed image, not for all. Moreover, you need to check "Face Detect" checkbox for "Test_dataset_2" before step-5. It is an extra dataset created manually from google images.

Also note that, the experiment gives false results if test subject is not included in training data or face is blur or not clear in given picture as it calculates maximum similar eigon values.

**RESULTS:
It gives almost 85% accuracy on Dataset1, but gives 40-60% accuracy Dataset2. 

*For more Details, read the "Methodology" document attached with this!!!
