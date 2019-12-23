function[]=draw(D,CL)
    %used to plot different clusters
figure
hold on
for ii=1:size(D,1)
    if CL(ii)==1
        plot(D(ii,1),D(ii,2),'g.','MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==2
        plot(D(ii,1),D(ii,2),'y.','MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==3
        plot(D(ii,1),D(ii,2),'m.','MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==4
         plot(D(ii,1),D(ii,2),'b.','MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==5
        plot(D(ii,1),D(ii,2),'r.','MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==6
   plot(D(ii,1),D(ii,2),'.','color',[0.9 0.8 0.7],'MarkerSize',10)
end
end
for ii=1:size(D,1)
    if CL(ii)==7
   plot(D(ii,1),D(ii,2),'.','color',[0.7 0.8 0.6],'MarkerSize',10)
end
end
for ii=1:size(D,1)
    if CL(ii)==8
   plot(D(ii,1),D(ii,2),'.','color',[0.5 0.5 0.9],'MarkerSize',10)
end
end 
for ii=1:size(D,1)
    if CL(ii)==9
        plot(D(ii,1),D(ii,2),'.','color',[0.3 0.5 0.6],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==10
        plot(D(ii,1),D(ii,2),'.','color',[0.1 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==11
        plot(D(ii,1),D(ii,2),'.','color',[0.1 0.2 0.3],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==12
        plot(D(ii,1),D(ii,2),'.','color',[0.1 0.3 0.4],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==13
        plot(D(ii,1),D(ii,2),'.','color',[0.1 0.4 0.6],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==14
        plot(D(ii,1),D(ii,2),'.','color',[0.1 0.4 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==15
        plot(D(ii,1),D(ii,2),'.','color',[0.2 0.4 0.6],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==16
        plot(D(ii,1),D(ii,2),'.','color',[0.2 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==17
        plot(D(ii,1),D(ii,2),'.','color',[0.3 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==18
        plot(D(ii,1),D(ii,2),'.','color',[0.4 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==19
        plot(D(ii,1),D(ii,2),'.','color',[0.5 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==20
        plot(D(ii,1),D(ii,2),'.','color',[0.6 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==21
        plot(D(ii,1),D(ii,2),'.','color',[0.7 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==22
        plot(D(ii,1),D(ii,2),'.','color',[0.8 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==23
        plot(D(ii,1),D(ii,2),'.','color',[0.9 0.7 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==24
        plot(D(ii,1),D(ii,2),'.','color',[0.8 0.8 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==25
        plot(D(ii,1),D(ii,2),'.','color',[0.8 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==26
        plot(D(ii,1),D(ii,2),'.','color',[0.1 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==27
        plot(D(ii,1),D(ii,2),'.','color',[0.2 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==28
        plot(D(ii,1),D(ii,2),'.','color',[0.3 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==29
        plot(D(ii,1),D(ii,2),'.','color',[0.4 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==30
        plot(D(ii,1),D(ii,2),'.','color',[0.5 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==31
         plot(D(ii,1),D(ii,2),'.','color',[0.6 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==32
         plot(D(ii,1),D(ii,2),'.','color',[0.7 0.9 0.9],'MarkerSize',10)
    end
end
for ii=1:size(D,1)
    if CL(ii)==-1
         plot(D(ii,1),D(ii,2),'+','color',[0.4 0.8 0.9],'MarkerSize',5)
    end
end
for ii=1:size(D,1)
    if CL(ii)==0
        plot(D(ii,1),D(ii,2),'+','color',[0.4 0.8 0.9],'MarkerSize',5)
    end
end
end