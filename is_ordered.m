function   [elementry_Matrix]=is_ordered(M)

found=-1;
size1=size(M);
for a=1:size1(1)
    M4(a,1)=1;
end
a=0;
for a=1:size1(1)
    for b=1:size1(2)
        if(a<=size1(1) && b<=size1(2))
        if(M(a,b)~=0)
           found=1;
           M4(a,1)=b;
           a=a+1;
           b=size1(2); 
            
        end
        end
    end
    if (found==-1)
        M4(a,1)=10000;
        a=a+1;
    end
    found=-1;
end

       %make identity matrix
       size1=size(M);
       for a=1:size1(1)
            for b=1:size1(2)
                if(a==b)
                    identity_Matrix(a,b)=1;
                else
                    identity_Matrix(a,b)=0;
                end
            end
        end
        
		%making elementry matrix
        for a=1:size1(1)
            for b=1:size1(2)
                if(a==b)
                    elementry_Matrix(a,b)=1;
                else
                    elementry_Matrix(a,b)=0;
                end
            end
        end
        for a=1:size1(1)
            temp1(a,1)=M(a,1);
        end
        z=-1;
        size2=size(temp1);
        for a=1:size2(1)
            %make identity matrix
            for c=1:size1(1)
                for d=1:size1(2)
                    if(c==d)
                        identity_Matrix(c,d)=1;
                    else
                        identity_Matrix(c,d)=0;
                    end
                end
            end
            smallest_element=temp1(a,1);
            for b=1:size2(2)
               if(a<=size2(1) && b<=size2(2))
                if(temp1(b,1)<smallest_element)
                    smallest_element=temp1(b,1);
                    z=b;
                end
               end
            end
            size3=size(identity_Matrix);
            if(z~=-1)
               for x=1:size3(1)
                for y=1:size3(2)
                    t1=0.0;
                    if(x==a)
                       t1= identity_Matrix(a,y);
                       identity_Matrix(a,y)=identity_Matrix(z,y);
                       identity_Matrix(z,y)=t1;
                    end
                end
               end 
               elementry_Matrix=identity_Matrix*elementry_Matrix;
               M=identity_Matrix*M; 
               var= temp1(a,1);
               temp1(a,1)=smallest_element;
               temp1(z,1)=var;
               z=-1;
            end
        end
end