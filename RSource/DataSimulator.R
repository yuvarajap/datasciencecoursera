#Used to simluate data for accounts defaults

#Define Constants
loan_tenure <- 36
no_of_accounts <-100
bk1_default_per=8
bk2_default_per=12
bk3_default_per=8
bk4_default_per=4
str_month <- "MN"
str_account<-"AC"
#create Months list
nm<-NULL
nm<-1:loan_tenure
#Create Account Name
account_names<-NULL
account_names<-paste(str_account, seq(1:no_of_accounts), sep="")
month_names<-NULL
month_names<-paste(str_month, seq(1:loan_tenure), sep="")
# Create 2 dimension
xdm<-NULL
xdm<-matrix(nrow = no_of_accounts, ncol=loan_tenure, dimnames = list(account_names, month_names))
# define buckets range samples of paymentDoneTrue
bx<-loan_tenure/3
bucket1<-seq(1,bx)
bucket2<-seq(bx+1,2*bx)
bucket3<-seq(2*bx+1,3*bx)
bucket4<-seq(3*bx+1,4*bx)
# Simulate defaulters
b1<-NULL
b1<-sample (c(1,0), no_of_accounts, replace=T, prob=c((1-bk1_default_per/100),bk1_default_per/100))
# Print number of defaulters in b1
cat("Number of Defaultes in b1:",length(which(b1 == 0)))
#Set values to data for first b1
xdm[]<-0
length(b1)
xdm[,1:bx]<-b1
length(which(xdm[,13]==1))
#Set 8% of defaults in bucket 1
b2<-NULL
b2<-sample (c(1,0), no_of_accounts, replace=T, prob=c((1-bk2_default_per/100),bk2_default_per/100))
cat("Number of Defaultes in b1:",length(which(b2 == 0)))
xdm[,(bx+1):(2*bx)]<-b2
length(which(xdm[,15]==1))
b3<-NULL
b3<-sample (c(1,0), no_of_accounts, replace=T, prob=c((1-bk3_default_per/100),bk3_default_per/100))
cat("Number of Defaultes in b3:",length(which(b3 == 0)))
xdm[,(2*bx+1):(3*bx)]<-b3