//shubham-nakaskar iirnotch i/p arg:fo,fs,q o/p arg:x,bw
disp("enter the values of fo, fs and q(quality factor) in the fo.txt,fs.txt and q.txt file provided");
//reading the notch freq.ie fo from the user
fo=read('fo.txt',1,1)
//reading the signal freq. ie fs from the user
fs=read('fs.txt',1,1)
//reading the quality factor value ie q from user
q=read('q.txt',1,1)
//bw=bandwidth
bw=w0/q
w0=fo/(fs/2)
//generating linearspace vector which resembles to w0
aw0=linspace(0,w0*2,3)
//getting the difference between two consecutive elements of generated linspace vector
d=aw0(1,2)-aw0(1,1)

xtitle("notch filter","normaised frequency(x rad/sample)","magnitude(dB)")
for x=aw0(1,1):w0/8:aw0($,$)
    if(x==w0)
        then 
        continue
    else
        plot2d(x,bw,style=0)
        
end
end
 
