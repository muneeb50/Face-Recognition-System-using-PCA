% Face recognition
function face_recognition(rows,cols,database_size,files_in_each,input_image)
input_image1=input_image;
trainData=load_database(rows,cols,database_size,files_in_each);

%imshow(reshape(r,112,92));pause(1)


signature=20;   

% Subtracting the mean from v
O=uint8(ones(1,size(trainData,2))); 
m=uint8(mean(trainData,2));                 % m is the mean of all images.
trainDataWithoutMean=trainData-uint8(single(m)*single(O)); 

% eignevectors 
[V,D]=eig(single(trainDataWithoutMean)'*single(trainDataWithoutMean));
V=single(trainDataWithoutMean)*V;
V=V(:,end:-1:end-(signature-1));            % Pick the eignevectors corresponding to the 10 largest eigenvalues. 


% signature for each image
sig_vector=zeros(size(trainData,2),signature);
for i=1:size(trainData,2);
    sig_vector(i,:)=single(trainDataWithoutMean(:,i))'*V;    % Each row is the signature for one image.
end


%% Recognition 

subplot(1,3,3);
 % Subtract the mean
s=single(input_image1-m)'*V;
array=[];

for i=1:size(trainData,2)
    array=[array,norm(sig_vector(i,:)-s,2)];
    if(rem(i,20)==0),imshow(reshape(trainData(:,i),rows,cols)),end;
    drawnow;
end

[a,i]=min(array);

if(i<size(trainData,2))
subplot(1,3,3);
imshow(reshape(trainData(:,i),rows,cols));title('Found!','FontWeight','bold','Fontsize',14,'color','green');
else
imshow(1);title('Not Found!','FontWeight','bold','Fontsize',16,'color','red');
end
