// To parse this JSON data, do
//
//     final personalData = personalDataFromJson(jsonString);

import 'dart:convert';

PersonalData personalDataFromJson(String str) => PersonalData.fromJson(json.decode(str));

String personalDataToJson(PersonalData data) => json.encode(data.toJson());

class PersonalData {
  Data data;
  FamilyDetails familyDetails;
  Livelihood livelihood;
  Products products;
  PurchaseOfRawMaterials purchaseOfRawMaterials;
  Sales sales;

  PersonalData({
    required this.data,
    required this.familyDetails,
    required this.livelihood,
    required this.products,
    required this.purchaseOfRawMaterials,
    required this.sales,
  });

  factory PersonalData.fromJson(Map<String, dynamic> json) => PersonalData(
    data: Data.fromJson(json["data"]),
    familyDetails: FamilyDetails.fromJson(json["familyDetails"]),
    livelihood: Livelihood.fromJson(json["livelihood"]),
    products: Products.fromJson(json["products"]),
    purchaseOfRawMaterials: PurchaseOfRawMaterials.fromJson(json["purchaseOfRawMaterials"]),
    sales: Sales.fromJson(json["sales"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "familyDetails": familyDetails.toJson(),
    "livelihood": livelihood.toJson(),
    "products": products.toJson(),
    "purchaseOfRawMaterials": purchaseOfRawMaterials.toJson(),
    "sales": sales.toJson(),
  };
}

class Data {
  String id;
  String dataDistrict;
  String dataBlock;
  String dataPanchayath;
  int dataWard;
  String dataName;
  String dataAddress;
  String dataPhonenumber;
  String dataClass;
  String dataClass2;
  String dataClass3;
  String dataFamilyincome;
  String dataNameofNg;
  String dataNameofNGmember;
  String dataRoleinNg;
  String dataHouseownership;
  int dataLanddetailsLandarea;
  int dataLanddetailsAgricultureland;
  String dataAnimalhusbendaryBusinesstype;
  String dataAnimalhusbendaryOthers0;
  String dataAnimalhusbendaryCdsregistration;
  String dataAnimalhusbendaryRegdetailsRegnumber;
  String dataAnimalhusbendaryRegdetailsCdsunitname;
  String dataEnterpisetype;
  int dataNoofgroupmembers;
  int dataAmountinvested;
  String dataSourceofinvestment;
  String dataSupportrecived;
  String dataLoan;
  int dataLoandetailsTotalinvestment;
  String dataBusinessidea;
  String dataInfraInfrastructure;
  String dataInfraShed;
  String dataInfrWastage;
  String dataInfraBiogas;
  String dataInfraEquipments;
  String dataInfraOthers;
  String dataSupport;
  String dataOthers2;
  String dataMgnregAsupport;
  String dataLanddetails1Landforgrass;
  int dataLanddetails1Qtyofownland;
  int dataLanddetails1Qtyofleasedland;
  String dataLanddetails2Siteforworkshed;
  int dataLanddetails2Qtyofownland;
  String dataOthers4;
  String dataTrainingsrequired;
  String dataOthers3;
  String dataComments;
  String dataNameofcrp;
  String dataNameofrespondent;
  String dataMetaInstanceId;
  String key;

  Data({
    required this.id,
    required this.dataDistrict,
    required this.dataBlock,
    required this.dataPanchayath,
    required this.dataWard,
    required this.dataName,
    required this.dataAddress,
    required this.dataPhonenumber,
    required this.dataClass,
    required this.dataClass2,
    required this.dataClass3,
    required this.dataFamilyincome,
    required this.dataNameofNg,
    required this.dataNameofNGmember,
    required this.dataRoleinNg,
    required this.dataHouseownership,
    required this.dataLanddetailsLandarea,
    required this.dataLanddetailsAgricultureland,
    required this.dataAnimalhusbendaryBusinesstype,
    required this.dataAnimalhusbendaryOthers0,
    required this.dataAnimalhusbendaryCdsregistration,
    required this.dataAnimalhusbendaryRegdetailsRegnumber,
    required this.dataAnimalhusbendaryRegdetailsCdsunitname,
    required this.dataEnterpisetype,
    required this.dataNoofgroupmembers,
    required this.dataAmountinvested,
    required this.dataSourceofinvestment,
    required this.dataSupportrecived,
    required this.dataLoan,
    required this.dataLoandetailsTotalinvestment,
    required this.dataBusinessidea,
    required this.dataInfraInfrastructure,
    required this.dataInfraShed,
    required this.dataInfrWastage,
    required this.dataInfraBiogas,
    required this.dataInfraEquipments,
    required this.dataInfraOthers,
    required this.dataSupport,
    required this.dataOthers2,
    required this.dataMgnregAsupport,
    required this.dataLanddetails1Landforgrass,
    required this.dataLanddetails1Qtyofownland,
    required this.dataLanddetails1Qtyofleasedland,
    required this.dataLanddetails2Siteforworkshed,
    required this.dataLanddetails2Qtyofownland,
    required this.dataOthers4,
    required this.dataTrainingsrequired,
    required this.dataOthers3,
    required this.dataComments,
    required this.dataNameofcrp,
    required this.dataNameofrespondent,
    required this.dataMetaInstanceId,
    required this.key,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["_id"],
    dataDistrict: json["data_district"],
    dataBlock: json["data_Block"],
    dataPanchayath: json["data_Panchayath"],
    dataWard: json["data_ward"],
    dataName: json["data_Name"],
    dataAddress: json["data_Address"],
    dataPhonenumber: json["data_Phonenumber"],
    dataClass: json["data_Class"],
    dataClass2: json["data_Class2"],
    dataClass3: json["data_Class3"],
    dataFamilyincome: json["data_familyincome"],
    dataNameofNg: json["data_NameofNG"],
    dataNameofNGmember: json["data_NameofNGmember"],
    dataRoleinNg: json["data_roleinNG"],
    dataHouseownership: json["data_houseownership"],
    dataLanddetailsLandarea: json["data_landdetails_landarea"],
    dataLanddetailsAgricultureland: json["data_landdetails_agricultureland"],
    dataAnimalhusbendaryBusinesstype: json["data_Animalhusbendary_businesstype"],
    dataAnimalhusbendaryOthers0: json["data_Animalhusbendary_others0"],
    dataAnimalhusbendaryCdsregistration: json["data_Animalhusbendary_cdsregistration"],
    dataAnimalhusbendaryRegdetailsRegnumber: json["data_Animalhusbendary_regdetails_regnumber"],
    dataAnimalhusbendaryRegdetailsCdsunitname: json["data_Animalhusbendary_regdetails_cdsunitname"],
    dataEnterpisetype: json["data_enterpisetype"],
    dataNoofgroupmembers: json["data_noofgroupmembers"],
    dataAmountinvested: json["data_amountinvested"],
    dataSourceofinvestment: json["data_Sourceofinvestment"],
    dataSupportrecived: json["data_supportrecived"],
    dataLoan: json["data_loan"],
    dataLoandetailsTotalinvestment: json["data_loandetails_totalinvestment"],
    dataBusinessidea: json["data_businessidea"],
    dataInfraInfrastructure: json["data_Infra_Infrastructure"],
    dataInfraShed: json["data_Infra_Shed"],
    dataInfrWastage: json["data_Infr_wastage"],
    dataInfraBiogas: json["data_Infra_biogas"],
    dataInfraEquipments: json["data_Infra_equipments"],
    dataInfraOthers: json["data_Infra_others"],
    dataSupport: json["data_support"],
    dataOthers2: json["data_others2"],
    dataMgnregAsupport: json["data_MGNREGAsupport"],
    dataLanddetails1Landforgrass: json["data_landdetails1_landforgrass"],
    dataLanddetails1Qtyofownland: json["data_landdetails1_qtyofownland"],
    dataLanddetails1Qtyofleasedland: json["data_landdetails1_qtyofleasedland"],
    dataLanddetails2Siteforworkshed: json["data_landdetails2_siteforworkshed"],
    dataLanddetails2Qtyofownland: json["data_landdetails2_qtyofownland"],
    dataOthers4: json["data_others4"],
    dataTrainingsrequired: json["data_Trainingsrequired"],
    dataOthers3: json["data_others3"],
    dataComments: json["data_comments"],
    dataNameofcrp: json["data_nameofcrp"],
    dataNameofrespondent: json["data_Nameofrespondent"],
    dataMetaInstanceId: json["data_meta_instanceID"],
    key: json["KEY"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "data_district": dataDistrict,
    "data_Block": dataBlock,
    "data_Panchayath": dataPanchayath,
    "data_ward": dataWard,
    "data_Name": dataName,
    "data_Address": dataAddress,
    "data_Phonenumber": dataPhonenumber,
    "data_Class": dataClass,
    "data_Class2": dataClass2,
    "data_Class3": dataClass3,
    "data_familyincome": dataFamilyincome,
    "data_NameofNG": dataNameofNg,
    "data_NameofNGmember": dataNameofNGmember,
    "data_roleinNG": dataRoleinNg,
    "data_houseownership": dataHouseownership,
    "data_landdetails_landarea": dataLanddetailsLandarea,
    "data_landdetails_agricultureland": dataLanddetailsAgricultureland,
    "data_Animalhusbendary_businesstype": dataAnimalhusbendaryBusinesstype,
    "data_Animalhusbendary_others0": dataAnimalhusbendaryOthers0,
    "data_Animalhusbendary_cdsregistration": dataAnimalhusbendaryCdsregistration,
    "data_Animalhusbendary_regdetails_regnumber": dataAnimalhusbendaryRegdetailsRegnumber,
    "data_Animalhusbendary_regdetails_cdsunitname": dataAnimalhusbendaryRegdetailsCdsunitname,
    "data_enterpisetype": dataEnterpisetype,
    "data_noofgroupmembers": dataNoofgroupmembers,
    "data_amountinvested": dataAmountinvested,
    "data_Sourceofinvestment": dataSourceofinvestment,
    "data_supportrecived": dataSupportrecived,
    "data_loan": dataLoan,
    "data_loandetails_totalinvestment": dataLoandetailsTotalinvestment,
    "data_businessidea": dataBusinessidea,
    "data_Infra_Infrastructure": dataInfraInfrastructure,
    "data_Infra_Shed": dataInfraShed,
    "data_Infr_wastage": dataInfrWastage,
    "data_Infra_biogas": dataInfraBiogas,
    "data_Infra_equipments": dataInfraEquipments,
    "data_Infra_others": dataInfraOthers,
    "data_support": dataSupport,
    "data_others2": dataOthers2,
    "data_MGNREGAsupport": dataMgnregAsupport,
    "data_landdetails1_landforgrass": dataLanddetails1Landforgrass,
    "data_landdetails1_qtyofownland": dataLanddetails1Qtyofownland,
    "data_landdetails1_qtyofleasedland": dataLanddetails1Qtyofleasedland,
    "data_landdetails2_siteforworkshed": dataLanddetails2Siteforworkshed,
    "data_landdetails2_qtyofownland": dataLanddetails2Qtyofownland,
    "data_others4": dataOthers4,
    "data_Trainingsrequired": dataTrainingsrequired,
    "data_others3": dataOthers3,
    "data_comments": dataComments,
    "data_nameofcrp": dataNameofcrp,
    "data_Nameofrespondent": dataNameofrespondent,
    "data_meta_instanceID": dataMetaInstanceId,
    "KEY": key,
  };
}

class FamilyDetails {
  String id;
  String dataFamilydetailsNameoffailyfmember;
  String dataFamilydetailsRelation;
  int dataFamilydetailsAgeoffamilymember;
  String dataFamilydetailsEducation;
  String dataFamilydetailsJob;
  String dataFamilydetailsSkill;
  String parentKey;
  String key;

  FamilyDetails({
    required this.id,
    required this.dataFamilydetailsNameoffailyfmember,
    required this.dataFamilydetailsRelation,
    required this.dataFamilydetailsAgeoffamilymember,
    required this.dataFamilydetailsEducation,
    required this.dataFamilydetailsJob,
    required this.dataFamilydetailsSkill,
    required this.parentKey,
    required this.key,
  });

  factory FamilyDetails.fromJson(Map<String, dynamic> json) => FamilyDetails(
    id: json["_id"],
    dataFamilydetailsNameoffailyfmember: json["data_familydetails_nameoffailyfmember"],
    dataFamilydetailsRelation: json["data_familydetails_relation"],
    dataFamilydetailsAgeoffamilymember: json["data_familydetails_ageoffamilymember"],
    dataFamilydetailsEducation: json["data_familydetails_education"],
    dataFamilydetailsJob: json["data_familydetails_job"],
    dataFamilydetailsSkill: json["data_familydetails_skill"],
    parentKey: json["PARENT_KEY"],
    key: json["KEY"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "data_familydetails_nameoffailyfmember": dataFamilydetailsNameoffailyfmember,
    "data_familydetails_relation": dataFamilydetailsRelation,
    "data_familydetails_ageoffamilymember": dataFamilydetailsAgeoffamilymember,
    "data_familydetails_education": dataFamilydetailsEducation,
    "data_familydetails_job": dataFamilydetailsJob,
    "data_familydetails_skill": dataFamilydetailsSkill,
    "PARENT_KEY": parentKey,
    "KEY": key,
  };
}

class Livelihood {
  String id;
  String dataLivelihoodIncomesource;
  int dataLivelihoodNumbers;
  String dataLivelihoodCapitalsource;
  int dataLivelihoodRevenue;
  String parentKey;
  String key;

  Livelihood({
    required this.id,
    required this.dataLivelihoodIncomesource,
    required this.dataLivelihoodNumbers,
    required this.dataLivelihoodCapitalsource,
    required this.dataLivelihoodRevenue,
    required this.parentKey,
    required this.key,
  });

  factory Livelihood.fromJson(Map<String, dynamic> json) => Livelihood(
    id: json["_id"],
    dataLivelihoodIncomesource: json["data_livelihood_incomesource"],
    dataLivelihoodNumbers: json["data_livelihood_numbers"],
    dataLivelihoodCapitalsource: json["data_livelihood_capitalsource"],
    dataLivelihoodRevenue: json["data_livelihood_revenue"],
    parentKey: json["PARENT_KEY"],
    key: json["KEY"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "data_livelihood_incomesource": dataLivelihoodIncomesource,
    "data_livelihood_numbers": dataLivelihoodNumbers,
    "data_livelihood_capitalsource": dataLivelihoodCapitalsource,
    "data_livelihood_revenue": dataLivelihoodRevenue,
    "PARENT_KEY": parentKey,
    "KEY": key,
  };
}

class Products {
  String id;
  String dataProductsPrdct;
  int dataProductsQuantum;
  int dataProductsPrice2;
  String parentKey;
  String key;

  Products({
    required this.id,
    required this.dataProductsPrdct,
    required this.dataProductsQuantum,
    required this.dataProductsPrice2,
    required this.parentKey,
    required this.key,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    id: json["_id"],
    dataProductsPrdct: json["data_products_prdct"],
    dataProductsQuantum: json["data_products_quantum"],
    dataProductsPrice2: json["data_products_price2"],
    parentKey: json["PARENT_KEY"],
    key: json["KEY"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "data_products_prdct": dataProductsPrdct,
    "data_products_quantum": dataProductsQuantum,
    "data_products_price2": dataProductsPrice2,
    "PARENT_KEY": parentKey,
    "KEY": key,
  };
}

class PurchaseOfRawMaterials {
  String id;
  String dataPurchaseofrawmaterialsItemtype;
  int dataPurchaseofrawmaterialsQuantity;
  int dataPurchaseofrawmaterialsPrice;
  String dataPurchaseofrawmaterialsBrand;
  String dataPurchaseofrawmaterialsOwn;
  int dataPurchaseofrawmaterialsRetail;
  int dataPurchaseofrawmaterialsP2;
  int dataPurchaseofrawmaterialsWholesale;
  int dataPurchaseofrawmaterialsP3;
  int dataPurchaseofrawmaterialsGroup;
  int dataPurchaseofrawmaterialsP4;
  int dataPurchaseofrawmaterialsSubsidy;
  int dataPurchaseofrawmaterialsP5;
  String parentKey;
  String key;

  PurchaseOfRawMaterials({
    required this.id,
    required this.dataPurchaseofrawmaterialsItemtype,
    required this.dataPurchaseofrawmaterialsQuantity,
    required this.dataPurchaseofrawmaterialsPrice,
    required this.dataPurchaseofrawmaterialsBrand,
    required this.dataPurchaseofrawmaterialsOwn,
    required this.dataPurchaseofrawmaterialsRetail,
    required this.dataPurchaseofrawmaterialsP2,
    required this.dataPurchaseofrawmaterialsWholesale,
    required this.dataPurchaseofrawmaterialsP3,
    required this.dataPurchaseofrawmaterialsGroup,
    required this.dataPurchaseofrawmaterialsP4,
    required this.dataPurchaseofrawmaterialsSubsidy,
    required this.dataPurchaseofrawmaterialsP5,
    required this.parentKey,
    required this.key,
  });

  factory PurchaseOfRawMaterials.fromJson(Map<String, dynamic> json) => PurchaseOfRawMaterials(
    id: json["_id"],
    dataPurchaseofrawmaterialsItemtype: json["data_purchaseofrawmaterials_itemtype"],
    dataPurchaseofrawmaterialsQuantity: json["data_purchaseofrawmaterials_quantity"],
    dataPurchaseofrawmaterialsPrice: json["data_purchaseofrawmaterials_price"],
    dataPurchaseofrawmaterialsBrand: json["data_purchaseofrawmaterials_brand"],
    dataPurchaseofrawmaterialsOwn: json["data_purchaseofrawmaterials_own"],
    dataPurchaseofrawmaterialsRetail: json["data_purchaseofrawmaterials_retail"],
    dataPurchaseofrawmaterialsP2: json["data_purchaseofrawmaterials_p2"],
    dataPurchaseofrawmaterialsWholesale: json["data_purchaseofrawmaterials_wholesale"],
    dataPurchaseofrawmaterialsP3: json["data_purchaseofrawmaterials_p3"],
    dataPurchaseofrawmaterialsGroup: json["data_purchaseofrawmaterials_group"],
    dataPurchaseofrawmaterialsP4: json["data_purchaseofrawmaterials_p4"],
    dataPurchaseofrawmaterialsSubsidy: json["data_purchaseofrawmaterials_subsidy"],
    dataPurchaseofrawmaterialsP5: json["data_purchaseofrawmaterials_p5"],
    parentKey: json["PARENT_KEY"],
    key: json["KEY"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "data_purchaseofrawmaterials_itemtype": dataPurchaseofrawmaterialsItemtype,
    "data_purchaseofrawmaterials_quantity": dataPurchaseofrawmaterialsQuantity,
    "data_purchaseofrawmaterials_price": dataPurchaseofrawmaterialsPrice,
    "data_purchaseofrawmaterials_brand": dataPurchaseofrawmaterialsBrand,
    "data_purchaseofrawmaterials_own": dataPurchaseofrawmaterialsOwn,
    "data_purchaseofrawmaterials_retail": dataPurchaseofrawmaterialsRetail,
    "data_purchaseofrawmaterials_p2": dataPurchaseofrawmaterialsP2,
    "data_purchaseofrawmaterials_wholesale": dataPurchaseofrawmaterialsWholesale,
    "data_purchaseofrawmaterials_p3": dataPurchaseofrawmaterialsP3,
    "data_purchaseofrawmaterials_group": dataPurchaseofrawmaterialsGroup,
    "data_purchaseofrawmaterials_p4": dataPurchaseofrawmaterialsP4,
    "data_purchaseofrawmaterials_subsidy": dataPurchaseofrawmaterialsSubsidy,
    "data_purchaseofrawmaterials_p5": dataPurchaseofrawmaterialsP5,
    "PARENT_KEY": parentKey,
    "KEY": key,
  };
}

class Sales {
  String id;
  String dataSalesPrdct2;
  int dataSalesQuntum2;
  String dataSalesSalesmethod;
  String parentKey;
  String key;

  Sales({
    required this.id,
    required this.dataSalesPrdct2,
    required this.dataSalesQuntum2,
    required this.dataSalesSalesmethod,
    required this.parentKey,
    required this.key,
  });

  factory Sales.fromJson(Map<String, dynamic> json) => Sales(
    id: json["_id"],
    dataSalesPrdct2: json["data_Sales_prdct2"],
    dataSalesQuntum2: json["data_Sales_quntum2"],
    dataSalesSalesmethod: json["data_Sales_salesmethod"],
    parentKey: json["PARENT_KEY"],
    key: json["KEY"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "data_Sales_prdct2": dataSalesPrdct2,
    "data_Sales_quntum2": dataSalesQuntum2,
    "data_Sales_salesmethod": dataSalesSalesmethod,
    "PARENT_KEY": parentKey,
    "KEY": key,
  };
}
