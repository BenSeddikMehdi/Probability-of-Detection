# Probability-of-Detection

In this repository I tried to calculate the probabilities of detection of the received signal versus several values of SNR (Signal-to-Noise Ratio) for each detection method : Matched_Filter , Cross_Correlation , Energy_Detection and Goertzel_Algorithm over MATLAB. So, enough intro !! we have a lot things of to do, thus lets dig in.

We calculate the probabilities of detection in a simple way which is : we choose a threshold := 100, and we compare the energy of the received signal with this threshold's value and we obtain either 1 or 0, In the end we plotted those values versus SNR'values.

** Goertzel Algorithm :

![image](https://user-images.githubusercontent.com/43390471/55566797-b5999780-56fc-11e9-8258-d0aeae152907.png)


We followed the same procedure for Matched_Filter's Method : 

** Matched Filter :


![image](https://user-images.githubusercontent.com/43390471/55567613-4de44c00-56fe-11e9-82e7-b1cd0233be1d.png)


** Cross Correlation : 

![image](https://user-images.githubusercontent.com/43390471/55567970-0b6f3f00-56ff-11e9-9844-68be26401e3b.png)

** Energy Detection :

![image](https://user-images.githubusercontent.com/43390471/55720685-b2a2ed80-5a01-11e9-92fd-9e88848884a9.png)
