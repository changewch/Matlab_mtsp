%% ������д��׼
%% ��ͼ��׼
figure('NumberTitle', 'off', 'Name', '���Ǹ����ڰ�');
set(gcf,'Color',[1 1 1]);
% �������ʽ��������
set(gca, 'FontName','Times New Roman');
set(gca, 'Fontsize',12);
set(gca, 'LineWidth',2)
%   plot �������á�legend �������ã��������±꣩
plot(1,2,'o','LineWidth',2, ...
    'MarkerEdgeColor','r', ...
    'MarkerFaceColor','g', ...
    'MarkerSize',10);
legend('x^1','x_2');  % ���±�
%  X  Y   �����ע
title('Transmission Spectrum','fontsize',13)
xlabel('x����(������д)','fontsize',13,'fontname','Times new roman');
ylabel('y����','fontsize',13,'fontname','Times new roman');

% txt ��ע
txt=sprintf('p(%d,%d)=%d',n_bay_start(i)+1,n_job_id(i)+1,n_duration_time(i)); %��ע�ַ�
text(pi,0,' \leftarrow ����');   %����ͷ�ı�ע
axes('position', [0.45 0.3 0.4 0.5])  %��ͼ��ͼ
set(gca,'xaxislocation','top')   %��x���������������Ϸ�
set(gca,'yaxislocation','top')   %��y��������ʾ���ұ�

% ��������ʾ����
axis on ;  % ��ʾ������
axis off; % �ر�������
axis([xmin xmax ymin ymax]); % ������������ָ��������
axis auto; % ����ǰ��ͼ���������᷶Χ����ΪMATLAB�Զ�����������
axis manual; % ���ᵱǰ�����᷶Χ���Ժ���ӻ�ͼ���ڵ�ǰ�����᷶Χ����ʾ
axis tight  ; %���ý���ģʽ���õ�ǰ�����᷶Χ�������û����ݷ�ΧΪ�����᷶Χ������
axis equal  ; %�ȱ���������
axis square ; % �Ե�ǰ�����᷶ΧΪ���������������������Ϊ������
axis normal ; % �Զ������ݺ��������ʹ��ǰ�����᷶Χ�ڵ�ͼ����ʾ�ﵽ���Ч��
% �����᷶Χ���̶����á��߿�����
set(gca,'XLim',[0 1.5]);%X���������ʾ��Χ
set(gca, 'XTick', [0 1 2]);  % X������̶����ݵ�λ��
set(gca,'XTickL',[1 2 3 4 4] ,'XTickLabel',[0:0.1:1.5]); %�޸ı�ǩ
set(gca,'FontName','Times New Roman','FontSize',14,...
        'FontWeight','bold','FontAngle','italic'); %  ����������̶��������ƣ���С
% ��� ���������
fill(X,Y,C) ; % C �� short namen(k r b��) \�� [r g b]( [0.5 0.5 0.5])\��long name

axis ij  axis xy   % ������ʾ reserve
(r>=-1)&(r<=1)
A(all(A==0,2),:)=[];  % ȥ�� ����A�� 0 ��

%% �ı���ʾ �� �ı�Ƕ�����֡��ı���ע text
%   display( )   ������ʾ �ı� ����  ����array
disp('��һ��  �ڶ���  ������') ;  % ��ʾ�ı�
disp( rand(5,3) );  % ��ʾ����
disp(sprintf('Բ����pi= %8.5f',pi));   %disp��sprintf����

%  ����Ƕ�����ֵ�һ���취 �� sprintf(formatSpec,A1,...,An);
formatSpec = 'The array is %dx%d.'; A1 = 2;  A2 = 3;
str = sprintf(formatSpec,A1,A2); % // ����һ�����ȼ�
str = sprintf('The array is %dx%d.',2,3);
%  ����Ƕ�����ӵ���һ���취  num2str() :�� numeric valuesת��Ϊcharacters
%                            str2num() :�� charactersת��Ϊnumeric values
name = 'Alice';   age = 12;
X = [name, ' will be ', num2str(age), ' this year.']; %����[]���Ӷ���ַ�
%  size(X)=  1,  27  \\һ���ַ�һ��λ�ã��ո�һ��λ�ã�����27

% text ����
text(x,y,z,'string','PropertyName',PropertyValue); 
% ��ͷ��ע
annotation('textarrow', [.30 .25], [.8 .8], 'String' , 'sin(x)');
%%  ������ʾ����  ����Ҫ������ʾ���Ⱥͼ��㾫�ȣ�
% MATLAB  Ĭ�ϼ��㾫���� short  ��
format long;    % long ����
format short;   % short ����

%%  �ֲ�
% unifrnd()   �������ȷֲ�
R = unifrnd(A,B); 
% returns an array R of random numbers generated from the  continuous uniform distributions ...
% with lower and upper endpoints specified by A and B, respectively. If A and B are
% arrays, R(i,j) is generated from the distribution specified by the corresponding elements of A and B.
% If either A or B is a scalar, it is expanded to the size of the other input.
R = unifrnd(A,B,m,n,...) ;
R = unifrnd(A,B,[m,n,...]) ;
% returns an m-by-n-by-... array. 
% If A and B are scalars, all elements of R are generated from the same distribution. 
% If either A or B is an array, they must be m-by-n-by-... 

% unidrnd()  ��ɢ���ȷֲ�
% Discrete uniform random numbers
N=20;
R=unidrnd(N);
m=1;n=5;
R=unidrnd(N,m,n); % �ȼ��� R =unidrnd(N,[m,n])

%%  MATLAB matlab ���̿���
% 1. if- else -  end 
% 2. switch - case - otherwise -end 
% 3. for   end
% 4. while end
% 5. continue   break  
% 6. pause(n) ʹ������ͣn  ������У�pause ��ִͣ�У��ȴ��û������������

%% ��������
fhandle=@(arglist) expr ;  %  ���������������ø�ʽ
% �� �Ա���������Ϊ�� ���������������Ͷ������������
% �� ��������@�ĸ�������Ϊ���������������Ͷ�����������


%%  ���ú���
cumsum() ;  % �ۼӺ���
norm(X,n);   % ���� X  ��  2   ����
A= xlsread('Points.xlsx');  %  excel �ļ� read
xlswrite(filename,A,sheet,xlRange);  % 
annotation('textarrow', [.3 .5], [.6 .5], 'String' , 'Straight Line');  % ��ͷ��ע