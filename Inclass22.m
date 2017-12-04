%Inclass 22
%GB comments
1 100
2 100
overall 100


%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

% x3-kbx2+x-ku=0

colors_p1 = ['r-' 'g-' 'b-'];
n = [1 4 8];

ku = 0;

% 1 copy

figure;
hold on;
for kb = 0:0.05:5
polycoeff = [1 -kb -ku];
rts = roots(polycoeff);
rts = rts(imag(rts) == 0);
plot(kb*ones(length(rts),1),rts, 'r.');
end

xlabel('k_b'); ylabel('Fixed points');
hold off;

% 4 copies

figure;
hold on;
for kb = 0:0.05:5
polycoeff = [1 -kb 1 0 -ku];
rts = roots(polycoeff);
rts = rts(imag(rts) == 0);
plot(kb*ones(length(rts),1),rts, 'r.');
end

xlabel('k_b'); ylabel('Fixed points');
hold off;

% 8 copies
figure;
hold on;
for kb = 0:0.05:5
polycoeff = [1 -kb 1 0 0 0 0 0 -ku];
rts = roots(polycoeff);
rts = rts(imag(rts) == 0);
plot(kb*ones(length(rts),1),rts, 'r.');
end

xlabel('k_b'); ylabel('Fixed points');
hold off;



% transcription with only 1 copy doesn't activate due to the necessity of
% two copies for activation, 4 copies and 8 copies it's possible to see the
% saddle node bifurcation.

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 


figure;
hold on;
for kb = 0:0.05:5
polycoeff = [1 +kb 1 -ku];
rts = roots(polycoeff);
rts = rts(imag(rts) == 0);
plot(kb*ones(length(rts),1),rts, 'r.');
end

xlabel('k_b'); ylabel('Fixed points');
hold off;

