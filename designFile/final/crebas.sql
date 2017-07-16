/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/6/29 15:41:23                           */
/*==============================================================*/


alter table "CheckManage"
   drop constraint FK_CHECKMAN_CHECKMANA_WAREHOUS;

alter table "Client_sell"
   drop constraint FK_CLIENT_S_MANAGE_DEPARTME;

alter table "Invoice_Sell"
   drop constraint FK_INVOICE__INVOICE_O_ORDER_SE;

alter table "Invoice_Sell"
   drop constraint FK_INVOICE__OPENER_DEPARTME;

alter table "Order_Sell"
   drop constraint FK_ORDER_SE_INVOICE_O_INVOICE_;

alter table "Plan_Sell"
   drop constraint FK_PLAN_SEL_FORMULATE_DEPARTME;

alter table "Price_sell"
   drop constraint FK_PRICE_SE_PRICE_DEPARTME;

alter table "Produce"
   drop constraint FK_PRODUCE_PRODUCE_CLIENT_S;

alter table "Produce"
   drop constraint FK_PRODUCE_PRODUCE2_ORDER_SE;

alter table "ProductCheck"
   drop constraint FK_PRODUCTC_PRODUCTCH_PRODUCT;

alter table "ProductCheck"
   drop constraint FK_PRODUCTC_PRODUCTCH_CHECKMAN;

alter table "ProductCheck"
   drop constraint FK_PRODUCTC_PRODUCTCH_GOODSSIT;

alter table "ProductSave"
   drop constraint FK_PRODUCTS_PRODUCTSA_WAREHOUS;

alter table "ProductSave"
   drop constraint FK_PRODUCTS_PRODUCTSA_PRODUCT;

alter table "ProductTransport"
   drop constraint FK_PRODUCTT_PRODUCTTR_PRODUCT;

alter table "ProductTransport"
   drop constraint FK_PRODUCTT_PRODUCTTR_WAREHOUS;

alter table "PurchaseStaff"
   drop constraint FK_PURCHASE_PURCHASES_PURCHASE;

alter table "PurchaseStaff"
   drop constraint FK_PURCHASE_PURCHASES_STAFFMAI;

alter table "Purchase_AllPlans"
   drop constraint FK_PURCHASE_JOINPLAN_WAREHOUS;

alter table "Purchase_AllPlans"
   drop constraint FK_PURCHASE_SELL_PLAN_DEPARTME;

alter table "Purchase_Check"
   drop constraint FK_PURCHASE_CHECK_ORD_PURCHASE;

alter table "Purchase_Contract"
   drop constraint FK_PURCHASE_签署_PURCHASE;

alter table "Purchase_Department"
   drop constraint FK_PURCHASE_制定_PURCHASE;

alter table "Purchase_Logistics"
   drop constraint FK_PURCHASE_ORDER_LOG_PURCHASE;

alter table "Purchase_Order"
   drop constraint FK_PURCHASE_CONTRACT__PURCHASE;

alter table "Purchase_Plan"
   drop constraint FK_PURCHASE_ALLPLAN_P_PURCHASE;

alter table "Purchase_Product"
   drop constraint FK_PURCHASE_CHECK_PRO_PURCHASE;

alter table "Purchase_Receipt"
   drop constraint FK_PURCHASE_ORDER_REC_PURCHASE;

alter table "Purchase_Supplier"
   drop constraint FK_PURCHASE_SUPPLIER__PURCHASE;

alter table "Resource"
   drop constraint FK_RESOURCE_RESOURCEI_PURCHASE;

alter table "ResourceCheck"
   drop constraint FK_RESOURCE_RESOURCEC_CHECKMAN;

alter table "ResourceCheck"
   drop constraint FK_RESOURCE_RESOURCEC_RESOURCE;

alter table "ResourceCheck"
   drop constraint FK_RESOURCE_RESOURCEC_GOODSSIT;

alter table "ResourceSave"
   drop constraint FK_RESOURCE_RESOURCES_WAREHOUS;

alter table "ResourceSave"
   drop constraint FK_RESOURCE_RESOURCES_RESOURCE;

alter table "ResourceTransport"
   drop constraint FK_RESOURCE_RESOURCET_WAREHOUS;

alter table "ResourceTransport"
   drop constraint FK_RESOURCE_RESOURCET_RESOURCE;

alter table "SellStaff"
   drop constraint FK_SELLSTAF_SELLSTAFF_DEPARTME;

alter table "SellStaff"
   drop constraint FK_SELLSTAF_SELLSTAFF_STAFFMAI;

alter table "StaffMain"
   drop constraint FK_STAFFMAI_STAFFOWNR_RIGHTLEV;

alter table "WarehoueStaff"
   drop constraint FK_WAREHOUE_WAREHOUES_WAREHOUS;

alter table "WarehoueStaff"
   drop constraint FK_WAREHOUE_WAREHOUES_STAFFMAI;

alter table "Warehouse"
   drop constraint FK_WAREHOUS_WAREHOUSE_WAREHOUS;

drop index "CheckManage/WarehousePart_FK";

drop table "CheckManage" cascade constraints;

drop index "Manage_FK";

drop table "Client_sell" cascade constraints;

drop table "Department_Sell" cascade constraints;

drop table "GoodsSituationList" cascade constraints;

drop index "Opener_FK";

drop index "Invoice_Order_FK";

drop table "Invoice_Sell" cascade constraints;

drop index "Invoice_Order2_FK";

drop table "Order_Sell" cascade constraints;

drop index "Formulate_FK";

drop table "Plan_Sell" cascade constraints;

