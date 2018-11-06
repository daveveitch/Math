# Create Function and Fourier Series Approximations
true_function<-curve(x^2, -pi, pi, n = 5000, add = FALSE, type = "l", ylab = NULL, log = NULL)
fs1<-curve(pi^2/3 - 4*cos(x), -pi, pi, n = 5000, add = FALSE, type = "l")
fs3<-curve(pi^2/3 - 4*cos(x) + cos(2*x) - (4/9)*cos(3*x), -pi, pi, n = 5000, add = FALSE, type = "l")
fs5<-curve(pi^2/3 - 4*cos(x) + cos(2*x) - (4/9)*cos(3*x)+(1/4)*cos(4*x)-(4/25)*cos(5*x), -pi, pi, n = 5000, add = FALSE, type = "l")

# Plot Functions
plot(true_function, lwd=3, col="black", ann=FALSE, type='l',axes=FALSE)
par(new=TRUE)
plot(fs1, ann=FALSE, axes=FALSE,col='blue',type='l')
par(new=TRUE)
plot(fs3, ann=FALSE, axes=FALSE,col='red',type='l')
par(new=TRUE)
plot(fs5, ann=FALSE, axes=FALSE,col='chartreuse3',type='l')
par(new=TRUE)

# Add Legend
legend('bottomleft', legend=c('f(x)=x^2','FS n=1','FS n=3','FS n=5'), col=c("black", "blue",'red','chartreuse3'),lty=c(1,1,1,1),lwd=c(3,1,1,1))

# Add Title
title(main = expression(paste('Fourier Series Approximation of x^2 [-',pi,',',pi,']')), sub = NULL, xlab = NULL, ylab = NULL,
      line = NA, outer = FALSE)

# Create Custom Axis
axis(side=2,0:10) 
axis(side=1, at=c(-pi, -pi/2, 0 , pi/2, pi), labels=expression(-pi, -pi/2,  0,  pi/2, pi))   #"side=2" specifies "y" axis
