function Aitken(U,n)
syms n;

% U(n)=1./(n.*(n+1));
c=test(U,n);
% if c
%remplace la variable par le AU(n) d'aitken
    Ak(n)=U(n+1)+...
        1./((1./(U(n+2)-U(n+1))-(1./(U(n+1)-U(n)))));
    m=1:100; %vecteur m c'est a dire le nombre de point

    plot(m,U(m),'--k',m,Ak(m),'--r') % la tracé
    legend('U(n)','Ak(n)') % la legende
% end


% 
% if c
%     Ak(m)=U(m+1)+...
%         1./((1./(U(m+2)-U(m+1))-(1./(U(m+1)-U(m)))));
% end
end