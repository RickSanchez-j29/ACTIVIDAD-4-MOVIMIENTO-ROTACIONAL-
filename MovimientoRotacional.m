[t,x] = ode45(@RotaMov, [0 10], [0 2]); 

figure(1)
plot(t, x(:, 1), 'LineWidth', 1, 'Color', 'g');
grid on
title("Posición de masa");
xlabel("Tiempo");
ylabel("Posición");

function dx = RotaMov(t, x)
    % Parametros de ejemplo

    m = 10; %KG
    r = 0.05; %metros (radio)
    k = 100; %Resorte 
    
    % Funcionamiento del sistema
    dx = zeros(2, 1);

    %x1 = q
    %x2 = pq

    M = 3*m;

    dx(1) = x(2);
    dx(2) = -2/M*k*x(1);

end
