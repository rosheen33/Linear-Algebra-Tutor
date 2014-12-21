function [M]=REF(M);


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
            b=1;
            while b<=size1(2)
                if(M(a,b)~=0)
                        if(M(a,b)~=1)
                        
                         for c=1:size1(1)
                             for d=1:size1(2)
                                   if(c==d)
                                      identity_Matrix(c,d)=1;
                                   else
                                     identity_Matrix(c,d)=0;
                                   end
                             end
                         end
                         identity_Matrix(a,a)=1/M(a,b);
                         elementry_Matrix=identity_Matrix*elementry_Matrix;
                         M=identity_Matrix*M;
                         disp('elementry 2:');
                         disp(elementry_Matrix);
                       end
                         %make 0's below
                         for z=a+1:size1(1)
                             if(M(z,b)~=0)
                                 
                                 
                                  for c=1:size1(1)
                                       for d=1:size1(2)
                                            if(c==d)
                                              identity_Matrix(c,d)=1;
                                            else
                                            identity_Matrix(c,d)=0;
                                            end
                                       end
                                  end
                                  
                                  
                                  identity_Matrix(z,a)=M(z,b)*(-1);
                                  elementry_Matrix=identity_Matrix*elementry_Matrix;
                                  M=identity_Matrix*M;
                                  disp('elementry 3:');
                                  disp(elementry_Matrix);
                                  
                             end
                         end  
                     elementry_Matrix=(is_ordered(M))*(elementry_Matrix);
                     b=size1(2);
                     disp('elementry 4:');
                     disp(elementry_Matrix);
                end
                b=b+1;
            end
        end
      
end