

# You must set wd so that this text file "PercentCellDeath.txt is in it. 
# 1) Make a text file with some data and make a scatter plot with a trend line. 
# Must have ggplot package loaded. 
celldeath<- read.delim("PercentCellDeath.txt")
head(celldeath)
a=ggplot(data=celldeath, aes(x = Concentration.of.Peptide, y=Optical.Density..450.nm.))+
  geom_point()+
  xlab("Concentration of Peptide (uM)")+
  ylab("Cell Death (%)")+
  stat_smooth(method="lm")
a

# 2)

data = read.csv("data.txt")
head(data)
b=ggplot(data=data, aes(x=region, y=observations))+
  stat_summary(geom = "bar", fun.y = "mean", fill = "grey70")+
  stat_summary(geom = "errorbar", fun.data = "mean_se", width = 0.3)
b

c=ggplot(data=data, aes(x=region, y=observations))+
  geom_point(alpha=0.1)
c

d=ggplot(data=data, aes(x=region, y=observations))+
  geom_jitter()
d

# The bar graph tells us that the average observations a all similar. Which may lead us to believe that 
# there is no difference between the regions. However with the scatter plot we can see that the 
# oberservtaions in  eastern and northern regions have normality with eastern having a greater st. dev
# the south region has a bimodal distribution and oberservations in the western region were evenly 
# distrubuted between 0 and 30. 

# They two graphs tell different stories because a scatter plot gives you more information about 
# each discrete observation while a bar graph summarizes the data into one value.

