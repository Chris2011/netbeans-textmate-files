# R Program to find the multiplicationtable (from 1 to 10)
# take input from the user
num = as.integer(readline(prompt = "Enter a number: "))
# use for loop to iterate 10 times
for(i in 1:10) {
print(paste(num,'x', i, '=', num*i))
}
