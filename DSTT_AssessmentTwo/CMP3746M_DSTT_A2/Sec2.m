clear; close all; clc;

% ----------------------------------------------------------------------------------------------------------------------------------------------------

% -------- SECTION 2: TASK 4 ---------

Features = readtable('clinicalfeatures.xlsx');

Split = .7;                              % The split is set at 70%
NewFeat = size(Features, 1);             % Returns a 1*1 vector, newFeat (116)
idx = false(NewFeat, 1);                 % 116*1 logical index
idx(1:round(Split*NewFeat)) = true;      % Take 70% of the 116 rows in xlsx file
idx = idx(randperm(NewFeat));            % Shuffle the selection of train and test data
KnownData = Features(idx,:);             % Return 81 / 116 random rows as Training
NewData = Features(~idx,:);              % Return 35 / 116 random rows as Testing
KnownResp = KnownData(:, 10);            % Known Responses (Classifiers of Training/KnownData)
TrueLabels = table2array(NewData(:,10)); % Known Groups (Classifiers of Testing/NewData)

% ----------------------------------------------------------------------------------------------------------------------------------------------------


% -------- SECTION 2: TASK 5.a (Models of Dec. Tree and SVM) ---------

ModelTree = fitctree(KnownData,KnownResp);   % Decision Tree
ModelSVM = fitcsvm(KnownData,KnownResp);     % Support Vector Machine


% -------- SECTION 2: TASK 5.c (Predicted Labels) ---------

PredLabels1 = predict(ModelTree,NewData);    % Tree Model and Test Data give Predicted Labels
PredLabels2 = predict(ModelSVM,NewData);     % SVM Model and Test Data give Predicted Labels


% -------- SECTION 2: TASK 5.d (Decision Tree Confuction Matrix) ---------

figure
cm1 = confusionchart(TrueLabels,PredLabels1)                % True Labels and Predicited Labels populate Con. Matrix
cm1.Title = 'Confusion Matrix for Decision Tree';           % Title of Confusion Matrix
ConfusionMatTree = cm1.NormalizedValues                     % Extracted Normalized Values used for Evaluation
cm1.RowSummary = 'row-normalized';                          % Summary of rows in Confusion Matrix
cm1.ColumnSummary = 'column-normalized';                    % Summary of columns in Confusion Matrix

TP1 = cm1.NormalizedValues(1,1);   % True Positive of the Confusion Matrix
TN1 = cm1.NormalizedValues(2,2);   % True Negative of the Confusion Matrix
FP1 = cm1.NormalizedValues(1,2);   % False Positive of the Confusion Matrix
FN1 = cm1.NormalizedValues(2,1);   % False Negative of the Confusion Matrix
P1 = (TP1 + FP1);                  % Summary of Positives in Con. Matrix
N1 = (TN1 + FN1);                  % Summary of Negative in Con. Matrix

TreeAcc = (TP1 + TN1) / (P1 + N1)  % Calculate Accuracy (1-Acc = Accuracy Percentage)
TreeTPRPos = TP1 / (TP1 + FN1)     % Calculate Sensitivity (For Positive)
TreeTPRNeg = TP1 / P1              % Calculate Sensitivity (For Negative)
TreeTNRPos = TN1 / (FP1 + TN1)     % Calculate Specificity (For Positive)
TreeTNRNeg = TN1 / N1              % Calculate Specificity (For Negative)


% -------- SECTION 2: TASK 5.e (SVM Confuction Matrix) ---------

figure
cm2 = confusionchart(TrueLabels,PredLabels2)                % True Labels and Predicited Labels populate Con. Matrix
cm2.Title = 'Confusion Matrix for Single Vector Machine';   % Title of Confusion Matrix
ConfusionMatSVM = cm2.NormalizedValues                      % Extracted Normalized Values used for Evaluation
cm2.RowSummary = 'row-normalized';                          % Summary of rows in Confusion Matrix
cm2.ColumnSummary = 'column-normalized';                    % Summary of columns in Confusion Matrix

TP2 = cm2.NormalizedValues(1,1);   % True Positive of the Confusion Matrix
TN2 = cm2.NormalizedValues(2,2);   % True Negative of the Confusion Matrix
FP2 = cm2.NormalizedValues(1,2);   % False Positive of the Confusion Matrix
FN2 = cm2.NormalizedValues(2,1);   % False Negative of the Confusion Matrix
P2 = (TP2 + FP2);                  % Summary of Positives in Con. Matrix
N2 = (TN2 + FN2);                  % Summary of Negative in Con. Matrix

SvmAcc = (TP2 + TN2) / (P2 + N2)   % Calculate Accuracy (1-Acc = Accuracy Percentage)
SvmTPRPos = TP2 / (TP2 + FN2)      % Calculate Sensitivity (For Positive)
SvmTPRNeg = TP2 / P2               % Calculate Sensitivity (For Negative)
SvmTNRPos = TN2 / (FP2 + TN2)      % Calculate Specificity (For Positive)
SvmTNRNeg = TN2 / N2               % Calculate Specificity (For Negative)


% -------- SECTION 2: TASK 5.f (Evaluation Tables) ---------

% The following tables are populated with the output statistics in Task 5.d and 5.e 

allStats = "Stats";

TreeEvaluation = table(allStats, TreeAcc, TreeTPRPos, TreeTPRNeg, TreeTNRPos, TreeTNRNeg, 'VariableNames',...
   {'Variable', 'Accuracy', 'PositiveTPR', 'NegativeTPR', 'PositiveTNR', 'NegativeTNR'})

SvmEvaluation = table(allStats, SvmAcc, SvmTPRPos, SvmTPRNeg, SvmTNRPos, SvmTNRNeg,'VariableNames',...
   {'Variable', 'Accuracy', 'PositiveTPR', 'NegativeTPR', 'PositiveTNR', 'NegativeTNR'})

