
R version 3.1.1 (2014-07-10) -- "Sock it to Me"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin13.1.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.65 (6784) x86_64-apple-darwin13.1.0]

[Workspace restored from /Users/JimmyBowles/.RData]
[History restored from /Users/JimmyBowles/.Rapp.history]

> setwd("/Users/JimmyBowles/Documents")
> dir(0)
Error in dir(0) : invalid 'path' argument
> dir()
 [1] "Beyond cheesecake and the meaning of it all.docx" "Drunkard's Walk All 8 Chapters.docx"             
 [3] "GECON book quiz 1.docx"                           "GECON200_BookQuiz2.docx"                         
 [5] "GGEOL editorial.docx"                             "GGEOL extra credit.docx"                         
 [7] "GHIST225 OpEd.docx"                               "IA261oralpres1.ppt"                              
 [9] "Microsoft User Data"                              "R"                                               
[11] "threatassessment proposal.docx"                   "threatassessment proposal1.docx"                 
[13] "writtenUkraineBrief.docx"                        
> setwd("/Users/JimmyBowles/Documents/R")
> dir()
 [1] "accusitionexamples.txt"     "cars.csv"                   "data-accusition"            "firstprogram"              
 [5] "hello.R"                    "imaging.r"                  "qtrly-reports.csv"          "shadenorm.R"               
 [9] "Skiing or Snowboarding.csv" "skiorsnowboard1.txt"        "skiorsnowboardanalysis.txt" "snowsportanalysis.txt"     
[13] "weather-underground"        "weatherAPI.R"              
> data <- read.csv("Skiing or Snowboarding.csv")
> m.data <- as.matrix(data)
> str(data)
'data.frame':	22 obs. of  2 variables:
 $ Timestamp                       : Factor w/ 22 levels "9/10/2014 13:52:28",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ Do.you.like.to.ski.or.snowboard.: Factor w/ 3 levels "Neither","Ski",..: 1 3 3 3 2 2 3 2 3 2 ...
> m.data[m.data == "Neither"] <- 0
> m.data[m.data == "Ski"] <- 1
> m.data[m.data == "Snowboard"] <- 2
> m.data2 < apply(m.data, c(1,2), function(x) as.integer(x) )
Error: object 'm.data2' not found
> m.data2 <- apply(m.data, c(1,2), function(x) as.integer(x) )
There were 22 warnings (use warnings() to see them)
> nr <- dim(m.data2)[1]
> nc <- dim(m.data2)[2]
> nr
[1] 22
> nc
[1] 2
2014-09-30 11:27:17.684 R[2262:707] *** WARNING: Method convertPointFromBase: in class NSView is deprecated on 10.7 and later. It should not be used in new applications. 
> image(x=1:nr, y=1:(nc-2), z=m.data2[,3:nc], axes=FALSE, frame.plot=TRUE, col=c("white","black"), main="Document Submission Status", xlab=NA, ylab=NA)
Error in image.default(x = 1:nr, y = 1:(nc - 2), z = m.data2[, 3:nc],  : 
  increasing 'x' and 'y' values expected
> image(x=1:nr, y=1:(nc), z=m.data2[,3:nc], axes=FALSE, frame.plot=TRUE, col=c("white","black"), main="Document Submission Status", xlab=NA, ylab=NA)
Error in m.data2[, 3:nc] : subscript out of bounds
> image(x=1:nr, y=1:(nc-1), z=m.data2[,2:nc], axes=FALSE, frame.plot=TRUE, col=c("white","black"), main="Document Submission Status", xlab=NA, ylab=NA)
Error in image.default(x = 1:nr, y = 1:(nc - 1), z = m.data2[, 2:nc],  : 
  'z' must be a matrix
> image(x=1:nr, y=1:(nc-1), z=m.data2[,2:nc], axes=FALSE, frame.plot=TRUE, col=c("white","black","red"), main="Skiing or Snowboarding", xlab=NA, ylab=NA)
Error in image.default(x = 1:nr, y = 1:(nc - 1), z = m.data2[, 2:nc],  : 
  'z' must be a matrix
> m.data
      Timestamp            Do.you.like.to.ski.or.snowboard.
 [1,] "9/10/2014 13:52:28" "0"                             
 [2,] "9/10/2014 13:55:33" "2"                             
 [3,] "9/10/2014 13:56:06" "2"                             
 [4,] "9/10/2014 14:00:46" "2"                             
 [5,] "9/10/2014 14:10:48" "1"                             
 [6,] "9/10/2014 15:24:45" "1"                             
 [7,] "9/10/2014 15:47:13" "2"                             
 [8,] "9/10/2014 16:35:11" "1"                             
 [9,] "9/10/2014 18:12:48" "2"                             
[10,] "9/10/2014 18:47:24" "1"                             
[11,] "9/10/2014 18:53:23" "2"                             
[12,] "9/10/2014 19:20:50" "0"                             
[13,] "9/10/2014 19:31:42" "1"                             
[14,] "9/10/2014 19:58:45" "2"                             
[15,] "9/10/2014 20:13:18" "2"                             
[16,] "9/10/2014 21:19:23" "0"                             
[17,] "9/10/2014 22:10:21" "1"                             
[18,] "9/10/2014 23:08:40" "0"                             
[19,] "9/10/2014 23:47:49" "1"                             
[20,] "9/11/2014 8:24:01"  "1"                             
[21,] "9/11/2014 11:05:19" "1"                             
[22,] "9/11/2014 11:13:37" "2"                             
> m.data2
      Timestamp Do.you.like.to.ski.or.snowboard.
 [1,]        NA                                0
 [2,]        NA                                2
 [3,]        NA                                2
 [4,]        NA                                2
 [5,]        NA                                1
 [6,]        NA                                1
 [7,]        NA                                2
 [8,]        NA                                1
 [9,]        NA                                2
[10,]        NA                                1
[11,]        NA                                2
[12,]        NA                                0
[13,]        NA                                1
[14,]        NA                                2
[15,]        NA                                2
[16,]        NA                                0
[17,]        NA                                1
[18,]        NA                                0
[19,]        NA                                1
[20,]        NA                                1
[21,]        NA                                1
[22,]        NA                                2
> str(m.data2)
 int [1:22, 1:2] NA NA NA NA NA NA NA NA NA NA ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr [1:2] "Timestamp" "Do.you.like.to.ski.or.snowboard."
> m.data2[,2:nc]
 [1] 0 2 2 2 1 1 2 1 2 1 2 0 1 2 2 0 1 0 1 1 1 2
> image(x=1:nr, y=1:(nc-1), z=as.matrix(m.data2[,2:nc]), axes=FALSE, frame.plot=TRUE, col=c("white","black","red"), main="Skiing or Snowboarding", xlab=NA, ylab=NA)
> axis(1, 1:nr, labels=data$Do.you.like.to.ski.or.snowboard.)
> axis(1, 1:nr, labels=data$Do.you.like.to.ski.or.snowboard., las=2)
> image(x=1:nr, y=1:(nc-1), z=as.matrix(m.data2[,2:nc]), axes=FALSE, frame.plot=TRUE, col=c("white","black","red"), main="Skiing or Snowboarding", xlab=NA, ylab=NA)
> axis(1, 1:nr, labels=data$Do.you.like.to.ski.or.snowboard., las=2)
> 