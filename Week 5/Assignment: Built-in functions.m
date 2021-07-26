function [mmr mmm] = minimax(M)
max_M = max(M');
min_M = min(M');
mmr = max_M - min_M;
mmm = max(max_M) - min(min_M);
end
