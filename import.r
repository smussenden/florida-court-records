library(tidyverse)
library(data.table)

u<- read_csv("data/20200129_Howard_Center_Mussenden.csv", n_max = 2, skip = 20,
             col_types = cols(
               Message_Type = col_character(),
               Off_Tran_No = col_character(),
               Court_Docket_No = col_character(),
               Sequence_No = col_character(),
               No_of_Counts = col_character(),
               Court_Designator = col_character(),
               County = col_character(),
               Arrest_Name = col_character(),
               Final_name = col_character(),
               Sex = col_character(),
               Race = col_character(),
               birth_date = col_character(),
               Init_Arrest_Dt = col_character(),
               Clerk_Dt = col_character(),
               Offense_Dt = col_character(),
               Capias_Dt = col_character(),
               Rearrest_Dt = col_character(),
               In_Charge_Status = col_character(),
               Charge_Level = col_character(),
               Charge_Degree = col_character(),
               in_FLST_Chap = col_character(),
               in_FLST_Sect = col_character(),
               in_FLST_Subsect = col_character(),
               Drug_Type = col_character(),
               Bond_Hearing_Dt = col_character(),
               Adv_Prelim_Hear_Dt = col_character(),
               pr_Charge_Status = col_character(),
               pr_Charge_Level = col_character(),
               pr_Charge_Degree = col_character(),
               pr_Gen_Off_Char = col_character(),
               pr_FLST_Chap = col_character(),
               pr_FLST_Sect = col_character(),
               pr_FLST_Subsect = col_character(),
               pr_Filing_Dt = col_character(),
               pr_Final_Decision_Dt = col_character(),
               pr_Final_Action = col_character(),
               pr_Counsel_Type = col_character(),
               ct_Charge_Status = col_character(),
               ct_Charge_Level = col_character(),
               ct_Charge_Degree = col_character(),
               ct_Gen_Off_Char = col_character(),
               ct_FLST_Chap = col_character(),
               ct_FLST_Sect = col_character(),
               ct_FLST_Subsect = col_character(),
               ct_Drug_Type = col_character(),
               ct_Decision_Dt = col_character(),
               ct_Action_Taken = col_character(),
               ct_Trial_Type = col_character(),
               ct_Final_Plea = col_character(),
               st_Imposed_Dt = col_character(),
               st_Confine = col_character(),
               st_Confine_Type = col_character(),
               st_Confine_Len_Susp = col_character(),
               st_Credit_Time = col_character(),
               st_Prob_Len = col_character(),
               st_Comm_Len = col_character(),
               st_Fine = col_character(),
               st_Court_Cost = col_character(),
               st_Restitution = col_character(),
               st_Sent_Prov = col_character(),
               st_Sp_Sent_Prov = col_character(),
               pst_Ch_Reopen_Dt = col_character(),
               pst_Ch_Reopen_Reason = col_character(),
               pst_Ch_Reopen_Closed_Dt = col_character(),
               pst_Appeal_Notice_Dt = col_character()
             ))

u<- read_csv("data/florida_9_rows.csv")

# Go to terminal. Make sure you have pip installed
pip install csvkit 

# cd into folder with data 
cd Desktop/florida-court-records

# unzip the data 
unzip 20200129_Howard_Center_Mussenden.zip 

# Rename the file 
No idea how to do this in terminal, so I did it through visual folder. 

# Check the encoding 
file florida.txt
florida.txt: Little-endian UTF-16 Unicode text, with very long lines, with CRLF line terminators

# Fuck off UTF-16 Convert to UTF-8 by telling csvkit csvclean function that it's utf-16.  By default it converts it to UTF-8
csvclean -e "UTF-16" florida.txt

# It produces an output file called florida_out.csv
I can read this in using data.table fread() or 

y <- fread("data/florida_out.csv", nrows=10)


jourwk3100f-01m:data smussend$ csvcut -n florida.txt -e "UTF-16"


opened up terminal, found out it:
  Little-endian UTF-16 Unicode text, with very long lines, with CRLF line terminators