drop index "Price_FK";

drop table "Price_sell" cascade constraints;

drop index "Produce2_FK";

drop index "Produce_FK";

drop table "Produce" cascade constraints;

drop table "Product" cascade constraints;

drop index "ProductCheck3_FK";

drop index "ProductCheck2_FK";

drop index "ProductCheck_FK";

drop table "ProductCheck" cascade constraints;

drop index "ProductSave2_FK";

drop index "ProductSave_FK";

drop table "ProductSave" cascade constraints;

drop index "ProductTransport2_FK";

drop index "ProductTransport_FK";

drop table "ProductTransport" cascade constraints;

drop index "PurchaseStaff2_FK";

drop index "PurchaseStaff_FK";

drop table "PurchaseStaff" cascade constraints;

drop index "JoinPlan_FK";

drop index "Sell_Plan_FK";

drop table "Purchase_AllPlans" cascade constraints;

drop index "Check_Order_FK";

drop table "Purchase_Check" cascade constraints;

drop index 签署_FK;

drop table "Purchase_Contract" cascade constraints;

drop index 制定_FK;

drop table "Purchase_Department" cascade constraints;

drop index "Order_Logistics_FK";

drop table "Purchase_Logistics" cascade constraints;

drop index "Contract_Order_FK";

drop table "Purchase_Order" cascade constraints;

drop index "AllPlan_Plan_FK";

drop table "Purchase_Plan" cascade constraints;

drop index "Check_Product_FK";

drop table "Purchase_Product" cascade constraints;

drop index "Order_Receipt_FK";

drop table "Purchase_Receipt" cascade constraints;

drop index "Supplier_Contract_FK";

drop table "Purchase_Supplier" cascade constraints;

drop index "ResourceIn_FK";

drop table "Resource" cascade constraints;

drop index "ResourceCheck3_FK";

drop index "ResourceCheck2_FK";

drop index "ResourceCheck_FK";

drop table "ResourceCheck" cascade constraints;

drop index "ResourceSave2_FK";

drop index "ResourceSave_FK";

drop table "ResourceSave" cascade constraints;

drop index "ResourceTransport2_FK";

drop index "ResourceTransport_FK";

drop table "ResourceTransport" cascade constraints;

drop table "RightLevelList" cascade constraints;

drop index "SellStaff2_FK";

drop index "SellStaff_FK";

drop table "SellStaff" cascade constraints;

drop index "StaffOwnRight_FK";

drop table "StaffMain" cascade constraints;

drop index "WarehoueStaff2_FK";

drop index "WarehoueStaff_FK";

drop table "WarehoueStaff" cascade constraints;

drop index "WarehousePart/Warehouse_FK";

drop table "Warehouse" cascade constraints;

drop table "WarehousePart" cascade constraints;

/*==============================================================*/
/* Table: "CheckManage"                                         */
/*==============================================================*/
create table "CheckManage" 
(
   "Check_Index"        INTEGER              not null,
   "Part_No"            INTEGER,
   constraint PK_CHECKMANAGE primary key ("Check_Index")
);

/*==============================================================*/
/* Index: "CheckManage/WarehousePart_FK"                        */
/*==============================================================*/
create index "CheckManage/WarehousePart_FK" on "CheckManage" (
   "Part_No" ASC
);

/*==============================================================*/
/* Table: "Client_sell"                                         */
/*==============================================================*/
create table "Client_sell" 
(
   "Client_Name"        VARCHAR2(5)          not null,
   "Department_Sell_No" INTEGER,
   "Client_Grade"       VARCHAR2(10)         not null,
   "Client_Money"       CHAR(20)             not null,
   "Client_PoorRecrod"  SMALLINT             not null,
   "Client_Site"        VARCHAR2(30)         not null,
   "Client_Phone"       VARCHAR2(15)         not null,
   constraint PK_CLIENT_SELL primary key ("Client_Name")
);

/*==============================================================*/
/* Index: "Manage_FK"                                           */
/*==============================================================*/
create index "Manage_FK" on "Client_sell" (
   "Department_Sell_No" ASC
);

/*==============================================================*/
/* Table: "Department_Sell"                                     */
/*==============================================================*/
create table "Department_Sell" 
(
   "Department_Sell_No" INTEGER              not null,
   "Department_Sell_Position" NUMBER(11)           not null,
   "Department_Sell_Manager" VARCHAR2(10)         not null,
   "Department_Sell_Num" NUMBER,
   constraint PK_DEPARTMENT_SELL primary key ("Department_Sell_No")
);

/*==============================================================*/
/* Table: "GoodsSituationList"                                  */
/*==============================================================*/
create table "GoodsSituationList" 
(
   "GoodSituation"      VARCHAR2(5)          not null,
   constraint PK_GOODSSITUATIONLIST primary key ("GoodSituation")
);

/*==============================================================*/
/* Table: "Invoice_Sell"                                        */
/*==============================================================*/
create table "Invoice_Sell" 
(
   "Invoice_Sell_Number" VARCHAR2(10)         not null,
   "Department_Sell_No" INTEGER,
   "Order_Sell_Number"  VARCHAR2(10),
   "Invoice_Sell_ClientName" VARCHAR2(10)         not null,
   "Invoice_Sell_GoodsName" VARCHAR2(10)         not null,
   "Invoice_Sell_GoodsModel" VARCHAR2(10)         not null,
   "Invoice_Sell_GoodsNumber" VARCHAR2(10)         not null,
   "Invoice_Sell_OneMoney" NUMBER(8,2)          not null,
   "Invoice_Sell_TotalMoney" NUMBER(8,2)          not null,
   "Invoice_Sell_Time"  DATE                 not null,
   constraint PK_INVOICE_SELL primary key ("Invoice_Sell_Number")
);

