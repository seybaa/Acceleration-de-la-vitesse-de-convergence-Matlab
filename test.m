function [c]=test(U,n) %% fonction de la convergence
% syms n; pour la declaration du variable
i=0; %initialisation de i pour la boucle while
c=0; % variable de type boolean
disp(U(n)); % affichage de U(n) dans la fenetre
    while i==0    % tand que i =0, il cherche la convergence
%         U(n)=(1/n(n+1));

        L=limit(U,n,inf); %calcul de la limite
    %% convergence de base
        if L~=0
            disp('La suite est grossièrement divergente')
            break;
        end

        %% Critère d'Alembert
        La=limit((U(n+1)/U(n)),n,inf);

        if La > 1
            disp('La suite est divergente (Alembert)')
            break;
        end

        %% Critère de Cauchy
        Lc = limit((U(n)^(1/n)),n,inf);

        if Lc > 1
            disp('La suite est divergente (Cauchy)')
            break;
        end

        %% Critère de Riemann
        k=expand(U);% devellope et simplifie 
        [~,b]=numden(k); % le num et deno dans differentes variables
        c=coeffs(b(n),n,'all'); % le met sous forme polynomiale
        ex=length(c)-1; % prend le degré le plus haut

        if ex <= 1
            disp('La suite est divergente (Riemman)')
            break;
        end

        disp ('La suite est convergente')
          c=1;  
        i=1;
    end
end