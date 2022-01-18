clear; close all; clc;

% ----------------------------------------------------------------------------------------------------------------------------------------------------

% -------- SECTION 1: TASK 2.a.i (Group One Table) --------

features1 = xlsread('clinicalfeatures.xlsx', 'A2:J53');

%GROUP 1 PATIENTS
ageArr1 = features1(:,1); 
bmiArr1 = features1(:,2);
gluArr1 = features1(:,3);
insArr1 = features1(:,4);
homArr1 = features1(:,5);
lepArr1 = features1(:,6); 
adiArr1 = features1(:,7);
resArr1 = features1(:,8);
mcpArr1 = features1(:,9);

allMin1 = [min(ageArr1); min(bmiArr1); min(gluArr1); min(insArr1); min(homArr1); min(lepArr1); min(adiArr1); min(resArr1); min(mcpArr1);]; 
allMax1 = [max(ageArr1); max(bmiArr1); max(gluArr1); max(insArr1); max(homArr1); max(lepArr1); max(adiArr1); max(resArr1); max(mcpArr1);]; 
allAvg1 = [mean(ageArr1); mean(bmiArr1); mean(gluArr1); mean(insArr1); mean(homArr1); mean(lepArr1); mean(adiArr1); mean(resArr1); mean(mcpArr1);]; 
allMed1 = [median(ageArr1); median(bmiArr1); median(gluArr1); median(insArr1); median(homArr1); median(lepArr1); median(adiArr1); median(resArr1); median(mcpArr1);]; 
allMod1 = [mode(ageArr1); mode(bmiArr1); mode(gluArr1); mode(insArr1); mode(homArr1); mode(lepArr1); mode(adiArr1); mode(resArr1); mode(mcpArr1);]; 
allVar1 = [var(ageArr1); var(bmiArr1); var(gluArr1); var(insArr1); var(homArr1); var(lepArr1); var(adiArr1); var(resArr1); var(mcpArr1);]; 

allFtr1 = ["Age"; "BMI"; "Glucose"; "Insulin"; "HOMA"; "Leptin"; "Adiponectin"; "Resistin"; "MCP1";];
PatientsGroupOne = table(allFtr1, allMin1, allMax1, allAvg1, allMed1, allMod1, allVar1, 'VariableNames',...
   {'Feature', 'Minimum', 'Maximum', 'Mean', 'Median', 'Mode', 'Variance'})

% -------- SECTION 1: TASK 2.a.ii (Group One Boxplots) --------

