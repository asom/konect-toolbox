cd ..
addpath ../analysis/lib/matlab_bgl/

%
% Largest strongly connected component
%

ccss = [0 1 2 1 3 2 1 4 3 2 2 5 4 3 3 2]; 

%
as{1} = []; 

% 1
as{2} = [0];

% 2 
as{3} = [ 0 1 ; 1 0 ];  

% 1 + 1
as{4} = [ 0 0; 0 0];

% 3 
as{5} = [ 0 1 0; 0 0 1; 1 0 0];

% 2 + 1
as{6} = [ 0 1 0; 1 0 0; 0 0 0];

% 1 + 1 + 1
as{7} = [ 0 0 0; 0 0 0; 0 0 0];

% 4 
as{8} = [0 1 0 0; 0 0 1 0; 0 0 0 1; 1 0 0 0];

% 3 + 1
as{9} = [0 1 0 0; 0 0 1 0; 1 0 0 0; 0 0 0 0];

% 2 + 2
as{10} = [0 1 0 0; 1 0 0 0; 0 0 0 1; 0 0 1 0];

% 2 + 1 + 1
as{11} = [0 1 0 0; 1 0 0 0; 0 0 0 0; 0 0 0 0];

% 5 
as{12} = [0 1 0 0 0; 0 0 1 0 0; 0 0 0 1 0; 0 0 0 0 1; 1 0 0 0 0];

% 4 + 1
as{13} = [0 1 0 0 0; 0 0 1 0 0; 0 0 0 1 0; 1 0 0 0 0; 0 0 0 0 0];

% 3 + 2
as{14} = [0 1 0 0 0; 0 0 1 0 0; 1 0 0 0 0; 0 0 0 0 1; 0 0 0 1 0];

% 2 + 3
as{15} = [0 1 0 0 0; 1 0 0 0 0; 0 0 0 1 0; 0 0 0 0 1; 0 0 1 0 0];

% 2 ~ 1 1 1
as{16} = [0 1 0 0 0; 1 0 1 1 1; 0 0 0 0 0; 0 0 0 0 0; 0 0 0 0 0]; 

for k = 1 : prod(size(as))

  k 

  a = sparse(as{k});

  v = connect_strong(a);

  if sum(v) ~= ccss(k)
    error;
  end

end
