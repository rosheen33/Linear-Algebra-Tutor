disp('                 Welcome to the ROW SPACE OF THE MATRIX');
disp('                 *********************************');
disp('                                                  ');
disp('                                                  ');

disp('Definition:');
disp('-----------');
disp('If A is an m*n matrix,then the subspace of R^n spanned by the row vectors of A is called row space of A.');
disp('Let us take the size of the matrix from the user: ');
disp('If you do not know about calculating the row echlon form, go to row echlon form function to know about it');
disp('   ');
disp('Let us have a look at the definition of row space of a Matrix');
disp('    ');
A=input('Enter rows:');
B=input('Enter coulmns:');
m=round(10*rand(A,B));
disp(m);
disp(' row echelon form of this matrix will be.');
m=REF(m);
disp(m);
disp('Row space of the matrix is')
n=0;
b=1;
for  l=1:1:A
    n=0;
    while n~=1
        if m(l,b)==1.00
            str=[' ',num2str(m(l,:))];
            set(handles.text3,'string',str);
            n=1;
        end
        b=b+1;
    end
end

    