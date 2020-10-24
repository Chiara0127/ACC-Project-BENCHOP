% Copyright (c) 2015, BENCHOP, Slobodan Milovanovi?
% All rights reserved.
% This MATLAB code has been written for the BENCHOP project.
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are
% met:
%    * Redistributions of source code must retain the above copyright
%       notice, this list of conditions and the following disclaimer.
%    * Redistributions in binary form must reproduce the above copyright
%       notice, this list of conditions and the following disclaimer in
%       the documentation and/or other materials provided with the distribution
%    * BENCHOP article is properly cited by the user of the BENCHOP codes when publishing/reporting related scientific results.
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.


% Problems:
% P1aI
% P1bI
% P1cI
% P1aII
% P1bII
% P1cII

% Methods:
% COS
% RBFFD
% UniformGrid
function [Time, relerr] = singleMethodWithParams(problem, method, S,K,T,r,sig)
    if strcmp(method, 'COS') || strcmp(method, 'RBFFD') || strcmp(method, 'UniformGrid')
        methodPath = strcat(method, '.m');
    else
        return
    end
 % set params

     S = str2double(S); 
     par = {S,K,T,r,sig};

     % Problem 1 a) I
    if strcmp(problem, 'p_a1') 
        display('Problem 1 a) I');
        rootpath=pwd;
        %S=[90,100,110]; K=100; T=1.0; r=0.03; sig=0.15;
        U=[2.758443856146076 7.485087593912603 14.702019669720769];
        filepathsBSeuCallUI=getfilenames('./',strcat('BSeuCallUI_', methodPath));
        [timeBSupoutCallII,relerrBSupoutCallII] = executor(rootpath,filepathsBSeuCallUI,U,par);
        Time = timeBSupoutCallII;
        relerr = relerrBSupoutCallII;
% 
         fid = fopen ('celeryresult.txt','wt');
         fprintf(fid, 'Problem 1 a) I\n%s\n', method);
%         fprintf(fid, '%f, %f\n', Time, relerr);
%         fclose(fid);


    %% Problem 1 b) I
    elseif strcmp(problem, 'p_b1')
        display('Problem 1 b) 1');
        rootpath=pwd;
        %S=[90,100,110]; K=100; T=1.0; r=0.03; sig=0.15;
        U=[10.726486710094511 4.820608184813253 1.828207584020458];
        filepathsBSamPutUI=getfilenames('./',strcat('BSamPutUI_', methodPath));
        [timeBSamPutUI,relerrBSamPutUI] = executor(rootpath,filepathsBSamPutUI,U,par);

        Time=timeBSamPutUI;
        relerr=relerrBSamPutUI;
%         
        fid = fopen ('result.txt','wt');
        fprintf(fid, 'Problem 1 b) I\n%s\n', method);
%         fprintf(fid, '%f, %f\n', Time, relerr);
%         fclose(fid);

    %% Problem 1 c) I
    elseif strcmp(problem, 'p_c1')
        display('Problem 1 c) 1');
        rootpath=pwd;
        %S=[90,100,110]; K=100; T=1.0; r=0.03; sig=0.15;
        U=[1.822512255945242 3.294086516281595 3.221591131246868];
        filepathsBSupoutCallI=getfilenames('./',strcat('BSupoutCallI_', methodPath));
        [timeBSupoutCallI,relerrBSupoutCallI] = executor(rootpath,filepathsBSupoutCallI,U,par);
        Time=timeBSupoutCallI;
        relerr=relerrBSupoutCallI;
        
         fid = fopen ('result.txt','wt');
         fprintf(fid, 'Problem 1 c) I\n%s\n', method);
%         fprintf(fid, '%f, %f\n', Time, relerr);
%         fclose(fid);
   
    %% Problem 1 a) II
    elseif strcmp(problem, 'p_a2')
        display('Problem 1 a) 2');
        rootpath=pwd;
        %S=[90,100,110]; K=100; T=1.0; r=0.03; sig=0.15;
        U=[0.033913177006141   0.512978189232598   1.469203342553328];

        filepathsBSeuCallUII=getfilenames('./',strcat('BSeuCallUII_', methodPath));
        
        [timeBSeuCallUII,relerrBSeuCallUII] = executor(rootpath,filepathsBSeuCallUII,U,par);

        Time=timeBSeuCallUII;
        relerr=relerrBSeuCallUII;
	fid = fopen ('result.txt','wt');
    	fprintf(fid, 'Problem 1 a) II\n%s\n', method);

    %% Problem 1 b) II
    elseif strcmp(problem, 'p_b2')
        display('Problem 1 b) 2');
        rootpath=pwd;
        %S=[90,100,110]; K=100; T=1.0; r=0.03; sig=0.15;
        U=[3.000000000000682 2.000000000010786   1.000000000010715];

        filepathsBSamPutUII=getfilenames('./',strcat('BSamPutUII_', methodPath));
        
        [timeBSamPutUII,relerrBSamPutUII] = executor(rootpath,filepathsBSamPutUII,U,par);

        Time=timeBSamPutUII;
        relerr=relerrBSamPutUII;
	fid = fopen ('result.txt','wt');
    	fprintf(fid, 'Problem 1 b) II\n%s\n', method);

    %% Problem 1 c) II
    elseif strcmp(problem, 'p_c2')
        display('Problem 1 c) 2');
        rootpath=pwd;
        %S=[90,100,110]; K=100; T=1.0; r=0.03; sig=0.15;
        U=[0.033913177006134   0.512978189232598   1.469203342553328];
        filepathsBSupoutCallII=getfilenames('./',strcat('BSupoutCallII_', methodPath));
        
        [timeBSupoutCallII,relerrBSupoutCallII] = executor(rootpath,filepathsBSupoutCallII,U,par);

        Time=timeBSupoutCallII;
        relerr=relerrBSupoutCallII;
	fid = fopen ('result.txt','wt');
    	fprintf(fid, 'Problem 1 c) II\n%s\n', method);
    end
    
    %fid = fopen ('result.txt','wt');
    %fprintf(fid, 'Problem 1 c) II\n%s\n', method);
    fprintf(fid, '%f, %f\n', Time, relerr);
    fclose(fid);
cd(rootpath);
end