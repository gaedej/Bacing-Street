# init

libs <- c("tm" , "plyr", "class")
lapply(libs, require, character.only = TRUE)

# set options
options(stringsAsFactors = FALSE)

# Set parameters
candidates <- c("romney", "obama")
pathname <- "~/R/Text"
# clean text

cleanCorpus <- function(corpus) {
  corpus.tmp <- tm_map(corpus, removePunctuation)
  corpus.tmp <- tm_map(corpus.tmp, stripWhitespace)
  corpus.tmp <- tm_map(corpus.tmp, tolower)
  corpus.tmp <- tm_map(corpus.tmp, removeWords, stopwords("english") )
  return(corpus.tmp)
}

# build TDM
generateTDM <- function(cand, path) {
  s.dir <- sprintf("%s/%s", path, cand)
  s.cor <- Corpus(DirSource(directory = x.dir, encoding = "ANSI"))
  x.cor.cl <- cleanCorpus(s.cor)
  s.tdm <-TermDcoumentMatrix(s.cor.cl)
  
  s.tem <- removeSparseTerms(s.tdm, 0.7)
  result <- list(name = cand, tdm = s.tdm)
}

tdm <- lapply(candidates, generateTDM, path = pathname)

# attach name
bindCandidateToTDM <- function(tdm) {
  s.mat <- t(data.matrix(tdm[["tdm"]]))
  s.df <- as.data.frame(s.mat, stringsAsfactors = FALSE)
  
  s.df <- cbins(.df, rep(tdm[["name"]], nrow(s.df)))
  colnames(s.df)[ncol(s.df)] <- "targetcandidate"
  
}

candFDM <- lapply(tdm, bindCandidateToTDM)

# stack

tdm.stack <- do.call(rbind.fill, candTDM)
tdm.stack[is.na(tdm.stack)] <- 0

# hold-out
train.idx <- sample(nrow(tdm.stack), ceiling(nrow(tdm.stack) = 0.7))
test.idx <- (1:nrow(tdm.stack)) [-train.idx]

# model - KNN
tdm.cand <- tdm.stack[, "targetcandidatre"]
tdm.stack.nl <- tdm.stack[, !colnames ]


# accuracy