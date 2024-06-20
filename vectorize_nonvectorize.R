#A = [-3.2 0 0.1 2.4 7.5;
# 0.27 -4.3 -0.03 -0.07 0;
#-9 0 6.2 -1 -1.2]

#For the matrix A; write an R script, which
#create the A matrix
vector_A = c(-3.2, 0, 0.1, 2.4, 7.5,
             0.27, -4.3, -0.03, -0.07, 0,
             -9, 0, 6.2, -1, -1.2)

A = matrix(vector_A, nrow = 3, ncol = 5, byrow = TRUE)

#vectorized version

#a) counts the number of positive elements in matrix A.
positive.counts.A = length(A[which(A > 0)])
positive.counts.A

#b) gets the absolute value of each element in A if the value is smaller than -0.5.
abs.values = abs(A[which(A < -0.5)])
abs.values

#c) Replaces all zeros in A with -10.
A[which(A == 0)] = -10
A

#non-vectorized version
# a) counts the number of positive elements in matrix A.

vector_A = c(-3.2, 0, 0.1, 2.4, 7.5,
             0.27, -4.3, -0.03, -0.07, 0,
             -9, 0, 6.2, -1, -1.2)

A_nonvectorized_matrix = matrix(vector_A, nrow = 3, ncol = 5, byrow = TRUE)

positive.count.nonvec = 0

for (i in 1:nrow(A_nonvectorized_matrix)) {
  for (j in 1:ncol(A_nonvectorized_matrix)) {
    if (A_nonvectorized_matrix[i, j] > 0) {
      positive.count.nonvec = positive.count.nonvec + 1
    }
  }
}
positive.count.nonvec

#Get the dimensions of the matrix
nrows <- nrow(A_nonvectorized_matrix)
ncols <- ncol(A_nonvectorized_matrix)

#Create a temporary vector abs.values.nonvec initialized with zeros
abs.values.nonvec <- numeric(0)

#Check each element of the matrix
for (i in 1:nrows) {
  for (j in 1:ncols) {
    # If the element is less than -0.5, take its absolute value
    if (A_nonvectorized_matrix[i, j] < -0.5) {
      abs.values.nonvec <- c(abs.values.nonvec, abs(A_nonvectorized_matrix[i, j]))
    }
  }
}

print(abs.values.nonvec)

# c) Replaces all zeros in A with -10.
for (i in 1:nrow(A_nonvectorized_matrix)) {
  for (j in 1:ncol(A_nonvectorized_matrix)) {
    if (A_nonvectorized_matrix[i, j] == 0) {
      A_nonvectorized_matrix[i, j] = -10
    }
  }
}
A_nonvectorized_matrix