## Tests for cachematrix.R
# m must be inverible
source("cachematrix.R");
print("2x2");
m = matrix(c(1:4), nrow=2, ncol=2, byrow = TRUE);

print ("m");
print(m);

print ("solve(m)");
print (solve(m));

x = makeCacheMatrix(m);
print("makeCacheMatrix(m)");
print("cacheSolve(m)");

y = numeric();
y = cacheSolve(x);

print(y);
print(cacheSolve(x));

print("3x3");
m = matrix(c(1,2,3,0,4,5,1,0,6), nrow=3, ncol=3, byrow = TRUE);

print ("m");
print(m);

print ("solve(m)");
print (solve(m));

x = makeCacheMatrix(m);
print("makeCacheMatrix(m)");
print("cacheSolve(m)");
y = numeric();
y = cacheSolve(x);

print(y);
print(cacheSolve(x));


print("not inverible:");
m = matrix(c(2,2,3,6,6,9,1,4,8), nrow=3, ncol=3, byrow = TRUE);

print ("m");
print(m);

print ("solve(m)");
print (solve(m));

x = makeCacheMatrix(m);
print("makeCacheMatrix(m)");
print("cacheSolve(m)");
y = numeric();
y = cacheSolve(x);
print(cacheSolve(x));


print(y);


