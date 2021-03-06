-- 30/08/2013 10:35:31 AM VET
-- Order Prepay
CREATE TABLE LVE_OrderPrePaySchedule (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Order_ID NUMBER(10) NOT NULL, C_PaySchedule_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DiscountAmt NUMBER NOT NULL, DiscountDate DATE NOT NULL, DueAmt NUMBER NOT NULL, DueDate DATE NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsValid CHAR(1) CHECK (IsValid IN ('Y','N')) NOT NULL, LVE_OrderPrePaySchedule_ID NUMBER(10) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LVE_OrderPrePaySchedule_Key PRIMARY KEY (LVE_OrderPrePaySchedule_ID))
;

-- Oct 14, 2014 11:02:03 PM VET
-- LVE-EFT
CREATE TABLE I_LVE_PaymentRequest (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Charge_ID NUMBER(10) DEFAULT NULL , C_DocType_ID NUMBER(10) DEFAULT NULL , C_Invoice_ID NUMBER(10) DEFAULT NULL , C_Order_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , DocTypeName NVARCHAR2(60) DEFAULT NULL , DocumentNo NVARCHAR2(30) DEFAULT NULL , GL_JournalLine_ID NUMBER(10) DEFAULT NULL , I_ErrorMsg NVARCHAR2(2000) DEFAULT NULL , I_IsImported CHAR(1) DEFAULT NULL  CHECK (I_IsImported IN ('Y','N')), I_LVE_PaymentRequest_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PaymentRequest_ID NUMBER(10) DEFAULT NULL , LVE_PaymentRequestLine_ID NUMBER(10) DEFAULT NULL , PayAmt NUMBER DEFAULT NULL , Processed CHAR(1) DEFAULT NULL  CHECK (Processed IN ('Y','N')), Processing CHAR(1) DEFAULT NULL , RequestType NVARCHAR2(4) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT I_LVE_PaymentRequest_Key PRIMARY KEY (I_LVE_PaymentRequest_ID))
;

