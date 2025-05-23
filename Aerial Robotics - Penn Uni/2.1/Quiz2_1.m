%q1
a = sqrt(2)/2;
A = [a, 0, a; 0, 1, 0; -a, 0, a];
det([a, 0, a; 0, 1, 0; -a, 0, a])
[inv(A), A']
A*A'
A'*A
det(A)

R1 =[0.3835 0.5730 0.9287; 0.5710 0.5919 -0.4119; -1.3954 0.0217 1.1105];
R1*R1'
R1'*R1
det(R1)

R2 = [0.2120 0.7743 0.5963; 0.2120 -0.6321 0.7454;0.9540 -0.0316 -0.2981];
R2*R2'
R2'*R2
det(R2)

%q2
R = [0.6927 -0.7146 0.0978; 0.7165 0.6973 0.0198; -0.0824 0.0564 0.995]
theta1 = acos(R(3,3));
psi1 = atan2(R(3,2)/sin(theta1),-R(3,1)/sin(theta1));
phi1 = atan2(R(2,3)/sin(theta1),R(1,3)/sin(theta1));

psi1
theta1
phi1

%q3
R = [0.675 -0.1724 0.7174;0.2474 0.9689 0; -0.6951 0.1775 0.6967]
wb= [0 -1 0.9689; 1 0 -0.2474; -0.9689 0.2474 0];
ws=inv(R')*wb*R'

%q4
%R=[0.2919 0.643 -0.7081; -0.643 -0.4161 -0.643; -0.7081 0.643 0.2919]
%[V,E] = eig(R)
%angle(E(2,2))

%q5
%R=[-1/3 2/3 -2/3; 2/3 -1/3 -2/3; -2/3 -2/3 -1/3]
%[V,E] = eig(R)

% Question 4 & 5
[u1, phi1] = rot2ang([.2919, 0.643, -0.7081; -0.643, -0.4161, -0.643; -0.7081, 0.643, 0.2919])
[u1, phi1] = rot2ang([-1/3, 2/3, -2/3; 2/3, -1/3, -2/3; -2/3, -2/3, -1/3])

function [u, phi] = rot2ang(R)
    % Converts rotation matrix to axis and angle of rotation
    phi = acos((trace(R) - 1)/2);
    uhat = 1/(2*sin(phi))*(R - R');
    u = [uhat(3,2); uhat(1,3); uhat(2,1)];
end