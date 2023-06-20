CREATE TABLE AgileGroupsDetails 
(
AgileGroupsDetailsId INT PRIMARY KEY IDENTITY,
AgileGroupsId INT NOT NULL FOREIGN KEY (AgileGroupsId) REFERENCES AgileGroups(AgileGroupsId) INDEX idx_AgileGroupsId,
EmployeesId INT NOT NULL FOREIGN KEY (EmployeesId) REFERENCES Employees(EmployeesId) INDEX idx_EmployeesId,
OrderId INT NOT NULL
)


GO


