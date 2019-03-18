function out=preprocessing(rows,cols,input_image)

%im=imread(input_image);
im=input_image;
%im=face_detect(im);
im=imresize(im,[rows cols]);
imwrite(im,'temp.pgm');
a=imread('temp.pgm');
v=zeros(rows*cols,1);
v(:,1)=reshape(a,size(a,1)*size(a,2),1);
v=uint8(v);
out=v;