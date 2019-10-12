function Richardson(U,n)
syms n;

% U(n)=1./(n.*(n+1));
c=test(U,n); % appele a la fonction de convergence, si convergente il continue
% if c
   Rk(n)=taylor(U(n),n,1,'order',6);% calcule du devellopement limite de U(n)
    m=1:100; % le nombre de point

    plot(m,U(m),'--k',m,Rk(m),'--r') % trace
    legend('U(n)','Rk(n)')
% end


 
% if c
%     Ak(m)=U(m+1)+...
%         1./((1./(U(m+2)-U(m+1))-(1./(U(m+1)-U(m)))));
% end
end
