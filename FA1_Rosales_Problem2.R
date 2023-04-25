print("PROBLEM #2")


#------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------

females = c(57, 59, 78, 79, 60, 65, 68, 71, 75, 48, 51, 55, 56, 41, 43,
            44, 75, 78, 80, 81, 83, 83, 85)

males =c ( 48, 49, 49, 30, 30, 31, 32, 35, 37, 41, 86, 42, 51, 53, 56,
           42, 44, 50, 51, 65, 67, 51, 56, 58, 64, 64, 75)
#------------------------------------------------------------------------------------------------------------
# (a) How do stem-and-leaf gives greater advantage than histogram?
print ("Compared to Histogram, we can have a bigger advantage of using stem-and-leaf as we can see the interval 
precisely and datas were orderly organized Because whenever we use histogram, there may be misinterpretation happen
as we only based on the BAR of the chart.")


print ("Female Leaf-Stem")
females_stem <- stem(females, scale = 1)

print ("Males Leaf-Stem")
males_stem <- stem(males, scale = 1)
#COMPARING FEMALE AND MALES using stem-and-leaf 
print ("AS WE OBSERVE THE stem-and-leaf DATA OF FEMALE & MALES, WE CAN EASILY SEE THAT THE DISTRIBUTION OF FEMALES 
       IN THE DATA WHERE LINE OF 7 AND 8 IS UNDENIABLY LARGE COMPARED TO THE MALES DATA. THUS WE CAN SAY BY 
       stem-and-leaf THAT FEMALES ACCUMULATE HIGHER GRADES THAN MALES")
#------------------------------------------------------------------------------------------------------------
par(mfrow = c(2,2),bg = "#ccccff")
#Female Box-Plot
boxplot(females,
        xlab = "Females " ,main = "Females Boxplot", font.main = 1, col= "pink" )
#Males Box-Plot
boxplot(males,
        xlab = "Males",main = "Males Boxplot", font.main = 1, col= "blue")


#------------------------------------------------------------------------------------------------------------

#Evaluating where 23 are females and 27 males, in a vector.
Gender= c("f","f","f","f","f","f","f","f","f","f","f","f","f","f","f",
          "f","f","f","f","f","f","f","f","m","m","m","m","m","m","m","m"
          ,"m","m","m","m","m","m","m","m","m","m","m","m","m","m","m","m"
          ,"m","m","m")

#union of vectors of Female and Males
mf_gender= c(57, 59, 78, 79, 60, 65, 68, 71, 75, 48, 51, 55, 56, 41, 43,44, 75, 78, 80, 81, 83, 83, 85,48, 49,
             49, 30, 30, 31, 32,35, 37, 41, 86, 42, 51, 53, 56,42, 44, 50, 51, 65, 67, 51, 56, 58, 64, 64, 75)


#Comparison of Box-plot
Gender <- factor(Gender, levels = c("f", "m"),
                 labels = c("Female", "Male"))

boxplot(mf_gender~Gender, ylab = "Marks (%)",
        main = "Female & Male Comparison", font.main = 1,col = c("pink", "blue"))


print ("AS WE OBSERVE THE BAR DATA OF FEMALE IS PLACED HIGHER THAN THE DATA MARKS OF THE 27 MALES. THUS, WE CAN
       SAY BY THE BOXPLOT THAT FEMALE ACCUMULATE HIGHER AVERAGE OF GRADES THAN MALES.")


#------------------------------------------------------------------------------------------------------------

