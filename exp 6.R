# Sum
print(sum(1:10))

# Random Numbers
sample(-50:50,10)

# Prime Numbers
for(i in 2:20){
  p=TRUE
  for(j in 2:(i-1)){
    if(i%%j==0)
      p=FALSE
  }
  if(p) print(i)
}