/*==============================================================*/
/* Index: "Invoice_Order_FK"                                    */
/*==============================================================*/
create index "Invoice_Order_FK" on "Invoice_Sell" (
   "Order_Sell_Number" ASC
);

/*==============================================================*/
/* Index: "Opener_FK"                                           */
/*==============================================================*/
create index "Opener_FK" on "Invoice_Sell" (
   "Department_Sell_No" ASC
);

/*==============================================================*/
/* Table: "Order_Sell"                                          */
/*==============================================================*/
create table "Order_Sell" 
(
   "Order_Sell_Number"  VARCHAR2(10)         not null,
   "Invoice_Sell_Number" VARCHAR2(10),
   "Order_Sell_GoodsName" VARCHAR2(10)         not null,
   "Order_Sell_Type"    VARCHAR2(10)         not null,
   "Order_Sell_ClientName" VARCHAR2(5)          not null,
   "Order_Sell_GoddsNumber" VARCHAR2(3)          not null,
   "Order_Sell_OnePrice" NUMBER(8,2)          not null,
   "Order_Sell_TotalPrice" NUMBER(8,2)          not null,
   "Order_Sell_WareHouse" CLOB                 not null,
   "Order_Sell_Time"    DATE                 not null,
   "Order_Sell_State"   SMALLINT             not null,
   "Order_Sell_Administrator" VARCHAR2(10)         not null,
   constraint PK_ORDER_SELL primary key ("Order_Sell_Number")
);

/*==============================================================*/
/* Index: "Invoice_Order2_FK"                                   */
/*==============================================================*/
create index "Invoice_Order2_FK" on "Order_Sell" (
   "Invoice_Sell_Number" ASC
);

/*==============================================================*/
/* Table: "Plan_Sell"                                           */
/*==============================================================*/
create table "Plan_Sell" 
(
   "Plan_Sell_Number"   VARCHAR2(10)         not null,
   "Department_Sell_No" INTEGER,
   "Plan_Sell_GoodsName" VARCHAR2(10)         not null,
   "Plan_Sell_GoodsModel" VARCHAR2(10)         not null,
   "Plan_Sell_PassPlanSell" VARCHAR2(10)         not null,
   "Plan_Sell_FactSell" VARCHAR2(10)         not null,
   "Plan_Sell_Saturation" VARCHAR2(5)          not null,
   "Plan_Sell_NowPlanSell" VARCHAR2(10)         not null,
   "Plan_Sell_EndTime"  DATE                 not null,
   "Plan_Sell_Unit"     VARCHAR2(10)         not null,
   constraint PK_PLAN_SELL primary key ("Plan_Sell_Number")
);

/*==============================================================*/
/* Index: "Formulate_FK"                                        */
/*==============================================================*/
create index "Formulate_FK" on "Plan_Sell" (
   "Department_Sell_No" ASC
);

/*==============================================================*/
/* Table: "Price_sell"                                          */
/*==============================================================*/
create table "Price_sell" 
(
   "Price_GoodsName"    VARCHAR2(10)         not null,
   "Department_Sell_No" INTEGER,
   "Price_GoodsNumber"  VARCHAR2(10)         not null,
   "Price_Survey"       CLOB                 not null,
   "Price_Cost"         NUMBER(8,2)          not null,
   "Price_Price"        NUMBER(8,2)          not null,
   constraint PK_PRICE_SELL primary key ("Price_GoodsName")
);

/*==============================================================*/
/* Index: "Price_FK"                                            */
/*==============================================================*/
create index "Price_FK" on "Price_sell" (
   "Department_Sell_No" ASC
);

/*==============================================================*/
/* Table: "Produce"                                             */
/*==============================================================*/
create table "Produce" 
(
   "Client_Name"        VARCHAR2(5)          not null,
   "Order_Sell_Number"  VARCHAR2(10)         not null,
   constraint PK_PRODUCE primary key ("Client_Name", "Order_Sell_Number")
);

/*==============================================================*/
/* Index: "Produce_FK"                                          */
/*==============================================================*/
create index "Produce_FK" on "Produce" (
   "Client_Name" ASC
);

/*==============================================================*/
/* Index: "Produce2_FK"                                         */
/*==============================================================*/
create index "Produce2_FK" on "Produce" (
   "Order_Sell_Number" ASC
);

/*==============================================================*/
/* Table: "Product"                                             */
/*==============================================================*/
create table "Product" 
(
   "Product_No"         INTEGER              not null,
   "Product_Name"       VARCHAR2(10),
   "Product_Specification" VARCHAR2(20),
   "Product_ProDate"    DATE,
   "Producer"           VARCHAR2(5),
   "Product_ValidDate"  CHAR(4),
   "Product_Quality"    CHAR(5),
   constraint PK_PRODUCT primary key ("Product_No")
);

/*==============================================================*/
/* Table: "ProductCheck"                                        */
/*==============================================================*/
create table "ProductCheck" 
(
   "Product_No"         INTEGER              not null,
   "Check_Index"        INTEGER              not null,
   "GoodSituation"      VARCHAR2(5)          not null,
   "Product_Check_Num"  INTEGER              not null,
   constraint PK_PRODUCTCHECK primary key ("Product_No", "Check_Index", "GoodSituation")
);

/*==============================================================*/
/* Index: "ProductCheck_FK"                                     */
/*==============================================================*/
create index "ProductCheck_FK" on "ProductCheck" (
   "Product_No" ASC
);

