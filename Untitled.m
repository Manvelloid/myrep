


a = randn(2048,1) + 1i*randn(2048,1);
b = circshift(a,10) + circshift(a,-10);


iterations = 1000;
a1 = circshift(a,-50);

mu = 0.5./(1:iterations).^0.5;

tic 
w = LMS_clip_mex(b,a1, 200,mu,50,1,iterations);
toc


plot(abs(w))