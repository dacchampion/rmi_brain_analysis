m1_post = x_t(:, 2);
mu_m1 = mean(m1_post);
sigma_m1 = std(m1_post);

lower_bound = mu_m1-2*sigma_m1;
upper_bound = mu_m1+2*sigma_m1;

subplot(1,2,1), histogram(m1_post, 'Normalization', 'probability', 'FaceColor', 'Blue')
line([lower_bound, lower_bound],[0, 0.035], ... 
     'Color','green', ...
     'LineStyle','-.', ...
     'LineWidth', 2, ...
     'Marker','+', ...
     'MarkerSize',10);
line([upper_bound, upper_bound], [0, 0.035], ... 
     'Color','green', ...
     'LineStyle','-.', ...
     'LineWidth', 2, ...
     'Marker','+', ...
     'MarkerSize',10);
line([mu_m1, mu_m1],[0, 0.035], ... 
     'Color','red', ...
     'LineStyle','-', ...
     'LineWidth', 2, ...
     'Marker','+', ...
     'MarkerSize',10); 
legend('Posterior', '\mu - 2\sigma', '\mu + 2\sigma', '\mu', 'Location', 'best');
xlabel('EP - Myelin Water Volume');
ylabel('p(x|A)');

m2_post = x_t(:, 3);
mu_m2 = mean(m2_post);
sigma_m2 = std(m2_post);
lower_bound_2 = mu_m2-2*sigma_m2;
upper_bound_2 = mu_m2+2*sigma_m2;
subplot(1,2,2), histogram(m2_post, 'Normalization', 'probability', 'FaceColor', 'Blue')
line([lower_bound_2, lower_bound_2],[0, 0.03], ... 
     'Color','green', ...
     'LineStyle','-.', ...
     'LineWidth', 2, ...
     'Marker','+', ...
     'MarkerSize',10);
line([upper_bound_2, upper_bound_2], [0, 0.03], ... 
     'Color','green', ...
     'LineStyle','-.', ...
     'LineWidth', 2, ...
     'Marker','+', ...
     'MarkerSize',10);
line([mu_m2, mu_m2],[0, 0.03], ... 
     'Color','red', ...
     'LineStyle','-', ...
     'LineWidth', 2, ...
     'Marker','+', ...
     'MarkerSize',10); 
legend('Posterior', '\mu - 2\sigma', '\mu + 2\sigma', '\mu', 'Location', 'best');
xlabel('EP - Tissue Water Volume');
ylabel('p(x|A)');