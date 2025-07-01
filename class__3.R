print("welcome to the class-3")
##Index starts from 1
#Data structure class 3
x1<-c(10,15,20,21,24,13,20,19)
is.vector(x1)
is.data.frame(x1)
set.seed(123)
x2<-sample(1:100,10)
x3<-runif(10)
print(x2);
print(x3)
sample(1:10,8,replace = TRUE)
x3<-runif(10)
x3
sample(c("Apple","Banana","Mango","Lichi"),
        size=2,
        prob=c(0.5,0.5,0.0,0.0),
       replace = TRUE)

set.seed(42)
table(sample(1:10,8,replace = TRUE))
x3<runif(10)*10
x3
x4<-seq(from=1,to=10,by=2)
x4


income=c(10000,250000,30000,35000)
household=c(10,5,2,4);
sample(income,size=2,prob = household);
household/sum(household)
set.seed(0);
x3<-runif(10)*10;
x3
##Sequence generator
x4<-seq(from=1,to=11,by=2)
x4
x5<-seq(from=1,to=10,length.out=5)
x5
x6<-10:1
x6
help(runif)
x6<-seq(from=1,to=11,length.out=20);
x6
x7<-seq(from=1,to=12,length.out=21);
x7

x8<-seq(from=1,to=13,length.out=22);
x8
x8>19
x1 <- c(10, 15, 20, 21, 19, 12, 25, 11)
x2 <- x1

# Subsetting
x1[c(FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)]
x1[c(3,4,5,7)]
x1[x1 > 19]
x1[x1 > 14 & x1 < 20]

# Replace using replace()
x1 <- replace(x1, x2 > 19, 25)

# Replace using indexing (correct version)
x1[x1 > 19] <- 25

x1[x1>14 & x1<20]
which(x1>14 &x1<20)
x1[which (x1>14 & x1<20)]

##replace
# Original data
x1 <- c(10, 15, 20, 21, 19, 12, 25, 11)

# View values greater than 19
x1[x1 > 19]

# Replace values greater than 19 with 0 and update x1
x1 <- replace(x1, which(x1 > 19), 0)

# Check x1 after replacement
x1
x2<-replace(x1,which(x1>19),NA)
mean(x2,na.rm =TRUE)
#################################
mat1[,]
mat1[1,]
x1[x1==0]<-15
x1

###################################
mat1<-matrix(c(1,2,3,4,5),
             ncol=2,
             nrow = 2,
             byrow =TRUE)
mat1[,]
mat1[1,]
mat1[,2]
mat1[1,2]
mat1
##########################################
##2*3(row=2,col=3)
#4*4(row=4,c=4)
#3*2(row=3,col=2)


mat2<-matrix(c(0,5,6,7),byrow = TRUE)
mat3<-matrix(c(9,8,1,3,5,7),3,byrow = TRUE)
print(mat3)
mat1 %% mat2
mat1 %% mat3


# Define matrices
mat1 <- matrix(c(10, 20, 30, 40), nrow = 2)
mat2 <- matrix(c(3, 5, 7, 6), nrow = 2)
mat3 <- matrix(c(2, 4, 6, 8), nrow = 2)

# Modulo operations

m_1<-matrix(c(1,2,3))
m_2<-matrix(c(4,5,6))
dim(m_1 %% m_2)


##Array-----------------------------------------------
arr1<-array(c(1:12),c(2,3,2))
arr1

##DataFrame--------------------------------------
df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, 19),
  gender = c("F", "M", "F"),
  stringsAsFactors = TRUE
)

is.data.frame(df1)
summary(df1)
print(is.data.frame(df1))
##subsetting

##Data-Type
is.character(c("F","M","F","F"))
is.factor(as.factor(c("F","M","F","F")))
is.numeric(as.factor(c("F","M","F","F")))


