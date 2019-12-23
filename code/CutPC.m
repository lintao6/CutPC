function[CL]=CutPC(D,figure)

% Written by Lin-Tao Li (lilt@cqu.edu.cn), 1 July 2019.

%% Input:

% D:the datasets 
% figure: 1 (figure the result);
 %        0 (not figure)

%% Output:

% CL::the clustering results 

%% NaN-Searching
[Sup,NN,~,~,~,Dis]=NaNSearching(D);
global n;
n = size(D,1);
%% Constructing the natural neighbor graph
t=0;
for i=1:size(D,1)
    for j=1:size(NN{i},2)
        t=t+1;
        lines(1,t) = i;
        lines(2,t) = NN{i}(j);
    end
end
if figure
    draw(D,lines);
end
%% Calulating the reverse density and detecting the noise points
for i=1:n 
    re_density(i) =sum(Dis(i,NN{i}))/Sup;
end
Cd = mean(re_density)+1*std(re_density); % the tuning coefficient alpha
%cores = find(re_density<=Cd);
noises = find(re_density>Cd);

%% Performing the noises cutting 
for i=1:size(noises,2)
    p=find(lines(1,:)==noises(i) | lines(2,:)==noises(i));
    lines(:,p)=[];
end
if figure
    draw(D,lines);
end
%% Assigning the other points
G=graph(lines(1,:),lines(2,:));
CL = conncomp(G);
for i=size(CL,2):n
    CL(i)= 0;
end
CL_max = max(CL);
for i = 1:CL_max  
    CL_size(i)=size(find(CL==i),2);
    if CL_size(i)==1
        T=find(CL==i);
        for j=1:size(T,2)
            CL(T(j))=0;
        end
    end
end
unique_CL = unique(CL);
unique_CL_size = size(unique_CL,2);
for i=2:unique_CL_size
    CL(find(CL==unique_CL(i)))=i-1;
end
if figure
    drawCL(D,CL);
end
end
function[]=draw(varargin)
D=varargin{1};
result=varargin{2};
figure
plot(D(:,1),D(:,2),'r.','markersize',10);
hold on
for i=1:size(result,2)
    x=[D(result(1,i),1),D(result(2,i),1)];
    y=[D(result(1,i),2),D(result(2,i),2)];
    plot(x,y,'b-');
    hold on    
end
end
function[]=drawCL(D,CL)
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
