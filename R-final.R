data <- read.csv(file="C:/Users/fuses/Downloads/institution_data_R.csv",header = TRUE)
head(data)

install.packages("tidyverse")
install.packages("gcookbook")
install.packages("MASS")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("usethis")

library(ggplot2)
library(dplyr)
library(usethis)
use_git_config(user.name = "KevinLetourneau", user.email = "kevin.letourneau@outlook.com")



grad <- ggplot(data = data, aes(x=grad_rate)) +
               geom_histogram(binwidth = 0.025, bins = 20, fill = "blue", color = "orange")+
               labs(x="Graduation Rate")+
               theme_light()

grad

endow <- ggplot(data = data, aes(x=endow_value)) +
                geom_histogram(bins = 50, fill = "blue", color = "orange")+
                labs(x="Endowment Value")+
                xlim(0,40000)+
                theme_light()

endow

student <- ggplot(data = data, aes(x=student_count)) +
                  geom_histogram(bins = 20, fill = "blue", color = "orange")+
                  labs(x="Student Count")+
                  theme_light()

student

spending <- ggplot(data = data, aes(x=spending_per_award)) +
                   geom_histogram(bins = 25, fill = "blue", color = "orange")+
                   labs(x="Spending Per Award")+
                   theme_light()

spending

fullpct <- ggplot(data = data, aes(x=full_time_pct)) +
                  geom_histogram(bins = 20, fill = "blue", color = "orange")+
                  labs(x="Fulltime Student Percentage")+
                  theme_light()

fullpct

fullcount <- ggplot(data = data, aes(x=full_time_count)) +
                    geom_histogram(bins = 20, fill = "blue", color = "orange")+
                    labs(x="Fulltime Student Count")+
                    theme_light()

fullcount

medsat <- ggplot(data = data, aes(x=med_sat_value)) +
                 geom_histogram(bins = 20, fill = "blue", color = "orange")+
                 labs(x="Median SAT Score")+
                 theme_light()

medsat

aid <- ggplot(data = data, aes(x=aid_value)) +
              geom_histogram(bins = 30, fill = "blue", color = "orange")+
              labs(x="Aid Value")+
              theme_light()

aid

gradtime <- ggplot(data = data, aes(x=grad_on_time_pct)) +
                   geom_histogram(bins = 20, fill = "blue", color = "orange")+
                   labs(x="Graduating on Time")+
                   theme_light()

gradtime

pell <- ggplot(data = data, aes(x=pell_value)) +
               geom_histogram(bins = 20, fill = "blue", color = "orange")+
               labs(x="Pell Value")+
               theme_light()

pell

fresh <- ggplot(data = data, aes(x=fresh_retain_value)) +
                geom_histogram(binwidth = 0.025, fill = "blue", color = "orange")+
                labs(x="Freshman Retainment")+
                theme_light()

fresh

fullfac <- ggplot(data = data, aes(x=full_time_fac_pct)) +
                  geom_histogram(bins = 20, fill = "blue", color = "orange")+
                  labs(x="Full Time Faculty")+
                  theme_light()

fullfac

endowspend <- ggplot(data = data, aes(x=EndowXSpend)) +
                     geom_histogram(bins = 50, fill = "blue", color = "orange")+
                     xlim(0,1000000000)+
                     theme_light()

endowspend

pellsat <- ggplot(data = data, aes(x=PellXSat)) +
                  geom_histogram(bins = 20, fill = "blue", color = "orange")+
                  theme_light()

pellsat

retainsat <- ggplot(data = data, aes(x=RetainXSat)) +
                    geom_histogram(bins = 20, fill = "blue", color = "orange")+
                    theme_light()

retainsat 

aidsat <- ggplot(data = data, aes(x=AidXSat)) +
                 geom_histogram(bins = 20, fill = "blue", color = "orange")+
                 theme_light()

aidsat

aidendow <- ggplot(data = data, aes(x=AidXEndow)) +
                   geom_histogram(bins = 50, fill = "blue", color = "orange")+
                   xlim(0,100000000)+
                   theme_light()

aidendow