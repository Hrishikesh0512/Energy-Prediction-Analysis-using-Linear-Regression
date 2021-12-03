# Energy-Prediction-Analysis-using-Linear-Regression
# Description of the Project
The "Energy20.txt" dataset is used to develop models of energy consumption of appliances in an energy-efficient home. With 671 samples, the dataset provides the Energy use of appliances (denoted as Y). It's a reworked version of the data utilised in the research. The dataset contains five variables: X1, X2, X3, X4, X5, and Y, which are stated as follows:
* X1: Temperature in kitchen area (Celcius)
* X2:Humidity in kitchen area (Percentage)
* X3:Temperature outside (from weather station in Celcius)
* X4:Humidity outside (from weather station in Percentage)
* X5:Visibility (from weather station in Kilometers)
* Y:Energy use of appliances,( in Whatts)

#Understanding the data

The general link between each of the variables X1, X2, X3, X4, X5, and the variable of interest Y was reported using scatter plots and histograms. For each variable, include 5 scatter plots, 6 histograms, and 1 or 2 words, containing the variable of interest, Y.
* Histograms
<img src='https://github.com/Hrishikesh0512/Images/blob/main/1.png'>
* Scatter Plots
<img src='https://github.com/Hrishikesh0512/Images/blob/main/2.png'>

#Data Transformaton
The Transformation method was necessary since the original data was skewed

Four of the five variables have been chosen (X2,X3,X4,X5). Appropriate transformations were applied to the four variables chosen and the variable of interest, Y, so that the values could be aggregated and the variable of interest could be predicted.
Assigned transformed data to an array, along with your transformed variable of interest (it should be 300 rows and 5 columns).saved it as "name-transformed.txt" in a text file.

#Applying Models
Used the fitting functions to learn the parameters
* A weighted arithmetic mean (WAM)
* Weighted power means (WPM) with p = 0.5, and p = 2,
* An ordered weighted averaging function (OWA), and
* A Choquet integral.

# Table showing measures and correlation coefficient
<img src='https://github.com/Hrishikesh0512/Images/blob/main/3.png'>
# Table summarising the weights/parameters
<img src='https://github.com/Hrishikesh0512/Images/blob/main/4.png'>

# Results
* The best-fitting model I found was the Choquet model, which has the lowest RMSE Value and uses a fuzzy measure to describe the function, giving it more flexibility.
* The Pearson and Spearmen co-relations are positive for the four variables I've chosen: X2(Humidity in Kitchen),X3(Temprature outside),X4(Humidity outside),X5(Visibility)
* According to the dataset, v{1} = 0.30148 & v{2} = 1 & v{3} = 1,v{4}=1,v{5}=1
Hence,v{1}+v{2} = 1.30148 = v{1,2}. Hence the variables are complimentary as 1.30148>1
v{1}+v{2}+v{3} = 1.95682 = v{1,2,3}. Hence the variables are complimentary as 1.95682 > 1
v{1}+v{2}+v{3}+v{4} = 2.785 = v{1,2,3,4},Hence the variables are complimentary as 2.78568 > 1
Hence the Relation is Complimentory 
* Orness value for the model is 0.870575865044563 leaning more towards 1,Which suggests 
that the model favours the higher inputs

#Further Analysis
* The Best fitting model I’ve got based on my variables & dataset is Choquet models,since it 
has got the lowest count for RMSE Error and Source
* The values for choquet prediction were calculated by passing appropriate weights and 
interpreted data
* After the calculation,the value that was obtained was 454.6516 which fits within the 
range of 65-785 that shows the model is accurate
* The lowest value for interpretation found was for x3,which is temperature in celcius,that 
concludes that the lowest energy consumption will be archived based on the temprature
* the values for choquet prediction were were calculated by passing the appropriate 
choquet weights and the interpreted transformed data
* The values for choquet prediction were were calculated by passing the appropriate 
choquet weights and the interpreted transformed data
* The Lowest value of interpretation which I’ve obtained was x3 which is the 
temperature,which concludes that the lowest energy consumption will be archived
based on the better temperature conditions

# Application of Linerar Regression.
*The linear model was based on the dataset

<img src='https://github.com/Hrishikesh0512/Images/blob/main/5.png'>

The residual standard error was 0.5948 on 295 degrees of freedom, according to the Summery generated using linear regression model, which determines the value for the residual error together with the square value of R. The R Square value is 0.285, indicating that the linear model is not valid because it is less than 1 (the R square number is used to determine whether or not the model used is correct).

454.6516 and 82.00933 are the values I found for the Choquet integral and linear regression models, respectively.
The linear value obtained is significantly lower than that obtained by the Choquet model, indicating that the linear model is not the best fit for the dataset and that the Choquet model produces the best results.

# The Comparision between actual dataset and the prediciton

The resemblance between real data and predictions based on choquet values supports the claim that the choquet model delivers superior results.
performance that can be seen clearly in the histogram

<img src='https://github.com/Hrishikesh0512/Images/blob/main/6.png'>




