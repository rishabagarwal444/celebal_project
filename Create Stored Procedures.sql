-- Before running this make sure that the selected database is correct
/*
CREATE PROCEDURE CreateCustomer
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Email NVARCHAR(100),
    @Phone NVARCHAR(15),
    @Address NVARCHAR(255)
AS
BEGIN
    INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
    VALUES (@FirstName, @LastName, @Email, @Phone, @Address);
END
GO
*/

/*
CREATE PROCEDURE OpenAccount
    @CustomerID INT,
    @AccountType NVARCHAR(20),
    @InitialDeposit DECIMAL(15, 2)
AS
BEGIN
    INSERT INTO Accounts (CustomerID, AccountType, Balance)
    VALUES (@CustomerID, @AccountType, @InitialDeposit);
END
GO
*/

/*
CREATE PROCEDURE DepositMoney
    @AccountID INT,
    @Amount DECIMAL(15, 2)
AS
BEGIN
    UPDATE Accounts
    SET Balance = Balance + @Amount
    WHERE AccountID = @AccountID;
    
    INSERT INTO Transactions (AccountID, TransactionType, Amount)
    VALUES (@AccountID, 'Deposit', @Amount);
END
GO
*/

/*
CREATE PROCEDURE WithdrawMoney
    @AccountID INT,
    @Amount DECIMAL(15, 2)
AS
BEGIN
    UPDATE Accounts
    SET Balance = Balance - @Amount
    WHERE AccountID = @AccountID;
    
    INSERT INTO Transactions (AccountID, TransactionType, Amount)
    VALUES (@AccountID, 'Withdrawal', @Amount);
END
GO
*/

/*
CREATE PROCEDURE TransferMoney
    @FromAccountID INT,
    @ToAccountID INT,
    @Amount DECIMAL(15, 2)
AS
BEGIN
    -- Withdraw from source account
    UPDATE Accounts
    SET Balance = Balance - @Amount
    WHERE AccountID = @FromAccountID;
    
    -- Deposit to destination account
    UPDATE Accounts
    SET Balance = Balance + @Amount
    WHERE AccountID = @ToAccountID;
    
    -- Record transactions
    INSERT INTO Transactions (AccountID, TransactionType, Amount)
    VALUES (@FromAccountID, 'Transfer Out', @Amount);
    
    INSERT INTO Transactions (AccountID, TransactionType, Amount)
    VALUES (@ToAccountID, 'Transfer In', @Amount);
END
GO
*/

/*
CREATE PROCEDURE ViewTransactionHistory
    @AccountID INT
AS
BEGIN
    SELECT * FROM Transactions
    WHERE AccountID = @AccountID
    ORDER BY TransactionDate DESC;
END
GO
*/