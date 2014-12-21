function [M]=REF2(M);

        found=-1;
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
      end

        for a=1:size1(1)
            temp1(a,1)=M4(a,1);
        end
		for a=2:size1(1)
            b=1;
            while b<=size1(2)
                if(temp1(a,1)~=10000)
                        
                         z=a-1;
                         while(z<=size1(1) && z>=1)
                             val=0;
                             val=temp1(a,1);
                          if(M(z,val)~=0)
                            
                            for c=1:size1(1)
                               for d=1:size1(2)
                                   if(c==d)
                                        identity_Matrix(c,d)=1;
                                   else
                                     identity_Matrix(c,d)=0;
                                   end
                                end
                            end
                            identity_Matrix(z,a)=M(z,val)*(-1);
                            elementry_Matrix=identity_Matrix*elementry_Matrix;
                            disp('elementry  5');
                            disp(elementry_Matrix);
                            M=identity_Matrix*M; 
                          end
                            
                            
                          z=z-1;  
                         end
                        elementry_Matrix=(is_ordered(M))*(elementry_Matrix);
                        disp('elementry  6');
                        disp(elementry_Matrix);
                         b=size1(2);
                end
                 if(temp1(a,1)==10000)  
                    b=size1(2); 
                 end
                b=b+1;
            end
        end
      
end