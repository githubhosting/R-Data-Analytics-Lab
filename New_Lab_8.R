add_matrices <- function(matrixa, matrixb){
  added_matrices <- matrixa + matrixb
  print("Added Matrices")
  print(added_matrices)
}

scale_matrix <- function(matrixa){
  scalar <- 2
  print("Scaled Matrix")
  scaled_matrix <- matrixa * scalar
  print(scaled_matrix)
}

transpose_matrix <- function(matrixa){
  t_matrix <- t(matrixa)
  print("tranpose matrix")
  print(t_matrix)
}

had_prod <- function(matrixa, matrixb){
  hadamard <- matrixa * matrixb
  print("hadamard product")
  print(hadamard)
}

mat_product <- function(matrixa, matrixb){
  prod <- matrixa %*% matrixb
  print("matrix product")
  print(prod)
}

display_statistics <- function(matrixa){
  sum <- sum(matrixa)
  mean <- mean(matrixa)
  std_dev <- sd(as.vector(matrixa))
  stats <- c(sum, mean, std_dev)
  names(stats) <- c("sum", "mean", "standard deviation")
  print(stats)
}

plot_heat_map <- function(matrixa){
  heatmap(matrixa, Rowv = NA, Colv = NA, scale="none", margins = c(5, 5), col=topo.colors(10))
}

plot_bar_sums <- function(matrixa){
  barplot(colSums(matrixa), main="Bar Plot of Column sums", xlab="Column", ylab="Sum",
          col="green")
}

cat("Enter elements of first matrix: ")
elementsa <- as.numeric(unlist(strsplit(readline(), " ")))
cat("Enter number of rows:")
nrowa <- as.integer(readline())

cat("Enter elements of second matrix: ")
elementsb <- as.numeric(unlist(strsplit(readline(), " ")))
cat("Enter number of rows:")
nrowb <- as.integer(readline())

matrixa <- matrix(elementsa, nrow=nrowa, byrow = TRUE)
matrixb <- matrix(elementsb, nrow=nrowb, byrow = TRUE)

add_matrices(matrixa, matrixb)
scale_matrix(matrixa)
transpose_matrix(matrixa)
had_prod(matrixa, matrixb)
mat_product(matrixa, matrixb)
display_statistics(matrixa)
plot_heat_map(matrixa)
plot_bar_sums(matrixa)