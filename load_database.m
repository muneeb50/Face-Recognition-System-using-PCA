function out=load_database(rows,cols,number_of_databases,imagesInEach)

    v=zeros(rows*cols,number_of_databases*imagesInEach);
    for i=1:number_of_databases
        cd(strcat('s',num2str(i)));
        for j=1:imagesInEach
            a=imread(strcat(num2str(j),'.pgm'));
            %imshow(a);
            
            v(:,(i-1)*imagesInEach+j)=reshape(a,size(a,1)*size(a,2),1);
        end
        cd ..
    end
    w=uint8(v); 
out=w;