%TASK 2.a.i. age box plot
figure
subplot(2,5,1)
boxplot(ageArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('Age', 'FontSize', 12)

%TASK 2.a.ii. bmi box plot
subplot(2,5,2)
boxplot(bmiArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('BMI', 'FontSize', 12)

%TASK 2.a.iii. glucose box plot
subplot(2,5,3)
boxplot(gluArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('Glucose', 'FontSize', 12)

%TASK 2.a.iv. insulin box plot
subplot(2,5,4)
boxplot(insArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('Insulin', 'FontSize', 12)

%TASK 2.a.v. HOMA box plot
subplot(2,5,5)
boxplot(homArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('HOMA', 'FontSize', 12)

%TASK 2.a.vi. leptin box plot
subplot(2,5,6)
boxplot(lepArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('Leptin', 'FontSize', 12)

%TASK 2.a.vii. adiponectin box plot
subplot(2,5,7)
boxplot(adiArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('Adiponectin', 'FontSize', 12)

%TASK 2.a.viii. resistin box plot
subplot(2,5,8)
boxplot(resArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('Resistin', 'FontSize', 12)

%TASK 2.a.ix mcp1 box plot
subplot(2,5,9)
boxplot(mcpArr1)
set(gca,'FontSize',12);
xlabel('Group One', 'FontSize', 12)
ylabel('MCP1', 'FontSize', 12)


% ----------------------------------------------------------------------------------------------------------------------------------------------------

% -------- SECTION 1: TASK 2.b.i (Group Two Table) --------

features2 = xlsread('clinicalfeatures.xlsx', 'A54:J117');

%GROUP 2 PATIENTS
ageArr2 = features2(:,1); 
bmiArr2 = features2(:,2);
gluArr2 = features2(:,3);
insArr2 = features2(:,4);
homArr2 = features2(:,5);
lepArr2 = features2(:,6); 
adiArr2 = features2(:,7);
resArr2 = features2(:,8);
mcpArr2 = features2(:,9);
claArr2 = features2(:,10);

allMin2 = [min(ageArr2); min(bmiArr2); min(gluArr2); min(insArr2); min(homArr2); min(lepArr2); min(adiArr2); min(resArr2); min(mcpArr2);]; 
allMax2 = [max(ageArr2); max(bmiArr2); max(gluArr2); max(insArr2); max(homArr2); max(lepArr2); max(adiArr2); max(resArr2); max(mcpArr2);]; 
allAvg2 = [mean(ageArr2); mean(bmiArr2); mean(gluArr2); mean(insArr2); mean(homArr2); mean(lepArr2); mean(adiArr2); mean(resArr2); mean(mcpArr2);]; 
allMed2 = [median(ageArr2); median(bmiArr2); median(gluArr2); median(insArr2); median(homArr2); median(lepArr2); median(adiArr2); median(resArr2); median(mcpArr2);]; 
allMod2 = [mode(ageArr2); mode(bmiArr2); mode(gluArr2); mode(insArr2); mode(homArr2); mode(lepArr2); mode(adiArr2); mode(resArr2); mode(mcpArr2);]; 
allVar2 = [var(ageArr2); var(bmiArr2); var(gluArr2); var(insArr2); var(homArr2); var(lepArr2); var(adiArr2); var(resArr2); var(mcpArr2);]; 

allFtr2 = ["Age"; "BMI"; "Glucose"; "Insulin"; "HOMA"; "Leptin"; "Adiponectin"; "Resistin"; "MCP1";];
PatientsGroupTwo = table(allFtr2, allMin2, allMax2, allAvg2, allMed2, allMod2, allVar2, 'VariableNames',...
   {'Feature', 'Minimum', 'Maximum', 'Mean', 'Median', 'Mode', 'Variance'})


% -------- SECTION 1: TASK 2.b.ii (Group Two Boxplots) --------

%TASK 2.b.i. age box plot
figure
subplot(2,5,1)
boxplot(ageArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('Age', 'FontSize', 12)

%TASK 2.b.ii. bmi box plot
subplot(2,5,2)
boxplot(bmiArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('BMI', 'FontSize', 12)

%TASK 2.b.iii. glucose box plot
subplot(2,5,3)
boxplot(gluArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('Glucose', 'FontSize', 12)

%TASK 2.b.iv. insulin box plot
subplot(2,5,4)
boxplot(insArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('Insulin', 'FontSize', 12)

%TASK 2.b.v. HOMA box plot
subplot(2,5,5)
boxplot(homArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('HOMA', 'FontSize', 12)

%TASK 2.b.vi. leptin box plot
subplot(2,5,6)
boxplot(lepArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('Leptin', 'FontSize', 12)

%TASK 2.b.vii. adiponectin box plot
subplot(2,5,7)
boxplot(adiArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('Adiponectin', 'FontSize', 12)

%TASK 2.b.viii. resistin box plot
subplot(2,5,8)
boxplot(resArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('Resistin', 'FontSize', 12)

%TASK 2.b.ix mcp1 box plot
subplot(2,5,9)
boxplot(mcpArr2)
set(gca,'FontSize',12);
xlabel('Group Two', 'FontSize', 12)
ylabel('MCP1', 'FontSize', 12)

% ----------------------------------------------------------------------------------------------------------------------------------------------------

% -------- SECTION 1: TASK 3 - Correlation Matrix --------

features3 = readtable('clinicalfeatures.xlsx');

figure
corrplot(features3(:,1:9))
