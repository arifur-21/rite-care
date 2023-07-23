class UserProfileModel {
  dynamic? userId;
  dynamic? userName;
  dynamic? languageCode;
  dynamic? fullName;
  dynamic? phoneNumber;
  dynamic? tenantId;
  dynamic? branchId;
  dynamic? isMainBranch;
  dynamic? isConsolidateReport;
  dynamic? isHrmUser;
  dynamic? branchName;
  dynamic? tenantName;
  dynamic? contactId;
  dynamic? roleId;
  dynamic? loginId;
  dynamic? serviceProviderTypeId;
  dynamic? nurseStationId;
  dynamic? userTypeId;
  dynamic? isPermittedForeignMission;
  dynamic? patientStatusId;
  Coa? coa;
  ServiceProviderSignPermission? serviceProviderSignPermission;

  UserProfileModel(
      {this.userId,
        this.userName,
        this.languageCode,
        this.fullName,
        this.phoneNumber,
        this.tenantId,
        this.branchId,
        this.isMainBranch,
        this.isConsolidateReport,
        this.isHrmUser,
        this.branchName,
        this.tenantName,
        this.contactId,
        this.roleId,
        this.loginId,
        this.serviceProviderTypeId,
        this.nurseStationId,
        this.userTypeId,
        this.isPermittedForeignMission,
        this.patientStatusId,
        this.coa,
        this.serviceProviderSignPermission});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    userName = json['UserName'];
    languageCode = json['LanguageCode'];
    fullName = json['FullName'];
    phoneNumber = json['PhoneNumber'];
    tenantId = json['TenantId'];
    branchId = json['BranchId'];
    isMainBranch = json['IsMainBranch'];
    isConsolidateReport = json['IsConsolidateReport'];
    isHrmUser = json['IsHrmUser'];
    branchName = json['BranchName'];
    tenantName = json['TenantName'];
    contactId = json['ContactId'];
    roleId = json['RoleId'];
    loginId = json['LoginId'];
    serviceProviderTypeId = json['ServiceProviderTypeId'];
    nurseStationId = json['NurseStationId'];
    userTypeId = json['UserTypeId'];
    isPermittedForeignMission = json['IsPermittedForeignMission'];
    patientStatusId = json['PatientStatusId'];
    coa = json['Coa'] != null ? new Coa.fromJson(json['Coa']) : null;
    serviceProviderSignPermission =
    json['ServiceProviderSignPermission'] != null
        ? new ServiceProviderSignPermission.fromJson(
        json['ServiceProviderSignPermission'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserId'] = this.userId;
    data['UserName'] = this.userName;
    data['LanguageCode'] = this.languageCode;
    data['FullName'] = this.fullName;
    data['PhoneNumber'] = this.phoneNumber;
    data['TenantId'] = this.tenantId;
    data['BranchId'] = this.branchId;
    data['IsMainBranch'] = this.isMainBranch;
    data['IsConsolidateReport'] = this.isConsolidateReport;
    data['IsHrmUser'] = this.isHrmUser;
    data['BranchName'] = this.branchName;
    data['TenantName'] = this.tenantName;
    data['ContactId'] = this.contactId;
    data['RoleId'] = this.roleId;
    data['LoginId'] = this.loginId;
    data['ServiceProviderTypeId'] = this.serviceProviderTypeId;
    data['NurseStationId'] = this.nurseStationId;
    data['UserTypeId'] = this.userTypeId;
    data['IsPermittedForeignMission'] = this.isPermittedForeignMission;
    data['PatientStatusId'] = this.patientStatusId;
    if (this.coa != null) {
      data['Coa'] = this.coa!.toJson();
    }
    if (this.serviceProviderSignPermission != null) {
      data['ServiceProviderSignPermission'] =
          this.serviceProviderSignPermission!.toJson();
    }
    return data;
  }
}

class Coa {
  dynamic? id;
  dynamic? currencyId;
  dynamic? description;
  dynamic? tenantId;
  dynamic? branchId;
  dynamic? loggedInUserId;
  dynamic? createDate;
  dynamic? modifiedDate;
  dynamic? active;
  dynamic? financialYearStartDate;
  dynamic? financialYearStartMonth;
  dynamic? financialYearEndMonth;
  dynamic? assetAccount;
  dynamic? liabilityAccount;
  dynamic? equityAccount;
  dynamic? revenueAccount;
  dynamic? expenseAccount;
  dynamic? companyInfoId;
  dynamic? tenantName;
  String? branchName;
  dynamic? currencyName;
  dynamic? companyName;
  dynamic? companyAddress;
  dynamic? companyPhone;
  dynamic? companyEmail;
  dynamic? companyWebAddress;

  Coa(
      {this.id,
        this.currencyId,
        this.description,
        this.tenantId,
        this.branchId,
        this.loggedInUserId,
        this.createDate,
        this.modifiedDate,
        this.active,
        this.financialYearStartDate,
        this.financialYearStartMonth,
        this.financialYearEndMonth,
        this.assetAccount,
        this.liabilityAccount,
        this.equityAccount,
        this.revenueAccount,
        this.expenseAccount,
        this.companyInfoId,
        this.tenantName,
        this.branchName,
        this.currencyName,
        this.companyName,
        this.companyAddress,
        this.companyPhone,
        this.companyEmail,
        this.companyWebAddress});

  Coa.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    currencyId = json['CurrencyId'];
    description = json['Description'];
    tenantId = json['TenantId'];
    branchId = json['BranchId'];
    loggedInUserId = json['LoggedInUserId'];
    createDate = json['CreateDate'];
    modifiedDate = json['ModifiedDate'];
    active = json['Active'];
    financialYearStartDate = json['FinancialYearStartDate'];
    financialYearStartMonth = json['FinancialYearStartMonth'];
    financialYearEndMonth = json['FinancialYearEndMonth'];
    assetAccount = json['AssetAccount'];
    liabilityAccount = json['LiabilityAccount'];
    equityAccount = json['EquityAccount'];
    revenueAccount = json['RevenueAccount'];
    expenseAccount = json['ExpenseAccount'];
    companyInfoId = json['CompanyInfoId'];
    tenantName = json['TenantName'];
    branchName = json['BranchName'];
    currencyName = json['CurrencyName'];
    companyName = json['CompanyName'];
    companyAddress = json['CompanyAddress'];
    companyPhone = json['CompanyPhone'];
    companyEmail = json['CompanyEmail'];
    companyWebAddress = json['CompanyWebAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['CurrencyId'] = this.currencyId;
    data['Description'] = this.description;
    data['TenantId'] = this.tenantId;
    data['BranchId'] = this.branchId;
    data['LoggedInUserId'] = this.loggedInUserId;
    data['CreateDate'] = this.createDate;
    data['ModifiedDate'] = this.modifiedDate;
    data['Active'] = this.active;
    data['FinancialYearStartDate'] = this.financialYearStartDate;
    data['FinancialYearStartMonth'] = this.financialYearStartMonth;
    data['FinancialYearEndMonth'] = this.financialYearEndMonth;
    data['AssetAccount'] = this.assetAccount;
    data['LiabilityAccount'] = this.liabilityAccount;
    data['EquityAccount'] = this.equityAccount;
    data['RevenueAccount'] = this.revenueAccount;
    data['ExpenseAccount'] = this.expenseAccount;
    data['CompanyInfoId'] = this.companyInfoId;
    data['TenantName'] = this.tenantName;
    data['BranchName'] = this.branchName;
    data['CurrencyName'] = this.currencyName;
    data['CompanyName'] = this.companyName;
    data['CompanyAddress'] = this.companyAddress;
    data['CompanyPhone'] = this.companyPhone;
    data['CompanyEmail'] = this.companyEmail;
    data['CompanyWebAddress'] = this.companyWebAddress;
    return data;
  }
}

class ServiceProviderSignPermission {
  dynamic? id;
  dynamic? currencyId;
  dynamic? description;
  dynamic? tenantId;
  dynamic? branchId;
  dynamic? loggedInUserId;
  dynamic? createDate;
  dynamic? modifiedDate;
  dynamic? active;
  dynamic? financialYearStartDate;
  dynamic? financialYearStartMonth;
  dynamic? financialYearEndMonth;
  dynamic? assetAccount;
  dynamic? liabilityAccount;
  dynamic? equityAccount;
  dynamic? revenueAccount;
  dynamic? expenseAccount;
  dynamic? companyInfoId;
  dynamic? tenantName;
  dynamic? branchName;
  dynamic? currencyName;
  dynamic? companyName;
  dynamic? companyAddress;
  dynamic? companyPhone;
  dynamic? companyEmail;
  dynamic? companyWebAddress;

  ServiceProviderSignPermission(
      {this.id,
        this.currencyId,
        this.description,
        this.tenantId,
        this.branchId,
        this.loggedInUserId,
        this.createDate,
        this.modifiedDate,
        this.active,
        this.financialYearStartDate,
        this.financialYearStartMonth,
        this.financialYearEndMonth,
        this.assetAccount,
        this.liabilityAccount,
        this.equityAccount,
        this.revenueAccount,
        this.expenseAccount,
        this.companyInfoId,
        this.tenantName,
        this.branchName,
        this.currencyName,
        this.companyName,
        this.companyAddress,
        this.companyPhone,
        this.companyEmail,
        this.companyWebAddress});

  ServiceProviderSignPermission.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    currencyId = json['CurrencyId'];
    description = json['Description'];
    tenantId = json['TenantId'];
    branchId = json['BranchId'];
    loggedInUserId = json['LoggedInUserId'];
    createDate = json['CreateDate'];
    modifiedDate = json['ModifiedDate'];
    active = json['Active'];
    financialYearStartDate = json['FinancialYearStartDate'];
    financialYearStartMonth = json['FinancialYearStartMonth'];
    financialYearEndMonth = json['FinancialYearEndMonth'];
    assetAccount = json['AssetAccount'];
    liabilityAccount = json['LiabilityAccount'];
    equityAccount = json['EquityAccount'];
    revenueAccount = json['RevenueAccount'];
    expenseAccount = json['ExpenseAccount'];
    companyInfoId = json['CompanyInfoId'];
    tenantName = json['TenantName'];
    branchName = json['BranchName'];
    currencyName = json['CurrencyName'];
    companyName = json['CompanyName'];
    companyAddress = json['CompanyAddress'];
    companyPhone = json['CompanyPhone'];
    companyEmail = json['CompanyEmail'];
    companyWebAddress = json['CompanyWebAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['CurrencyId'] = this.currencyId;
    data['Description'] = this.description;
    data['TenantId'] = this.tenantId;
    data['BranchId'] = this.branchId;
    data['LoggedInUserId'] = this.loggedInUserId;
    data['CreateDate'] = this.createDate;
    data['ModifiedDate'] = this.modifiedDate;
    data['Active'] = this.active;
    data['FinancialYearStartDate'] = this.financialYearStartDate;
    data['FinancialYearStartMonth'] = this.financialYearStartMonth;
    data['FinancialYearEndMonth'] = this.financialYearEndMonth;
    data['AssetAccount'] = this.assetAccount;
    data['LiabilityAccount'] = this.liabilityAccount;
    data['EquityAccount'] = this.equityAccount;
    data['RevenueAccount'] = this.revenueAccount;
    data['ExpenseAccount'] = this.expenseAccount;
    data['CompanyInfoId'] = this.companyInfoId;
    data['TenantName'] = this.tenantName;
    data['BranchName'] = this.branchName;
    data['CurrencyName'] = this.currencyName;
    data['CompanyName'] = this.companyName;
    data['CompanyAddress'] = this.companyAddress;
    data['CompanyPhone'] = this.companyPhone;
    data['CompanyEmail'] = this.companyEmail;
    data['CompanyWebAddress'] = this.companyWebAddress;
    return data;
  }
}