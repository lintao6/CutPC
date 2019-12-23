function [FMeasure,Accuracy] = V_I(P,C)
% PΪ�˹���Ǵ�
% CΪ�����㷨������
% �����Ǹ��ⲿָ�꣺Fmeasure ,acc,RI,ARI.
N = length(C);% ��������
p = unique(P);
c = unique(C);
P_size = length(p);% �˹���ǵĴصĸ���
C_size = length(c);% �㷨����Ĵصĸ���
% Pid,Rid���������ݣ���i�з������ݴ�����������ڵ�i����
Pid = double(ones(P_size,1)*P == p'*ones(1,N) );
Cid = double(ones(C_size,1)*C == c'*ones(1,N) );
CP = Cid*Pid';%P��C�Ľ���,C*P
Pj = sum(CP,1);% ��������P��C�������еĸ���
Ci = sum(CP,2);% ��������C��P�������еĸ���
 
precision = CP./( Ci*ones(1,P_size) );
recall = CP./( ones(C_size,1)*Pj );
F = 2*precision.*recall./(precision+recall);
if nargin < 2 | min(size(P)) > 1 | min(size(C)) > 1
   error('RandIndex: Requires two vector arguments')
   return
end
% �õ�һ���ܵ�Fֵ
FMeasure = sum( (Pj./sum(Pj)).*max(F) );
Accuracy = sum(max(CP,[],2))/N;
end