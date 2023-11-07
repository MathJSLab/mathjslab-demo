clear
% Test array indexing
count5x5 = [1,2,3,4,5;6,7,8,9,10;11,12,13,14,15;16,17,18,19,20;21,22,23,24,25]
magic_7=[30,39,48,1,10,19,28;38,47,7,9,18,27,29;46,6,8,17,26,35,37;5,14,16,25,34,36,45;13,15,24,33,42,44,4;21,23,32,41,43,3,12;22,31,40,49,2,11,20] % magic(7)
A = [1,2,3; 4,5,6; 7,8,9]
A(1)
A(2)
A(3)
A(4)
A(5)
A(10) % error
A(2,3)
A(4,3) % error
A = [1,2,3,4,5,6,7,8,9]
A(1)
A(2)
A(3)
A(4)
A(5)
A(10) % error
A(2,3) % error
A(4,3) % error
A = [1,2,3,4,5;6,7,8,9,10]
A(1)
A(2)
A(3)
A(4)
A(5)
A(10)
A(2,3)
A(4,3) % error
A=magic_7
% by linear index
A(1) % 30
A(3) % 46
A(7) % 22
A(8) % 39
A(15) % 48
A(7*7) % 20
% by subscripts
A(1,1)
A(1,2)
A(2,1)
A
A([1,2,3;4,5,6])
A
A([1,2;3,4],[1,2,3])
A
A(50) % error
A(9,3) % error
A(3,10) % error
A([1,2,3;4,5,9],[1,2,6]) % error
A([1,2,3;4,5,6],[1,2,10]) % error
% Testing dimensions
B=[A,A(1:7,1)]
size(B)
size(B,1)
size(B,2)
size(B,1,1)
size(B,[1,2])
size(1)
C=[]
size(C)
A*C % error
C*A % error
1*C
C*1
sub2ind ([3,3],[2,2,1,1],[1,3,3,2]) % [2,8,7,4]
sub2ind ([3,3],[2,2;1,1],[1,3;3,2]) % [2,8;7,4]
B=[1,2,3;1:3;4,5,6]
B=A^2
C=[A,A(1:7,1)]
D=[]
E=1:7
F=[1:7;2:8]
G=[1:7]'
H=[1:7;2:8]'
[1,2;3,4](1,2) % literal indexing
% indexing at left hand side
clear
A = [1,2,3; 4,5,6; 7,8,9]
A(2,2) = 999
A(9) = 100
A(10) = 100 % error
A([4,5,6])=[101,102,103]
A(3) = 99
A(2, [1,2,3])=[11;12;13]
A(1, [1,2,7])=[14;15;16]
A([1,2,3], 1)=[17;18;19]
A([1,2,3], 1)=[21,22,23]
C(1,5)=1
D(8,6)=9
A = [1,2,3; 4,5,6; 7,8,9]
A(2, [1,2,3])+=[11,12,13]
A(2, [1,2,3])+=[11;12;13] % error
F(5) = 9
% test special indexing
clear
A = [1,2,3; 4,5,6; 7,8,9]
A(2,3)
A(2,end)
A(3,2)
A(3,end-1)
B = [16,5,9,4,2,11,7,14]
B([5:8, 1:4]) % Extract and swap the halves of B
B(1:2:end)   % Extract all the odd elements
B(end:-1:1)   % Reverse the order of elements
A = [1,2,8; 4,4,6; 1,8,9]
A(2,1:end)
A(2,:)
% test multiple assignment
clear
[Z,N]=ind2sub([3,3],5)
X = ind2sub([3,3],5)
[Z,N,M]=ind2sub([3,3],[5,6;7,8])
A = [1,2; 3,4]
[L,U] = lu(A)
A = [10, -7, 0; -3, 2, 6; 5, -1, 5]
[L,U,P] = lu(A)
[B]=1
[~]=1
[~,U,P] = lu(A)
