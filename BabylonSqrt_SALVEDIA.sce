userInput = input("Enter a positive whole number ")
oldAnswer = 1
answer = 1
answerCount=0
Ea = 100
allowedError = 0
printf("         square root of %i        Ea\n",userInput)

while (Ea > allowedError)
  printf("n=%d ",answerCount)
   printf("%22.15f",answer)
  answer = (1/2)*(oldAnswer+(userInput/oldAnswer))
  Ea = abs((answer - oldAnswer)/answer)
  answerCount = answerCount+1
  oldAnswer = answer
  printf("%24.15f\n",Ea)

end