/*==============================================================*/
/* Index: "ProductCheck2_FK"                                    */
/*==============================================================*/
create index "ProductCheck2_FK" on "ProductCheck" (
   "Check_Index" ASC
);

/*==============================================================*/
/* Index: "ProductCheck3_FK"                                    */
/*==============================================================*/
create index "ProductCheck3_FK" on "ProductCheck" (
   "GoodSituation" ASC
);

/*==============================================================*/
/* Table: "ProductSave"                                         */
/*==============================================================*/
create table "ProductSave" 
(
   "Warehouse_No"       CHAR(9)              not null,
   "Product_No"         INTEGER              not null,
   "Product_Num"        INTEGER              not null,
   constraint PK_PRODUCTSAVE primary key ("Warehouse_No", "Product_No")
);

/*==============================================================*/
/* Index: "ProductSave_FK"                                      */
/*==============================================================*/
create index "ProductSave_FK" on "ProductSave" (
   "Warehouse_No" ASC
);

/*==============================================================*/
/* Index: "ProductSave2_FK"                                     */
/*==============================================================*/
create index "ProductSave2_FK" on "ProductSave" (
   "Product_No" ASC
);

/*==============================================================*/
/* Table: "ProductTransport"                                    */
/*==============================================================*/
create table "ProductTransport" 
(
   "Product_No"         INTEGER              not null,
   "Warehouse_No"       CHAR(9)              not null,
   "Product_Transport_Num" INTEGER              not null,
   constraint PK_PRODUCTTRANSPORT primary key ("Product_No", "Warehouse_No")
);

/*==============================================================*/
/* Index: "ProductTransport_FK"                                 */
/*==============================================================*/
create index "ProductTransport_FK" on "ProductTransport" (
   "Product_No" ASC
);

/*==============================================================*/
/* Index: "ProductTransport2_FK"                                */
/*==============================================================*/
create index "ProductTransport2_FK" on "ProductTransport" (
   "Warehouse_No" ASC
);

/*==============================================================*/
/* Table: "PurchaseStaff"                                       */
/*==============================================================*/
create table "PurchaseStaff" 
(
   "Purchase_Department_No" INTEGER              not null,
   "Staff_Num"          INTEGER              not null,
   constraint PK_PURCHASESTAFF primary key ("Purchase_Department_No", "Staff_Num")
);

/*==============================================================*/
/* Index: "PurchaseStaff_FK"                                    */
/*==============================================================*/
create index "PurchaseStaff_FK" on "PurchaseStaff" (
   "Purchase_Department_No" ASC
);

/*==============================================================*/
/* Index: "PurchaseStaff2_FK"                                   */
/*==============================================================*/
create index "PurchaseStaff2_FK" on "PurchaseStaff" (
   "Staff_Num" ASC
);

/*==============================================================*/
/* Table: "Purchase_AllPlans"                                   */
/*==============================================================*/
create table "Purchase_AllPlans" 
(
   "Purchase_AllPlansNumber" NUMBER(10)           not null,
   "Part_No"            INTEGER,
   "Department_Sell_No" INTEGER              not null,
   "Purchase_AllPlansPurchase" VARCHAR2(200)        not null,
   "Purchase_AllPlansQuality" VARCHAR2(200)        not null,
   "Purchase_AllPlansSell" VARCHAR2(200)        not null,
   "Purchase_AllPlansStorehouse" VARCHAR2(200)        not null,
   constraint PK_PURCHASE_ALLPLANS primary key ("Purchase_AllPlansNumber")
);

/*==============================================================*/
/* Index: "Sell_Plan_FK"                                        */
/*==============================================================*/
create index "Sell_Plan_FK" on "Purchase_AllPlans" (
   "Department_Sell_No" ASC
);

/*==============================================================*/
/* Index: "JoinPlan_FK"                                         */
/*==============================================================*/
create index "JoinPlan_FK" on "Purchase_AllPlans" (
   "Part_No" ASC
);

/*==============================================================*/
/* Table: "Purchase_Check"                                      */
/*==============================================================*/
create table "Purchase_Check" 
(
   "Purchase_OrderNumber" VARCHAR2(10)         not null,
   "Purchase_CheckNumber" NUMBER(10)           not null,
   "Purchase_CheckPeople" VARCHAR2(10)         not null,
   "Purchase_CheckPhone" NUMBER(11)           not null,
   "Purchase_CheckDate" DATE                 not null,
   constraint PK_PURCHASE_CHECK primary key ("Purchase_OrderNumber", "Purchase_CheckNumber")
);

