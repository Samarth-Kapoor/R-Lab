#Write an R function for computing conditional probability. Call this function to do
#the following problem:
#suppose the probability of the weather being cloudy is 40%. Also suppose the prob-
#ability of rain on a given day is 20% and that the probability of clouds on a rainy day
#is 85%. If it’s cloudy outside on a given day, what is the probability that it will rain that day?

bayesTheorem<-function(A,B,BgivenA){
  numerator<-BgivenA*A
  AgivenB<-numerator/B
  return(AgivenB)
}

cloudy <- 0.40
rainy <- 0.20
cloudyGivenRainy <- 0.85
rainyGivenCloudy<-bayesTheorem(rainy,cloudy,cloudyGivenRainy)
cat(rainyGivenCloudy)