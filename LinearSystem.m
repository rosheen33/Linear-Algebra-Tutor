function LineraSystem()
    disp('           Welcome to Linear System Trainer');
    disp('           *******************************');
    disp(' ');
    disp(' ');
    disp('DEFINATION :');
    disp('_____________');
    disp('Set of linera equations is collectively called a linear system');
    disp('Example  :');
    M1=round(100*rand(1));
    M2=round(100*rand(1));
    M3=round(100*rand(1));
    str=['     ',num2str(M1),'x+',num2str(M2),'y=',num2str(M3)];
    disp(str);
    M4=round(100*rand(1));
    M5=round(100*rand(1));
    M6=round(100*rand(1));
    str=['     ',num2str(M4),'x+',num2str(M5),'y=',num2str(M6)];
    disp(str);
    disp(' ');
    disp('General form:');
    disp('=============');
    disp('      ax+by+c=d       where a,b,c not all 0');
    disp(' ');
    disp('This is a system of linear equations');
    disp(' ');
    disp('This system can also be displayed in the form of a matrices');
    disp('Example :')
    M7=[M1  M2  M3;M4 M5 M6];
    disp(M7);
    disp(' ');
    disp(' **Every 2D linear equation plot a line');
    disp('like this is a 2D linear equation 2x+3Y=7 ');
    disp(' ');
    disp(' **Every 3D linear equation plot a plane');
    disp('Like this is a 3D linear equation 2x+3Y+4c=7 ');
    disp(' ');
    disp('Hyper Plane:');
    disp('============');
    disp(' **Every other plane after 3 dimenstions is called a hyper plane.');
    disp('Concurrent Lines ');
    disp('=================');
    disp('If the lines intersect at some point these lines are called concurrent lines');
    disp(' ');
    disp('A linear equation does not involve any products or roots of variables .');
    disp('All variable occur to the 1st power and do not appear as argument of trignometric,logarithmic or exponential function');
    disp(' ');
    disp('1:  x+3y2=4      2: 3x+2y-xy=5');
    disp('3  :sinx+y=0      ');
    disp(' ');
    disp('These Equations are not linear because  in first y has power 2  ,in 3nd is trignometric equation and 2nd has xy which is wrong ');
    disp(' ');
    disp('Solution Set:');
    disp('_____________');
    disp('          A set of all possible solutions is called a solution set. ');
    disp('** solution of linear system means a point that satisfies all the equations of a system. ');
    disp('**For some equations we have more than one solution .');
    disp('**If we have two or more equations then we wil  have three kinds of solutions ');
    disp(' 1: Only one solution');
    disp(' 2: No solution');
    disp(' 3: Infinite Solutions');
    disp(' ');
    disp('Consistent system:');
    disp('_____________');
    disp('If the linear system has 1 or infinite solution the that system is called consistent system');
    disp(' ');
    disp('Inconsistent system:');
    disp('_____________');
    disp('If the linear system has no solution the that system is called inconsistent system');
    disp(' ');
    disp('Order of Equations:');
    disp('___________________');
    disp('The order of equations in a linear system does not matter');
    disp('Example:');
    disp(' ');
    disp('These two systems are same. ');
    disp(' ');
    M1=round(100*rand(1));
    M2=round(100*rand(1));
    M3=round(100*rand(1));
    str1=['     ',num2str(M1),'x+',num2str(M2),'y=',num2str(M3)];
    disp(str1);
    M4=round(100*rand(1));
    M5=round(100*rand(1));
    M6=round(100*rand(1));
    str2=['     ',num2str(M4),'x+',num2str(M5),'y=',num2str(M6)];
    disp(str2);
    disp(' ');
    disp(str2);
    disp(str1);
    disp(' ');
    disp('Elementry Row Operation:');
    disp(' ');
    disp('1: Multiply an equation through by a nonZero contant .');
    disp('2: Interchange two Equations ');
    disp('3: Add a constant times one row to another. ');
    disp('These operations will not change the solutoin set.  As the argumented matrix correspinds  ');
    disp(' ');
    disp('                            You have to give a test in order to proceed');
    disp(' ');
    disp('                                          TEST');
    disp('                                         *******');
    disp(' Give your answer in true(Enter 1) or false(Enetr 2)');
    disp(' ');
    response=input('Press any key to start test');
    count=0;
     % disp('1:  If a linear system have 40 equations and have 1 solution then can we say that lines are conxurrent');
    choice=menu('1:  If a linear system have 40 equations and have 1 solution then can we say that lines are concurrent??','T','F');
    if(choice==1)
      disp('Your 1st answer is correct');
      count=(count+1);
    else
      disp('Youe 1st answer is not correct');
    end
    choice=menu('2:  A linear system has 1 solution only when all the equations are distinct??','T','F');
    if(choice==2)
      disp('Your 2nd answer is correct');
       count=(count+1);
    else
      disp('Youe 2nd answer is not correct');
    end
    choice=menu('3:  Is  x+3yz=9  is a linear equation ??','T','F');
    if(choice==2)
      disp('Your 3rd answer is correct');
       count=(count+1);
    else
      disp('Youe 3rd answer is not correct');
    end
    choice=menu('4: Multiplying a linear equation by zero is an acceptable elementry row operation?? ','T','F');
    if(choice==2)
      disp('Your 4th answer is correct');
       count=(count+1);
    else
      disp('Youe 4th answer is not correct');
    end
    choice=menu('5: Elementry row operations permit one equation in a linear system to be subtracted from another?? ','T','F');
    if(choice==2)
      disp('Your 5th answer is correct');
       count=(count+1);
    else
      disp('Youe 5th answer is not correct');
    end
    disp(' ');
    str=['Your score is ',num2str(count),'/5'];
    disp(str);
    disp(' ');
    response1=input('Press any key continue.........');

    
  
    
    
end