/*==============================================================*/
/* Index: "Check_Order_FK"                                      */
/*==============================================================*/
create index "Check_Order_FK" on "Purchase_Check" (
   "Purchase_OrderNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Contract"                                   */
/*==============================================================*/
create table "Purchase_Contract" 
(
   "Purchase_ContractNumber" NUMBER(10)           not null,
   "Purchase_Department_No" INTEGER,
   "Purchase_ContractDetail" VARCHAR2(400)        not null,
   "Purchase_ContractDate" DATE                 not null,
   constraint PK_PURCHASE_CONTRACT primary key ("Purchase_ContractNumber")
);

/*==============================================================*/
/* Index: 签署_FK                                                 */
/*==============================================================*/
create index 签署_FK on "Purchase_Contract" (
   "Purchase_Department_No" ASC
);

/*==============================================================*/
/* Table: "Purchase_Department"                                 */
/*==============================================================*/
create table "Purchase_Department" 
(
   "Purchase_Department_No" INTEGER              not null,
   "Purchase_PlanNumber" NUMBER(10),
   "Purchase_DepartmentPeople" NUMBER               not null,
   "Purchase_DepartmentManager" VARCHAR2(10)         not null,
   "Purchase_DepartmentPhone" NUMBER(11)           not null,
   constraint PK_PURCHASE_DEPARTMENT primary key ("Purchase_Department_No")
);

/*==============================================================*/
/* Index: 制定_FK                                                 */
/*==============================================================*/
create index 制定_FK on "Purchase_Department" (
   "Purchase_PlanNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Logistics"                                  */
/*==============================================================*/
create table "Purchase_Logistics" 
(
   "Purchase_LogisticsNumber" NUMBER(20)           not null,
   "Purchase_OrderNumber" VARCHAR2(10),
   "Purchase_LogisticsPeople" VARCHAR2(10)         not null,
   "Purchase_LogisticsPhone" NUMBER(11)           not null,
   constraint PK_PURCHASE_LOGISTICS primary key ("Purchase_LogisticsNumber")
);

/*==============================================================*/
/* Index: "Order_Logistics_FK"                                  */
/*==============================================================*/
create index "Order_Logistics_FK" on "Purchase_Logistics" (
   "Purchase_OrderNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Order"                                      */
/*==============================================================*/
create table "Purchase_Order" 
(
   "Purchase_OrderNumber" VARCHAR2(10)         not null,
   "Purchase_ContractNumber" NUMBER(10),
   "Purchase_OrderTime" DATE                 not null,
   "Purchase_OrderEndTime" DATE                 not null,
   "Purchase_OrderPeople" VARCHAR2(10)         not null,
   "Purchase_OrderOnePrice" NUMBER(8,2)          not null,
   "Purchase_OrderTotalPrice" NUMBER(10,2)         not null,
   "Purchase_OrderSupplier" VARCHAR2(20)         not null,
   "Purchase_OrderProductName" VARCHAR2(20)         not null,
   "Purchase_OrderAmount" NUMBER               not null,
   "Purchase_OrderState" SMALLINT             not null,
   constraint PK_PURCHASE_ORDER primary key ("Purchase_OrderNumber")
);

/*==============================================================*/
/* Index: "Contract_Order_FK"                                   */
/*==============================================================*/
create index "Contract_Order_FK" on "Purchase_Order" (
   "Purchase_ContractNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Plan"                                       */
/*==============================================================*/
create table "Purchase_Plan" 
(
   "Purchase_PlanNumber" NUMBER(10)           not null,
   "Purchase_AllPlansNumber" NUMBER(10)           not null,
   "Purchase_PlanName"  VARCHAR2(10)         not null,
   "Purchase_PlanModel" VARCHAR2(10)         not null,
   "Purchase_PlanAmount" NUMBER               not null,
   "Purchase_PlanUseTime" DATE                 not null,
   constraint PK_PURCHASE_PLAN primary key ("Purchase_PlanNumber")
);

/*==============================================================*/
/* Index: "AllPlan_Plan_FK"                                     */
/*==============================================================*/
create index "AllPlan_Plan_FK" on "Purchase_Plan" (
   "Purchase_AllPlansNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Product"                                    */
/*==============================================================*/
create table "Purchase_Product" 
(
   "Purchase_ProductNumber" NUMBER(10)           not null,
   "Purchase_OrderNumber" VARCHAR2(10)         not null,
   "Purchase_CheckNumber" NUMBER(10)           not null,
   "Purchase_ProductName" VARCHAR2(20)         not null,
   "Purchase_ProductStandard" VARCHAR2(10)         not null,
   "Purchase_ProductSupplier" VARCHAR2(20)         not null,
   "Purchase_ProductAdress" VARCHAR2(30)         not null,
   "Purchase_ProductDate" DATE                 not null,
   constraint PK_PURCHASE_PRODUCT primary key ("Purchase_ProductNumber")
);

/*==============================================================*/
/* Index: "Check_Product_FK"                                    */
/*==============================================================*/
create index "Check_Product_FK" on "Purchase_Product" (
   "Purchase_OrderNumber" ASC,
   "Purchase_CheckNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Receipt"                                    */
/*==============================================================*/
create table "Purchase_Receipt" 
(
   "Purchase_ReceiptNumber" NUMBER(10)           not null,
   "Purchase_OrderNumber" VARCHAR2(10),
   "Purchase_ReceiptPrice" NUMBER(10,2)         not null,
   "Purchase_ReceiptCategroy" VARCHAR2(10)         not null,
   "Purchase_ReceiptDate" DATE                 not null,
   "Purchase_Receipter" VARCHAR2(20)         not null,
   "Purchase_ReceiptAccpect" VARCHAR2(20)         not null,
   "Purchase_ReceiptDetail" VARCHAR2(200)        not null,
   constraint PK_PURCHASE_RECEIPT primary key ("Purchase_ReceiptNumber")
);

/*==============================================================*/
/* Index: "Order_Receipt_FK"                                    */
/*==============================================================*/
create index "Order_Receipt_FK" on "Purchase_Receipt" (
   "Purchase_OrderNumber" ASC
);

/*==============================================================*/
/* Table: "Purchase_Supplier"                                   */
/*==============================================================*/
create table "Purchase_Supplier" 
(
   "Purchase_SupplierNumber" NUMBER(10)           not null,
   "Purchase_ContractNumber" NUMBER(10),
   "Purchase_SupplierName" VARCHAR2(20)         not null,
   "Purchase_SupplierAdress" VARCHAR2(30)         not null,
   "Purchase_SupplierPostcode" NUMBER(6)            not null,
   "Purchase_SupplierPhone" NUMBER(11)           not null,
   "Purchase_SupplierFax" NUMBER(11)           not null,
   "Purchase_SupplierBank" NUMBER(20)           not null,
   "Purchase_SupplierBankNumber" NUMBER(20)           not null,
   "Purchase_SupplierDetalil" VARCHAR2(200),
   constraint PK_PURCHASE_SUPPLIER primary key ("Purchase_SupplierNumber")
);

/*==============================================================*/
/* Index: "Supplier_Contract_FK"                                */
/*==============================================================*/
create index "Supplier_Contract_FK" on "Purchase_Supplier" (
   "Purchase_ContractNumber" ASC
);

/*==============================================================*/
/* Table: "Resource"                                            */
/*==============================================================*/
create table "Resource" 
(
   "Resource_No"        INTEGER              not null,
   "Purchase_ProductNumber" NUMBER(10),
   "Resource_Name"      VARCHAR2(10),
   "Resource_Sqecification" VARCHAR2(20),
   "Resource_PurchaseDate" DATE,
   "Resource_ValidPeriod" CHAR(4),
   "Resource_Quality"   CHAR(5),
   "Provider"           VARCHAR2(5),
   constraint PK_RESOURCE primary key ("Resource_No")
);

/*==============================================================*/
/* Index: "ResourceIn_FK"                                       */
/*==============================================================*/
create index "ResourceIn_FK" on "Resource" (
   "Purchase_ProductNumber" ASC
);

/*==============================================================*/
/* Table: "ResourceCheck"                                       */
/*==============================================================*/
create table "ResourceCheck" 
(
   "Check_Index"        INTEGER              not null,
   "Resource_No"        INTEGER              not null,
   "GoodSituation"      VARCHAR2(5)          not null,
   "Resource_Check_Num" INTEGER              not null,
   constraint PK_RESOURCECHECK primary key ("Check_Index", "Resource_No", "GoodSituation")
);

/*==============================================================*/
/* Index: "ResourceCheck_FK"                                    */
/*==============================================================*/
create index "ResourceCheck_FK" on "ResourceCheck" (
   "Check_Index" ASC
);

/*==============================================================*/
/* Index: "ResourceCheck2_FK"                                   */
/*==============================================================*/
create index "ResourceCheck2_FK" on "ResourceCheck" (
   "Resource_No" ASC
);

/*==============================================================*/
/* Index: "ResourceCheck3_FK"                                   */
/*==============================================================*/
create index "ResourceCheck3_FK" on "ResourceCheck" (
   "GoodSituation" ASC
);

/*==============================================================*/
/* Table: "ResourceSave"                                        */
/*==============================================================*/
create table "ResourceSave" 
(
   "Warehouse_No"       CHAR(9)              not null,
   "Resource_No"        INTEGER              not null,
   "Resource_Num"       INTEGER              not null,
   constraint PK_RESOURCESAVE primary key ("Warehouse_No", "Resource_No")
);

/*==============================================================*/
/* Index: "ResourceSave_FK"                                     */
/*==============================================================*/
create index "ResourceSave_FK" on "ResourceSave" (
   "Warehouse_No" ASC
);

/*==============================================================*/
/* Index: "ResourceSave2_FK"                                    */
/*==============================================================*/
create index "ResourceSave2_FK" on "ResourceSave" (
   "Resource_No" ASC
);

/*==============================================================*/
/* Table: "ResourceTransport"                                   */
/*==============================================================*/
create table "ResourceTransport" 
(
   "Warehouse_No"       CHAR(9)              not null,
   "Resource_No"        INTEGER              not null,
   "Resource_TransPort_Num" INTEGER              not null,
   constraint PK_RESOURCETRANSPORT primary key ("Warehouse_No", "Resource_No")
);

/*==============================================================*/
/* Index: "ResourceTransport_FK"                                */
/*==============================================================*/
create index "ResourceTransport_FK" on "ResourceTransport" (
   "Warehouse_No" ASC
);

/*==============================================================*/
/* Index: "ResourceTransport2_FK"                               */
/*==============================================================*/
create index "ResourceTransport2_FK" on "ResourceTransport" (
   "Resource_No" ASC
);

/*==============================================================*/
/* Table: "RightLevelList"                                      */
/*==============================================================*/
create table "RightLevelList" 
(
   "Staff_RightLevel"   CHAR(2)              not null,
   "Staff_Remark"       VARCHAR2(10)         not null,
   constraint PK_RIGHTLEVELLIST primary key ("Staff_RightLevel")
);

/*==============================================================*/
/* Table: "SellStaff"                                           */
/*==============================================================*/
create table "SellStaff" 
(
   "Department_Sell_No" INTEGER              not null,
   "Staff_Num"          INTEGER              not null,
   constraint PK_SELLSTAFF primary key ("Department_Sell_No", "Staff_Num")
);

/*==============================================================*/
/* Index: "SellStaff_FK"                                        */
/*==============================================================*/
create index "SellStaff_FK" on "SellStaff" (
   "Department_Sell_No" ASC
);

/*==============================================================*/
/* Index: "SellStaff2_FK"                                       */
/*==============================================================*/
create index "SellStaff2_FK" on "SellStaff" (
   "Staff_Num" ASC
);

/*==============================================================*/
/* Table: "StaffMain"                                           */
/*==============================================================*/
create table "StaffMain" 
(
   "Staff_Num"          INTEGER              not null,
   "Staff_RightLevel"   CHAR(2),
   "Staff_Name"         CHAR(5)              not null,
   "Staff_Position"     CHAR(20)             not null,
   "Staff_Sex"          CHAR(2)              not null,
   "Staff_tel"          NUMBER(11)           not null,
   "Staff_Address"      VARCHAR2(30),
   "Staff_PostNum"      NUMBER(6),
   "Staff_Identified"   CHAR(20)             not null,
   "Staff_salay"        NUMBER(23)           not null,
   constraint PK_STAFFMAIN primary key ("Staff_Num")
);

/*==============================================================*/
/* Index: "StaffOwnRight_FK"                                    */
/*==============================================================*/
create index "StaffOwnRight_FK" on "StaffMain" (
   "Staff_RightLevel" ASC
);

/*==============================================================*/
/* Table: "WarehoueStaff"                                       */
/*==============================================================*/
create table "WarehoueStaff" 
(
   "Part_No"            INTEGER              not null,
   "Staff_Num"          INTEGER              not null,
   constraint PK_WAREHOUESTAFF primary key ("Part_No", "Staff_Num")
);

/*==============================================================*/
/* Index: "WarehoueStaff_FK"                                    */
/*==============================================================*/
create index "WarehoueStaff_FK" on "WarehoueStaff" (
   "Part_No" ASC
);

/*==============================================================*/
/* Index: "WarehoueStaff2_FK"                                   */
/*==============================================================*/
create index "WarehoueStaff2_FK" on "WarehoueStaff" (
   "Staff_Num" ASC
);

/*==============================================================*/
/* Table: "Warehouse"                                           */
/*==============================================================*/
create table "Warehouse" 
(
   "Warehouse_No"       CHAR(9)              not null,
   "Part_No"            INTEGER,
   "Warehouse_Type"     CHAR(5),
   "Warehouse_Area"     FLOAT(9),
   "Warehouse_Tel"      CHAR(11),
   "Warehouse_Manager"  INTEGER,
   constraint PK_WAREHOUSE primary key ("Warehouse_No")
);

/*==============================================================*/
/* Index: "WarehousePart/Warehouse_FK"                          */
/*==============================================================*/
create index "WarehousePart/Warehouse_FK" on "Warehouse" (
   "Part_No" ASC
);

/*==============================================================*/
/* Table: "WarehousePart"                                       */
/*==============================================================*/
create table "WarehousePart" 
(
   "Part_No"            INTEGER              not null,
   "Part_Tel"           CHAR(11),
   "Part_Manager"       CHAR(5),
   "Part_Num"           NUMBER,
   constraint PK_WAREHOUSEPART primary key ("Part_No")
);

alter table "CheckManage"
   add constraint FK_CHECKMAN_CHECKMANA_WAREHOUS foreign key ("Part_No")
      references "WarehousePart" ("Part_No");

alter table "Client_sell"
   add constraint FK_CLIENT_S_MANAGE_DEPARTME foreign key ("Department_Sell_No")
      references "Department_Sell" ("Department_Sell_No");

alter table "Invoice_Sell"
   add constraint FK_INVOICE__INVOICE_O_ORDER_SE foreign key ("Order_Sell_Number")
      references "Order_Sell" ("Order_Sell_Number");

alter table "Invoice_Sell"
   add constraint FK_INVOICE__OPENER_DEPARTME foreign key ("Department_Sell_No")
      references "Department_Sell" ("Department_Sell_No");

alter table "Order_Sell"
   add constraint FK_ORDER_SE_INVOICE_O_INVOICE_ foreign key ("Invoice_Sell_Number")
      references "Invoice_Sell" ("Invoice_Sell_Number");

alter table "Plan_Sell"
   add constraint FK_PLAN_SEL_FORMULATE_DEPARTME foreign key ("Department_Sell_No")
      references "Department_Sell" ("Department_Sell_No");

alter table "Price_sell"
   add constraint FK_PRICE_SE_PRICE_DEPARTME foreign key ("Department_Sell_No")
      references "Department_Sell" ("Department_Sell_No");

alter table "Produce"
   add constraint FK_PRODUCE_PRODUCE_CLIENT_S foreign key ("Client_Name")
      references "Client_sell" ("Client_Name");

alter table "Produce"
   add constraint FK_PRODUCE_PRODUCE2_ORDER_SE foreign key ("Order_Sell_Number")
      references "Order_Sell" ("Order_Sell_Number");

alter table "ProductCheck"
   add constraint FK_PRODUCTC_PRODUCTCH_PRODUCT foreign key ("Product_No")
      references "Product" ("Product_No");

alter table "ProductCheck"
   add constraint FK_PRODUCTC_PRODUCTCH_CHECKMAN foreign key ("Check_Index")
      references "CheckManage" ("Check_Index");

alter table "ProductCheck"
   add constraint FK_PRODUCTC_PRODUCTCH_GOODSSIT foreign key ("GoodSituation")
      references "GoodsSituationList" ("GoodSituation");

alter table "ProductSave"
   add constraint FK_PRODUCTS_PRODUCTSA_WAREHOUS foreign key ("Warehouse_No")
      references "Warehouse" ("Warehouse_No");

alter table "ProductSave"
   add constraint FK_PRODUCTS_PRODUCTSA_PRODUCT foreign key ("Product_No")
      references "Product" ("Product_No");

alter table "ProductTransport"
   add constraint FK_PRODUCTT_PRODUCTTR_PRODUCT foreign key ("Product_No")
      references "Product" ("Product_No");

alter table "ProductTransport"
   add constraint FK_PRODUCTT_PRODUCTTR_WAREHOUS foreign key ("Warehouse_No")
      references "Warehouse" ("Warehouse_No");

alter table "PurchaseStaff"
   add constraint FK_PURCHASE_PURCHASES_PURCHASE foreign key ("Purchase_Department_No")
      references "Purchase_Department" ("Purchase_Department_No");

alter table "PurchaseStaff"
   add constraint FK_PURCHASE_PURCHASES_STAFFMAI foreign key ("Staff_Num")
      references "StaffMain" ("Staff_Num");

alter table "Purchase_AllPlans"
   add constraint FK_PURCHASE_JOINPLAN_WAREHOUS foreign key ("Part_No")
      references "WarehousePart" ("Part_No");

alter table "Purchase_AllPlans"
   add constraint FK_PURCHASE_SELL_PLAN_DEPARTME foreign key ("Department_Sell_No")
      references "Department_Sell" ("Department_Sell_No");

alter table "Purchase_Check"
   add constraint FK_PURCHASE_CHECK_ORD_PURCHASE foreign key ("Purchase_OrderNumber")
      references "Purchase_Order" ("Purchase_OrderNumber");

alter table "Purchase_Contract"
   add constraint FK_PURCHASE_签署_PURCHASE foreign key ("Purchase_Department_No")
      references "Purchase_Department" ("Purchase_Department_No");

alter table "Purchase_Department"
   add constraint FK_PURCHASE_制定_PURCHASE foreign key ("Purchase_PlanNumber")
      references "Purchase_Plan" ("Purchase_PlanNumber");

alter table "Purchase_Logistics"
   add constraint FK_PURCHASE_ORDER_LOG_PURCHASE foreign key ("Purchase_OrderNumber")
      references "Purchase_Order" ("Purchase_OrderNumber");

alter table "Purchase_Order"
   add constraint FK_PURCHASE_CONTRACT__PURCHASE foreign key ("Purchase_ContractNumber")
      references "Purchase_Contract" ("Purchase_ContractNumber");

alter table "Purchase_Plan"
   add constraint FK_PURCHASE_ALLPLAN_P_PURCHASE foreign key ("Purchase_AllPlansNumber")
      references "Purchase_AllPlans" ("Purchase_AllPlansNumber");

alter table "Purchase_Product"
   add constraint FK_PURCHASE_CHECK_PRO_PURCHASE foreign key ("Purchase_OrderNumber", "Purchase_CheckNumber")
      references "Purchase_Check" ("Purchase_OrderNumber", "Purchase_CheckNumber");

alter table "Purchase_Receipt"
   add constraint FK_PURCHASE_ORDER_REC_PURCHASE foreign key ("Purchase_OrderNumber")
      references "Purchase_Order" ("Purchase_OrderNumber");

alter table "Purchase_Supplier"
   add constraint FK_PURCHASE_SUPPLIER__PURCHASE foreign key ("Purchase_ContractNumber")
      references "Purchase_Contract" ("Purchase_ContractNumber");

alter table "Resource"
   add constraint FK_RESOURCE_RESOURCEI_PURCHASE foreign key ("Purchase_ProductNumber")
      references "Purchase_Product" ("Purchase_ProductNumber");

alter table "ResourceCheck"
   add constraint FK_RESOURCE_RESOURCEC_CHECKMAN foreign key ("Check_Index")
      references "CheckManage" ("Check_Index");

alter table "ResourceCheck"
   add constraint FK_RESOURCE_RESOURCEC_RESOURCE foreign key ("Resource_No")
      references "Resource" ("Resource_No");

alter table "ResourceCheck"
   add constraint FK_RESOURCE_RESOURCEC_GOODSSIT foreign key ("GoodSituation")
      references "GoodsSituationList" ("GoodSituation");

alter table "ResourceSave"
   add constraint FK_RESOURCE_RESOURCES_WAREHOUS foreign key ("Warehouse_No")
      references "Warehouse" ("Warehouse_No");

alter table "ResourceSave"
   add constraint FK_RESOURCE_RESOURCES_RESOURCE foreign key ("Resource_No")
      references "Resource" ("Resource_No");

alter table "ResourceTransport"
   add constraint FK_RESOURCE_RESOURCET_WAREHOUS foreign key ("Warehouse_No")
      references "Warehouse" ("Warehouse_No");

alter table "ResourceTransport"
   add constraint FK_RESOURCE_RESOURCET_RESOURCE foreign key ("Resource_No")
      references "Resource" ("Resource_No");

alter table "SellStaff"
   add constraint FK_SELLSTAF_SELLSTAFF_DEPARTME foreign key ("Department_Sell_No")
      references "Department_Sell" ("Department_Sell_No");

alter table "SellStaff"
   add constraint FK_SELLSTAF_SELLSTAFF_STAFFMAI foreign key ("Staff_Num")
      references "StaffMain" ("Staff_Num");

alter table "StaffMain"
   add constraint FK_STAFFMAI_STAFFOWNR_RIGHTLEV foreign key ("Staff_RightLevel")
      references "RightLevelList" ("Staff_RightLevel");

alter table "WarehoueStaff"
   add constraint FK_WAREHOUE_WAREHOUES_WAREHOUS foreign key ("Part_No")
      references "WarehousePart" ("Part_No");

alter table "WarehoueStaff"
   add constraint FK_WAREHOUE_WAREHOUES_STAFFMAI foreign key ("Staff_Num")
      references "StaffMain" ("Staff_Num");

alter table "Warehouse"
   add constraint FK_WAREHOUS_WAREHOUSE_WAREHOUS foreign key ("Part_No")
      references "WarehousePart" ("Part_No");

