global class WS_Service_Contract{   
    
   
    global class ServiceContractResult{
        webservice Boolean success;
        webservice String type;
        webservice String errorMessage;
        //webservice String contractNumberHeader;
        webservice Id bFOContractID;
        //webservice Id ServiceContractbFOId; 
        webservice String BOReferenceHeader;
        webservice String BOSystem;
        webservice  List<ServiceLineResult> ServiceLineResults; 
              
        public ServiceContractResult(){
            success=false;
        }
    }
    
    global class Contact{
        
        webservice String GoldenID;
        webservice String firstName;
        webservice String localFirstName;
        webservice String middleInitial;
        webservice String localMiddleInitial;
        webservice String lastName;
        webservice String localLastName;
        webservice String emailAddress;
        webservice String mobilePhone;
        webservice String workPhone;
        
     }
    
    global class ServiceContract{
        webservice  ID      bFOcontractID;
        webservice  String  contractNumberHeader;
        webservice  String  description;
        webservice  ID      soldToAccount;
        webservice  ID      installedAtAccount;
        webservice  ID      billToAccount;
        webservice  Date    contractStartDate;
        webservice  Date    contractEndDate;
        webservice  Decimal contractPrice;
        webservice  String  currencyCode;
        webservice  Boolean isEvergreen;
        webservice  String  leadingBU;
        webservice  String  leadingBUContract;
        webservice  Boolean sendCustomerRenewalNotification;
        webservice  String  ownerSESA;
        webservice  String  salesRepSESA;
        webservice  String  status;
        webservice  Date    PODate;
        webservice  String  PONumber;
        webservice  ID      initialOpportunity;
        webservice  ID      contact;
        webservice  String  RenewedFrom;
        webservice  String  RenewalNotes;
        webservice  String   amendedFrom;
        webservice  String  countryOfBO;
        webservice  String  BOSystem;
        webservice  String  BOReferenceHeader;
        webservice  String  TECH_CreatedBy_BO_user;
        webservice  String  TECH_Last_Modified_By_BO_user;
        webservice  DateTime  TECH_BOLastUpdateTimeStamp;
        webservice  String  TECH_OutboundEvent;
        webservice  Contact soldToContact;
        webservice  Contact billToContact;
        webservice  Contact mainInstalledAtContact; 
        webservice  DateTime cancellationDate;
        webservice  String reasonForCancellation;
        webservice  String canceledUserSESA;
        webservice  String requestCancellationUserSESA;
        webservice  String billingSchedule;
        webservice  String TECH_BOBillToRecordID;
        webservice  String salesOrderNumber;
        
        
        webservice  List<ServiceLine>   serviceLines; 
        
        
        
    }
    global class ServiceContractDetail{
        webservice  ID      bFOcontractID;
        webservice  String  contractNumberHeader;       
        webservice  String  status;
        webservice  String  BOReferenceHeader;
        webservice  String  countryOfBO;
        webservice  String  BOSystem;
        webservice  String  TECH_OutboundEvent;
        webservice  List<ServiceLineDetail>   serviceLine; 
        
    }
    global class ServiceLineResult{
        webservice Boolean success;
        webservice String type;
        webservice String errorMessage;
        //webservice Id ServiceLineId;
        webservice Id bFOContractLineID ;  
        webservice  String  BOReferenceLine ; 
        webservice  String  BOReferenceHeader; 
        webservice String BOSystem;
        //webservice Id ServiceContractbFOId;
        //webservice  String  contractNumberLine;
        webservice List<CoveredProductResult>   CoveredProductResults; 
        
        public ServiceLineResult(){
            success=false;
        }
    }
    
    global class ServiceLine{
    
        webservice  String  contractNumberLine;
        webservice  Id     bFOContractLineID;
        webservice  String  BOReferenceLine;
        webservice  String  parentContractBORef;
        webservice  Id      mainShipToAccount;
        webservice  String  SKUComRef;
        webservice  String  entitlement;
        webservice  Decimal quantity;
        webservice  Decimal contractPrice;  
        webservice  String  currencyCode;   
        webservice  Date    lineStartDate;
        webservice  Date    lineEndDate;
        webservice  String  description;
        webservice  Decimal TECH_UnitPrice;
        webservice  Date TECH_BOLastUpdateTimeStamp;
        webservice String ReasonForCancellation;
        webservice  List<CoveredProduct>    CoveredProducts;        
        
    }
    global class ServiceLineDetail{
    
         webservice  Id     bFOContractLineID;
         webservice  String  contractNumberLine;
         webservice  String  BOReferenceLine;
         webservice  String  parentContractBORef;
         webservice  List<CoveredProductDetail>    CoveredProduct;
    }
    global class CoveredProductResult{
        webservice Boolean success;
        webservice String type;
        webservice String errorMessage;
        webservice ID InstalledProductID;
        webservice String BOReferenceLine;
        webservice String SerialLotNumber;
        webservice String InstalledProductGoldenID;
        //webservice Id coveredProductId;       
        //webservice Id ServiceContractbFOId;
       // webservice Id ServiceLineId;

        
    public CoveredProductResult(){
            success=false;
        }
    }
    global class CoveredProduct{
    
        webservice  String  BOReferenceLine;
        webservice  Id  InstalledProductbFOID;
        webservice  String  InstalledProductGoldenID;
        //webservice  String  SerialLotNumber;// Renamed
        webservice  String  shippedSerialNumber;
        webservice Id productbFOID;
        webservice  Date    InstalledProductStartDate;
        webservice  Date    InstalledProductEndDate;
        webservice  String  BOReferenceCoveredProduct;  
        
        
    }
    global class CoveredProductDetail{
    
        webservice  String  BOReferenceLine;
        webservice  String  InstalledProductGoldenID;
        webservice  String  SerialLotNumber;
        webservice  Date    InstalledProductStartDate;
        webservice  Date    InstalledProductEndDate;
        webservice  String  BOReferenceCoveredProduct;                 
        webservice  ID       InstalledProductID;        
        webservice  String   InstalledProductName;
        webservice  String   warrantyStartDate;
        webservice  String   warrantyEndDate;
        webservice  String   SECommercialRef;
        webservice  DateTime   TECH_FOLastUpdateTimestamp;
        webservice  String   InstalledAtGoldenID;
        webservice  String   InstalledAtName;
        webservice  String   installedAtNameLocal;
        webservice  String   installedAtStreet;
        webservice  String   installedAtStreetLocal;
        webservice  String   installedAtAddAddressInfo;
        webservice  String   installedAtAddAddressInfoLocal;
        webservice  String   installedAtZipCode;
        webservice  String   installedAtCity;
        webservice  String   installedAtLocalCity;
        webservice  String   installedAtCountryCode;
        webservice  String   installedAtStateProvinceCode; 
        webservice  String   uniqueDigitalID; // added by Sagar
        webservice  Date commissioningDateInstallDate;
        webservice  Date dateShipped;
        
    }
    global class  ServiceContractSyncResult{
        
        webservice  String  bFOContractID;
        webservice  Boolean  success;
        webservice  String  errorMessage;
        
    }
    
    //global enum UpdateEvent {ADDASSET, REMOVEASSET, ADDSERVICESKU, REMSERVICESKU ,UPDATEHEADERSTDATE}
    
    Public Static String ServiceContractRT = System.Label.CLAPR15SRV04;
    Public Static String ServiceLineRT = System.Label.CLAPR15SRV03;
    
    public static Map<string , Contact> contactMap = new Map<String,Contact>();
    public static Map<Id , SVMXC__Installed_Product__c> ipObjMap = new Map<Id,SVMXC__Installed_Product__c>();
    public static Map<String , SVMXC__Installed_Product__c> ipObjGoldenIdMap = new Map<String,SVMXC__Installed_Product__c>();
    public static Map<Id , User> userIdMap = new Map<Id,user>();
    public static Map<String , User> userSESAMap = new Map<String,user>();
    public static Map<String , Product2> productMap = new Map<String,Product2>();
    
    public static Set<String> GoldenIDset = new Set<String>();
    public static Set<String> firstNameset = new Set<String>();
    public static Set<String> localFirstNameset = new Set<String>();
    public static Set<String> middleInitialset = new Set<String>();
    public static Set<String> localMiddleInitialset = new Set<String>();
    public static Set<String> lastNameset = new Set<String>();
    public static Set<String> localLastNameset = new Set<String>();
    public static Set<String> emailAddressset = new Set<String>();
    public static Set<String> mobilePhoneset = new Set<String>();
    public static Set<String> workPhoneset = new Set<String>();
    public Static Set<String> AccountIDSet = new Set<String>();
    
    public static ServiceContractResult response = new ServiceContractResult();
    public static Map<id,List<CoveredProductResult>> slidcpResultsMap;
    public static Map<id , String> slidslrefMap = new map<Id, String>();
    public static Set<id> ipneedtomach = new Set<id>();
    
    
    webservice static  ServiceContractResult bulkCreateServiceContracts(ServiceContract request){        
                
            Set<String> sesaset = new Set<String>();                
            response = new ServiceContractResult();
            response.errorMessage ='';
            List<Sobject> conList = new List<Sobject>();
            Boolean hasError = false;
            if(request != null ){                 
                if(mandatoryCheck(request)){
                    
                        if( !checkExistingServiceContract(request)){
                        
                                Savepoint sp = Database.setSavepoint();
                                if(request.soldToAccount != null)
                                AccountIDSet.add(request.soldToAccount);
                                if(request.billToAccount != null)
                                AccountIDSet.add(request.billToAccount);
                                if(request.installedAtAccount != null)
                                AccountIDSet.add(request.installedAtAccount);
                                SVMXC__Service_Contract__c header = new SVMXC__Service_Contract__c();
                                if(request.ownerSESA != null && request.ownerSESA !=''){
                                    sesaset.add(request.ownerSESA);
                                }
                                if(request.salesRepSESA != null && request.salesRepSESA !=''){
                                    sesaset.add(request.salesRepSESA);
                                }
                                if(sesaset != null && sesaset.size()>0)
                                {
                                    for(User u: [select id, SESAExternalID__c from user where SESAExternalID__c in : sesaset ])
                                    {
                                        userSESAMap.put(u.SESAExternalID__c , u);
                                        userIdMap.put(u.id , u);
                                    }
                                }
                                
                                
                                if(request.soldToContact != null){getContactFields(request.soldToContact);}
                                if(request.billToContact != null){getContactFields(request.billToContact);}
                                if(request.mainInstalledAtContact != null){getContactFields(request.mainInstalledAtContact);}
                                
                                if(GoldenIDset.Size()>0 || firstNameset.size()>0 || localFirstNameset.size()>0 || 
                                   middleInitialset.size()>0  || lastNameset.size()>0 ||
                                   localLastNameset.size()>0 || emailAddressset.size()>0 || mobilePhoneset.size()>0 || workPhoneset.size()>0 )
                                {
                                         String Querystr = getContactQuery();                        
                                         conList = Database.query(Querystr);
                                         System.debug('\n SCLog : '+conList.size());                         
                                         System.debug('\n SCLog : '+conList);
                                }
                                
                                
                                SVMXC__Service_Contract__c sctoCreate =ContactInfo(request, getServiceContractHeader(request,ServiceContractRT) ,conList );
                                
                                //if(request.RenewedFrom != null )
                                //SVMXC__Service_Contract__c rf = [Select id, ,SVMXC__Renewal_Number__c where id = :request.RenewedFrom];
                                
                                
                                  
                                System.debug('\n SCLog : '+sctoCreate);
                                
                                Database.SaveResult header_result = CreateOrUpdateServices((List<Sobject>)new List<SVMXC__Service_Contract__c>{sctoCreate},'CREATE')[0];
                                String HErroMessage ='';
                                Boolean HeaderSuccess = false;
                                if (!header_result.isSuccess()) {                   
                                    hasError = true;
                                    for(Database.Error err : header_result.getErrors()) {
                                        HErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                                    }
                                    response.success = false;
                                    response.errorMessage = 'Error on Creation of Service Contract : ' + HErroMessage;     
                                    response.BOReferenceHeader =sctoCreate.BackOfficeReference__c; 
                                    response.BOSystem = sctoCreate.BackOfficeSystem__c;                        
                                    response.type ='CREATE';
                                    System.debug('\n CLog : Error '+HErroMessage);              
                                    
                                }
                                else{
                                    
                                    header =[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                                    SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                                    LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                                    PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                                    CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId from SVMXC__Service_Contract__c where id = : header_result.getId() ];
                                    response.bFOContractID = header.id;                     
                                    response.success = true; 
                                    response.BOReferenceHeader = header.BackOfficeReference__c; 
                                    response.BOSystem = header.BackOfficeSystem__c; 
                                    response.type ='CREATE';
                                    response.ServiceLineResults = new   List<ServiceLineResult>(); 
                                    HeaderSuccess = true;
                                }
                                
                                if(HeaderSuccess){                  
                                    // Processing Service Lines
                                    List<SVMXC__Service_Contract__c> servicelineslist =new List<SVMXC__Service_Contract__c>();
                                    List<ServiceLineResult> servicelineResuts = new List<ServiceLineResult>();
                                    Map<string, List<CoveredProduct>> slbrefCPListMap = new Map<string,List<CoveredProduct>>();
                                    set<String> errbref = new set<String>();
                                    Set<id> slidset = new Set<id>();
                                    Map<String , id> slrefslidMap = new map<String, id>();
                                    
                                    Set<String> ipGoldenIdset = new Set<String>(); 
                                    Set<String> productExtIdset = new Set<String>();
                                    Set<id> ipIdSet = new Set<id>();
                                    
                                    /*
                                    if(request.serviceLines != null && request.serviceLines.size()>0){ 
                                        
                                        for(ServiceLine usl: request.serviceLines){
                                            if(usl.SKUComRef != null && usl.SKUComRef !='')
                                             productExtIdset.add(usl.SKUComRef);
                                        }
                                    }
                                    
                                    if(productExtIdset != null && productExtIdset.size()>0){
                                        
                                        for(Product2 prod : [select id, ExtProductId__c from Product2 where ExtProductId__c in : productExtIdset])
                                        {
                                            productMap.put(prod.ExtProductId__c,prod);
                                        }
                                    }
                                    
                                    System.debug('\n SC Log: '+productMap);
                                    */
                                    if(request.serviceLines != null && request.serviceLines.size()>0){ 
                                        servicelineslist.addAll(getServiceLines(request.serviceLines,ServiceLineRT,header.id));
                                        for(ServiceLine usl: request.serviceLines){
                                            if(usl.BOReferenceLine !=null && usl.BOReferenceLine !=''){
                                                if(usl.CoveredProducts != null && usl.CoveredProducts.size()>0)
                                                    slbrefCPListMap.put(usl.BOReferenceLine,usl.CoveredProducts);
                                            }
                                        }
                                    }
                                    
                                    if(servicelineslist != null && servicelineslist.size()>0)
                                    {
                                        Database.SaveResult[] chaild_results = CreateOrUpdateServices((List<Sobject>)servicelineslist,'CREATE');
                                        for(Integer k=0;k<chaild_results.size();k++ )
                                        {
                                            Database.SaveResult sr =chaild_results[k];
                                            ServiceLineResult childresult = new ServiceLineResult();
                                            if(!sr.isSuccess())
                                            {
                                                hasError = true;
                                                    String Message ='';
                                                    for(Database.Error err : sr.getErrors()) {
                                                        Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                                    }
                                                                                            
                                                    childresult.success = false;
                                                    childresult.type = 'CREATE';
                                                    childresult.errorMessage = Message;
                                                    childresult.BOReferenceLine= servicelineslist[k].BackOfficeReference__c; 
                                                    //errSLResult.ServiceContractbFOId =servicelineslist[k].ParentContract__c;
                                                    childresult.BOReferenceHeader = header.BackOfficeReference__c;
                                                    childresult.BOSystem = header.BackOfficeSystem__c;
                                                
                                                   errbref.add(servicelineslist[k].BackOfficeReference__c);
                                            }
                                            else{
                                                    
                                                    childresult.success = true;
                                                    childresult.type = 'CREATE';    
                                                    childresult.bFOContractLineID= sr.getId() ; 
                                                    slidset.add(sr.getId());                                
                                                    childresult.BOReferenceLine= servicelineslist[k].BackOfficeReference__c; 
                                                    //errSLResult.ServiceContractbFOId =servicelineslist[k].ParentContract__c;
                                                    childresult.BOReferenceHeader = header.BackOfficeReference__c;
                                                    childresult.BOSystem = header.BackOfficeSystem__c;
                                                    slrefslidMap.put(servicelineslist[k].BackOfficeReference__c,sr.getId() );
                                                    slidslrefMap.put(sr.getId(),servicelineslist[k].BackOfficeReference__c);
                                                
                                            }
                                            
                                            servicelineResuts.add(childresult);
                                            
                                        }
                                        List<SVMXC__Service_Contract_Products__c>  scpList = new List<SVMXC__Service_Contract_Products__c>();
                                        slidcpResultsMap = new Map<id,List<CoveredProductResult>>();
                                        
                                        for(String st: slbrefCPListMap.keyset()){
                                            if(!errbref.contains(st))
                                            {
                                                
                                                for(CoveredProduct ucp :slbrefCPListMap.get(st)){
                                                    if(ucp.InstalledProductGoldenID != null && ucp.InstalledProductGoldenID != '')
                                                    ipGoldenIdset.add(ucp.InstalledProductGoldenID);
                                                    if(ucp.InstalledProductbFOID != null )
                                                    ipIdSet.add(ucp.InstalledProductbFOID);
                                                }
                                                
                                            }
                                        }
                                        if(ipGoldenIdset != null && ipGoldenIdset.size()>0)
                                        {   
                                            getIPBaseOnGodenId(ipGoldenIdset);
                                        }
                                        if(ipIdSet != null && ipIdSet.size()>0){                            
                                            getIPBaseOnId(ipIdSet);                     
                                        }
                                        for(String st: slbrefCPListMap.keyset()){
                                            if(!errbref.contains(st))
                                            {
                                                List<CoveredProduct> ucplist = slbrefCPListMap.get(st);
                                                List<CoveredProduct> tempcp = new List<CoveredProduct>();
                                                for(CoveredProduct cpu: ucplist){
                                                    if(cpu.InstalledProductbFOID != null)
                                                    {
                                                        System.debug('\n !!!!!!');
                                                        tempcp.add(cpu);
                                                    }
                                                    else if(cpu.InstalledProductGoldenID != null && cpu.InstalledProductGoldenID!='' /*&& ipObjGoldenIdMap.containskey(cpu.InstalledProductGoldenID)*/){
                                                        System.debug('\n !!!!!!');
                                                        tempcp.add(cpu);                                        
                                                    }else if (cpu.productbFOID != null){ // Yassine B 18/05/2015 (wide condition about shippedSerialNumber and productbFOID)- START
                                                        System.debug('\n !!!!!!');
                                                        tempcp.add(cpu);   
                                                    }
                                                    else if(cpu.shippedSerialNumber != null && cpu.shippedSerialNumber !=''){
                                                        System.debug('\n !!!!!!');
                                                        tempcp.add(cpu);    
                                                    }// Yassine B 18/05/2015 (wide condition about shippedSerialNumber and productbFOID)- END
                                                    else{
                                                        System.debug('\n !!!!!!');
                                                        CoveredProductResult errcpr = new CoveredProductResult();
                                                        errcpr.success = false;
                                                        errcpr.type ='CREATE';
                                                        errcpr.errorMessage = 'pre-requiste is not fullfilled ';
                                                        errcpr.BOReferenceLine =st;
                                                        hasError = true;
                                                        if(slidcpResultsMap.containskey(slrefslidMap.get(st)))
                                                        {
                                                            slidcpResultsMap.get(slrefslidMap.get(st)).add(errcpr);
                                                            
                                                        }
                                                        else{
                                                            slidcpResultsMap.put(slrefslidMap.get(st), new List<CoveredProductResult>{errcpr});
                                                        }
                                                        
                                                    }
                                                
                                                }
                                                System.debug('\n CLog:  '+tempcp.size());
                                                if(tempcp != null && tempcp.size()>0)
                                                scpList.AddAll(getServiceContractProduct(tempcp, slrefslidMap.get(st)));                                       
                                                
                                            }
                                        }
                                        if(scpList != null && scpList.size()>0){                                
                                           Boolean iserr = createCoveredProduct(scpList,'CREATE'); 
                                            if(iserr)
                                            hasError = true;
                                        }
                                        for(ServiceLineResult slr:servicelineResuts){
                                            
                                            if(slr.bFOContractLineID != null && slidcpResultsMap.containskey(slr.bFOContractLineID))
                                            {
                                                slr.CoveredProductResults =  slidcpResultsMap.get(slr.bFOContractLineID);
                                            }                                
                                        }
                                        if(servicelineResuts != null && servicelineResuts.size()>0)
                                        {
                                            response.ServiceLineResults = servicelineResuts;
                                        }
                                    }
                                    
                                }

                                    if(hasError)
                                    {
                                        Database.rollback(sp);
                                        RollBackProcess('CREATE');
                                    }
                                    else{
                                        System.debug('\n CLog: ipneed to match '+ipneedtomach);
                                        if(ipneedtomach!= null && ipneedtomach.size()>0)
                                        {
                                            List<SVMXC__Service_Contract_Products__c> cplist = new List<SVMXC__Service_Contract_Products__c>();
                                            for(SVMXC__Service_Contract_Products__c cpObj: [select id,SVMXC__Installed_Product__c , ShippedSerialNumber__c ,SVMXC__Product__c  from SVMXC__Service_Contract_Products__c where id in : ipneedtomach])
                                            {
                                                if(cpObj.SVMXC__Installed_Product__c == null && cpObj.ShippedSerialNumber__c != null && cpObj.SVMXC__Product__c!= null)
                                                {
                                                    cplist.add(cpObj);
                                                }
                                            
                                            }
                                            
                                            if(cplist!= null && cplist.size()>0){
                                                System.debug('\n CLog: cp list '+cplist);
                                                // For defect QC 11653
                                                // Start
                                                try{
                                                    AP_IPAssociationHandler.attachIPForConcurrentOrders(cplist);
                                                }
                                                catch(exception ex){
                                                    
                                                    Database.rollback(sp);
                                                    RollBackProcess('CREATE');
                                                    response.errorMessage +=ex.getMessage();
                                                }
                                                // End
                                                System.debug('\n CLog: cp list ');
                                            }
                                        
                                        }                       
                                    }
                            
                        }
                        else{
                            response.success = false;
                            response.type = 'CREATE';
                            response.errorMessage = 'Service Contract already existing for '+request.BOSystem +' and Back office ref='+request.BOReferenceHeader;
                                    
                        }
                    
                }                  
                
            }
            else{                   
                response.success = false;
                response.type = 'CREATE';
                response.errorMessage = 'Please send Service Contract';
            }
    
    
        return response;
    }
    
    public static  Boolean checkExistingServiceContract(ServiceContract request){
        
                    List<SVMXC__Service_Contract__c> esclist =[select id,BackOfficeSystem__c,BackOfficeReference__c  from SVMXC__Service_Contract__c where BackOfficeReference__c =:request.BOReferenceHeader and BackOfficeSystem__c=:request.BOSystem  and RecordTypeId =:ServiceContractRT];
                    if(esclist != null && esclist.size()>0)
                        return true;
                    else{return false;}
    
    }
    
    public static Boolean  createCoveredProduct(List<SVMXC__Service_Contract_Products__c> scpList, String event){
    
        Boolean hasError = false;
        
        if(scpList != null && scpList.size()>0){
            Database.SaveResult[] scp_results;
            if(event == 'CREATE')
            scp_results = CreateOrUpdateServices((List<Sobject>)scpList,'CREATE');
            if(event == 'UPDATE')
            scp_results = CreateOrUpdateServices((List<Sobject>)scpList,'UPDATE');
            
            for(Integer k=0;k<scp_results.size();k++ )
            {
                Database.SaveResult sr =scp_results[k];
                if(!sr.isSuccess())
                {
                    hasError = true;
                    String Message ='';
                    for(Database.Error err : sr.getErrors()) {
                        Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                    }
                   
                    CoveredProductResult errcpr = new CoveredProductResult();
                    errcpr.success = false;
                    errcpr.type = event;
                    errcpr.errorMessage = Message;
                    errcpr.BOReferenceLine =   slidslrefMap.get(scpList[k].SVMXC__Service_Contract__c);
                    //errcpr.ServiceLineId = scpList[k].SVMXC__Service_Contract__c;
                    if(scpList[k].SVMXC__Installed_Product__c != null){
                        errcpr.InstalledProductID =scpList[k].SVMXC__Installed_Product__c;
                        errcpr.InstalledProductGoldenID = ipObjMap.get(scpList[k].SVMXC__Installed_Product__c).GoldenAssetId__c;
                        errcpr.SerialLotNumber = ipObjMap.get(scpList[k].SVMXC__Installed_Product__c).SVMXC__Serial_Lot_Number__c;
                    }
                    
                    if(slidcpResultsMap.containskey(scpList[k].SVMXC__Service_Contract__c))
                    {
                        slidcpResultsMap.get(scpList[k].SVMXC__Service_Contract__c).add(errcpr);
                        
                    }
                    else{
                        slidcpResultsMap.put(scpList[k].SVMXC__Service_Contract__c, new List<CoveredProductResult>{errcpr});
                    }                   
                    
                    
                }
                else{
                    System.debug('\n CLog: CP id '+sr.getId());
                        //scpidSet.add(sr.getId());   
                            ipneedtomach.add(sr.getId());                                   
                        CoveredProductResult succcpr = new CoveredProductResult();
                        succcpr.success = true;
                        succcpr.type = event;
                        succcpr.BOReferenceLine =   slidslrefMap.get(scpList[k].SVMXC__Service_Contract__c);
                        if(scpList[k].SVMXC__Installed_Product__c != null){
                            succcpr.InstalledProductID =scpList[k].SVMXC__Installed_Product__c;
                            succcpr.InstalledProductGoldenID = ipObjMap.get(scpList[k].SVMXC__Installed_Product__c).GoldenAssetId__c;
                            succcpr.SerialLotNumber = ipObjMap.get(scpList[k].SVMXC__Installed_Product__c).SVMXC__Serial_Lot_Number__c;
                        }                       
                         if(slidcpResultsMap.containsKey(scpList[k].SVMXC__Service_Contract__c))
                        {
                            slidcpResultsMap.get(scpList[k].SVMXC__Service_Contract__c).add(succcpr);
                            
                        }
                        else{
                            slidcpResultsMap.put(scpList[k].SVMXC__Service_Contract__c, new List<CoveredProductResult>{succcpr});
                        }
                        
                    
                }
                
            }
                                
        }
        
        return hasError;
    
    
    }
    
    public static void getIPBaseOnId(Set<id> ipidSet){
        
        for(SVMXC__Installed_Product__c ipobj: [Select id, GoldenAssetId__c,SVMXC__Company__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,                                         SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,
                                                SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StateProvince__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.LocalCounty__c ,SVMXC__Serial_Lot_Number__c,SVMXC__Company__r.StateProvince__r.StateProvinceCode__c  from SVMXC__Installed_Product__c  where id in :ipIdSet ]){
            ipObjMap.put(ipobj.id , ipobj);
            ipObjGoldenIdMap.put(ipobj.GoldenAssetId__c, ipobj);
        }
        
    }
    public static void getIPBaseOnGodenId(Set<String> ipGoldenIdset){
        
         for(SVMXC__Installed_Product__c ipobj: [Select id, GoldenAssetId__c,SVMXC__Company__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,                                        SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,
                                                SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StateProvince__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.LocalCounty__c ,SVMXC__Serial_Lot_Number__c,SVMXC__Company__r.StateProvince__r.StateProvinceCode__c  from SVMXC__Installed_Product__c  where GoldenAssetId__c in :ipGoldenIdset ]){
            ipObjMap.put(ipobj.id , ipobj);
            ipObjGoldenIdMap.put(ipobj.GoldenAssetId__c, ipobj);
        }
        
    }
    
    public Static void RollBackProcess(String type){
    
    
            response.success = false;
            if(type == 'CREATE')
            response.bFOContractID = null;
            //if(response.errorMessage == '')
            //response.errorMessage = 'Validation error occurred during ' + type  + ' call to bFS, please update data and try again.';
            if(response.ServiceLineResults != null ){
                for(ServiceLineResult slr: response.ServiceLineResults){
                
                    slr.success = false;
                    slr.bFOContractLineID =null;
                    if(slr.CoveredProductResults != null && slr.CoveredProductResults.size()>0)
                    {
                        for(CoveredProductResult cpr:slr.CoveredProductResults)
                        {
                            cpr.success = false;
                        }
                    }
                
                }
            }
    
    
    }
    
    public class MandatoryFields{
        public Boolean isMFPass{get;set;}
        public String fields{get;set;}
        
    }
    
    public static Boolean mandatoryCheck(ServiceContract request)
    {
        Boolean isCheckPass = true;
        String mandatoryHeaderFields  ='';
        
        if(request.contractNumberHeader == null || request.contractNumberHeader == ''){
            mandatoryHeaderFields +='contractNumberHeader ';
            isCheckPass = false;
        }
        if(request.description == null || request.description == ''){
            mandatoryHeaderFields +='description ';
            isCheckPass = false;
        }
        if(request.soldToAccount == null ){
            mandatoryHeaderFields +='soldToAccount ';
            isCheckPass = false;
        }
        if(request.billToAccount == null ){
            mandatoryHeaderFields +='billToAccount ';
            isCheckPass = false;
        }
        if(request.contractStartDate == null ){
            mandatoryHeaderFields +='contractStartDate ';
            isCheckPass = false;
        }
        if(request.contractEndDate == null ){
            mandatoryHeaderFields +='contractEndDate ';
            isCheckPass = false;
        }
        if(request.contractPrice == null ){
            mandatoryHeaderFields +='contractPrice ';
            isCheckPass = false;
        }
        /*
        if(request.sendCustomerRenewalNotification == null ){
            mandatoryHeaderFields +='sendCustomerRenewalNotification ';
            isCheckPass = false;
        }*/
        if(request.currencyCode == null || request.currencyCode == ''){
            mandatoryHeaderFields +='currencyCode ';
            isCheckPass = false;
        }
        if(request.ownerSESA == null || request.ownerSESA == ''){
            mandatoryHeaderFields +='ownerSESA ';
            isCheckPass = false;
        }
        if(request.countryOfBO == null || request.countryOfBO == ''){
            mandatoryHeaderFields +='countryOfBO ';
            isCheckPass = false;
        }
        if(request.BOSystem == null || request.BOSystem == ''){
            mandatoryHeaderFields +='BOSystem ';
            isCheckPass = false;
        }
        if(request.BOReferenceHeader == null || request.BOReferenceHeader == ''){
            mandatoryHeaderFields +='BOReferenceHeader ';
            isCheckPass = false;
        }
        
        if(request.BOReferenceHeader == null || request.BOReferenceHeader == ''){
            mandatoryHeaderFields +='BOReferenceHeader ';
            isCheckPass = false;
        }
        
        
        List<ServiceLineResult> servicelineResuts = new List<ServiceLineResult>();
        
        if(request.serviceLines != null &&  request.serviceLines.size()>0)
        {
            
            for(ServiceLine usl :request.serviceLines){
                
                Boolean isCheck = true;
                String mandatoryChildFields='';
                if(usl.contractNumberLine == null || usl.contractNumberLine == ''){
                    mandatoryChildFields +='contractNumberLine ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.BOReferenceLine == null || usl.BOReferenceLine == ''){
                    mandatoryChildFields +='BOReferenceLine ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.parentContractBORef == null || usl.parentContractBORef == ''){
                    mandatoryChildFields +='BOReferenceLine ';
                    isCheck = false;
                    isCheckPass = false;
                }
                
                if(usl.SKUComRef == null || usl.SKUComRef == ''){
                    mandatoryChildFields +='SKUComRef ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.quantity == null ){
                    mandatoryChildFields +='quantity ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.contractPrice == null ){
                    mandatoryChildFields +='contractPrice ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.currencyCode == null || usl.currencyCode == ''){
                    mandatoryChildFields +='currencyCode ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.lineStartDate == null ){
                    mandatoryChildFields +='lineStartDate ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.lineEndDate == null ){
                    mandatoryChildFields +='lineEndDate ';
                    isCheck = false;
                    isCheckPass = false;
                }
                if(usl.description == null || usl.description == ''){
                    mandatoryChildFields +='description ';
                    isCheck = false;
                    isCheckPass = false;
                }
                
                if(!isCheck)
                {
                    ServiceLineResult childResult = new ServiceLineResult();
                    childResult.success = false;
                    childResult.type = 'CREATE';
                    childResult.BOReferenceLine = usl.BOReferenceLine;
                    childResult.BOReferenceHeader = usl.parentContractBORef;
                    childResult.BOSystem = request.BOSystem ;
                    childResult.errorMessage = 'Error on Creation of Service Contract Mandatory Fields are : ' + mandatoryChildFields; 
                    servicelineResuts.add(childResult);
                }
                
            }
            
            
        }
        if(!isCheckPass)
        {
            
                    response.success = false;
                    response.errorMessage = 'Error on Creation of Service Contract Mandatory Fields are : ' + mandatoryHeaderFields;
                    response.ServiceLineResults  = new List<ServiceLineResult>();
                    response.ServiceLineResults  = servicelineResuts;
        }
        
        
        return isCheckPass;
        
    }
    webservice static  ServiceContractResult bulkUpdateServiceContracts(ServiceContract request){
         response = new ServiceContractResult();
         response.errorMessage ='';
         response.ServiceLineResults =new List<ServiceLineResult>();
         Savepoint sp = Database.setSavepoint();
          Boolean hasError = false;
           slidcpResultsMap = new Map<id,List<CoveredProductResult>>();
        if(request != null && request.bFOcontractID != null){         
           
           
            SVMXC__Service_Contract__c header = new SVMXC__Service_Contract__c();
            SVMXC__Service_Contract__c sctoupdated = getServiceContractHeader(request,ServiceContractRT);
            Set<string> sesaset = new Set<String>();
            
            header =[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                        SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                        LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                        PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                        CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId from SVMXC__Service_Contract__c where id = : request.bFOcontractID  ];
            
            if(request.canceledUserSESA != null && request.canceledUserSESA !=''){
                        sesaset.add(request.canceledUserSESA);
            }
            if(request.requestCancellationUserSESA != null && request.requestCancellationUserSESA !=''){
                sesaset.add(request.requestCancellationUserSESA);
            }
            if(sesaset != null && sesaset.size()>0)
            {
                for(User u: [select id, SESAExternalID__c from user where SESAExternalID__c in : sesaset ])
                {
                    userSESAMap.put(u.SESAExternalID__c , u);
                    userIdMap.put(u.id , u);
                }
            }
             // Amendment 
            // Contract status Request for cancellation
            // Contract status Cancelled
            if(request.status == 'RqCANC' || request.status =='CAN' ){
                    if(request.status =='RqCANC' )
                    {
                        sctoupdated.Status__c = 'RqCANC';
                    }
                    if(request.status =='CAN' )
                    {
                        sctoupdated.Status__c = 'CAN';
                    }
                    sctoupdated.Cancellation_Date__c  = request.cancellationDate;
                    sctoupdated.ReasonForCancellation__c  =request.reasonForCancellation;
                    if(userSESAMap.containskey(request.canceledUserSESA))
                    {
                        sctoupdated.SVMXC__Canceled_By__c  =userSESAMap.get(request.canceledUserSESA).id;
                    }
                    if(userSESAMap.containskey(request.requestCancellationUserSESA))
                    {
                        sctoupdated.Requestcancellationby__c  =userSESAMap.get(request.requestCancellationUserSESA).id;   
                    }
                    System.debug('*************'+sctoupdated);
                    Database.SaveResult header_result = CreateOrUpdateServices((List<Sobject>)new List<SVMXC__Service_Contract__c>{sctoupdated},'UPDATE')[0];
                    System.debug('*************'+[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                        SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                        LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                        PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                        CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId from SVMXC__Service_Contract__c where id = : request.bFOcontractID]);
                    String HErroMessage ='';
                    Boolean HeaderSuccess = false;
                    if (!header_result.isSuccess()) {
                                    
                       hasError = true;
                        for(Database.Error err : header_result.getErrors()) {
                            HErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                        }
                        response.success = false;
                        response.errorMessage = 'Error on Update of Service Contract : ' + HErroMessage;     
                        response.BOReferenceHeader =header.BackOfficeReference__c; 
                        response.BOSystem = header.BackOfficeSystem__c;                        
                        response.type ='UPDATE';
                        System.debug('\n CLog : Error '+HErroMessage);
                        
                        
                    }
                    else{
                        
                        response.bFOContractID = header.id;                     
                        response.success = true; 
                        response.BOReferenceHeader = header.BackOfficeReference__c; 
                        response.BOSystem = header.BackOfficeSystem__c; 
                        response.type ='UPDATE';
                        response.ServiceLineResults = new   List<ServiceLineResult>(); 
                        HeaderSuccess = true;
                    }
                
            }            
            else
            {            
                
                    System.debug('\n Clog: Create / update Method ');
                //{
                        
                        Map<id, SVMXC__Service_Contract__c> slidrecmap = new Map<id,SVMXC__Service_Contract__c>();
                        Set<id> updateslidset = new Set<id>();
                        List<ServiceLineResult> slresuts = new List<ServiceLineResult>();                        
                        List<SVMXC__Service_Contract__c> tobeupdate = new List<SVMXC__Service_Contract__c>();
                        List<SVMXC__Service_Contract__c> tobecreate = new List<SVMXC__Service_Contract__c>();
                        Map<id,List<CoveredProduct>> slidListCpunitMap = new Map<id,List<CoveredProduct>>();
                                                
                        if(request.serviceLines != null && request.serviceLines.size()>0)
                        {                            
                            List<ServiceLine> usltoupdate = new List<ServiceLine>();
                            List<ServiceLine> usltocreate = new List<ServiceLine>();
                            Set<String>     productExtIdset = new Set<String>();
                            for(ServiceLine usl: request.serviceLines )
                            {
                                if(usl.bFOContractLineID != null )
                                {
                                    usltoupdate.add(usl);
                                    updateslidset.add(usl.bFOContractLineID);
                                    if(usl.CoveredProducts != null && usl.CoveredProducts.size()>0)
                                        slidListCpunitMap.put(usl.bFOContractLineID,usl.CoveredProducts);
                                }
                                else{
                                    usltocreate.add(usl);
                                }
                                //if(usl.SKUComRef != null && usl.SKUComRef !='')
                                 //productExtIdset.add(usl.SKUComRef);
                            }                           
                            /*
                            if(productExtIdset != null && productExtIdset.size()>0){
                                
                                for(Product2 prod : [select id, ExtProductId__c from Product2 where ExtProductId__c in : productExtIdset])
                                {
                                    productMap.put(prod.ExtProductId__c,prod);
                                }
                            }
                            */
                            // Service Lines Update Process Starts
                            if(usltoupdate!= null && usltoupdate.size()>0)
                            {
                                System.debug('\n Clog: Service lines update process Started');
                                System.debug('\n Clog:'+usltoupdate.size());
                                List<SVMXC__Service_Contract__c> exslList =[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                            SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                            LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                            PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                            CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId,ParentContract__c,ParentContract__r.BackOfficeReference__c,ParentContract__r.BackOfficeSystem__c  from SVMXC__Service_Contract__c where id in :updateslidset ];
                                slidrecmap.putAll(exslList);
                                System.debug('\n Log : desc :  SL to be updated '+usltoupdate);
                            
                                tobeupdate.addAll(getServiceLines(usltoupdate,null,  request.bFOcontractID));
                                Database.SaveResult[] slu_results = CreateOrUpdateServices((List<Sobject>)tobeupdate,'UPDATE');
                                Set<id> slsuccid = new Set<id>();
                                for(Integer k=0;k<slu_results.size();k++ )
                                {
                                    Database.SaveResult sr =slu_results[k];
                                    if(!sr.isSuccess())
                                    {
                                            hasError = true;
                                            String Message ='';
                                            for(Database.Error err : sr.getErrors()) {
                                                Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                            }
                                            ServiceLineResult errSlResult = new ServiceLineResult();
                                            errSlResult.success = false;
                                            errSlResult.type = 'UPDATE';
                                            errSlResult.errorMessage = Message;
                                            errSlResult.bFOContractLineID = tobeupdate[k].id;
                                            
                                            errSlResult.BOReferenceLine= slidrecmap.get(tobeupdate[k].id).BackOfficeReference__c; 
                                            //errSLResult.ServiceContractbFOId =servicelineslist[k].ParentContract__c;
                                            errSLResult.BOReferenceHeader = slidrecmap.get(tobeupdate[k].id).ParentContract__r.BackOfficeReference__c;
                                            errSLResult.BOSystem = slidrecmap.get(tobeupdate[k].id).ParentContract__r.BackOfficeSystem__c;
                                            errSLResult.CoveredProductResults = new List<CoveredProductResult>();
                                            slidslrefMap.put(tobeupdate[k].id, slidrecmap.get(tobeupdate[k].id).BackOfficeReference__c);
                                            slresuts.add(errSLResult);
                                            
                                            
                                    }
                                    else{
                                    
                                        ServiceLineResult succSlResult = new ServiceLineResult();
                                        succSlResult.success = true;
                                        succSlResult.type = 'UPDATE';                    
                                        succSlResult.bFOContractLineID= sr.getId() ;
                                        succSlResult.BOReferenceLine= slidrecmap.get(sr.getId()).BackOfficeReference__c;
                                        succSlResult.BOReferenceHeader = slidrecmap.get(sr.getId()).ParentContract__r.BackOfficeReference__c;
                                        succSlResult.BOSystem = slidrecmap.get(sr.getId()).ParentContract__r.BackOfficeSystem__c;
                                        succSlResult.CoveredProductResults = new List<CoveredProductResult>();
                                        slidslrefMap.put(sr.getId(),slidrecmap.get(sr.getId()).BackOfficeReference__c);
                                        slresuts.add(succSlResult);  
                                        slsuccid.add(sr.getId() );
                                        //slrefslidMap.put(slidrecmap.get(sr.getId()).BackOfficeReference__c,sr.getId() );
                                        
                                    
                                    }
                                    
                                }
                                System.debug('\n Log : desc :  SL to be updated Results '+slresuts);
                                /*if(slresuts != null && slresuts.size()>0)
                                {
                                    response.ServiceLineResults.addAll(slresuts) ;                              
                                }*/
                                 //Contract Products Process Starts
                                Set<id> ipobjidset = new Set<id>();
                                Set<String> ipobjgidset = new Set<String>();
                                List<SVMXC__Service_Contract_Products__c> existingCpList = [select id,SVMXC__Start_Date__c, SVMXC__End_Date__c ,BackOfficeReference__c, SVMXC__Installed_Product__c,SVMXC__Installed_Product__r.GoldenAssetId__c,SVMXC__Service_Contract__c,SVMXC__Product__c,ShippedSerialNumber__c from SVMXC__Service_Contract_Products__c where SVMXC__Service_Contract__c in : updateslidset ];
                                Map<id,List<SVMXC__Service_Contract_Products__c>> slidListCPMap = new Map<id,List<SVMXC__Service_Contract_Products__c>>();//existing covered products
                                System.debug('\n Clog:'+existingCpList.size());
                                if(existingCpList!= null && existingCpList.size()>0)
                                {
                                    for(SVMXC__Service_Contract_Products__c cpobj:existingCpList){
                                        if(slidListCPMap.containskey(cpobj.SVMXC__Service_Contract__c))
                                        {
                                            slidListCPMap.get(cpobj.SVMXC__Service_Contract__c).add(cpobj);
                                        }
                                        else{
                                            slidListCPMap.put(cpobj.SVMXC__Service_Contract__c,new List<SVMXC__Service_Contract_Products__c>{cpobj});
                                        }
                                        if(cpobj.SVMXC__Installed_Product__c != null)
                                        {
                                            ipobjidset.add(cpobj.SVMXC__Installed_Product__c);
                                            ipobjgidset.add(cpobj.SVMXC__Installed_Product__r.GoldenAssetId__c);
                                        }
                                        
                                    }
                                
                                }
                                
                                Map<id,List<CoveredProduct>> slidCpunitocreatemap = new Map<id,List<CoveredProduct>>();
                                List<SVMXC__Service_Contract_Products__c> toupdate = new List<SVMXC__Service_Contract_Products__c>();
                                
                                
                                for(Id slid: slidListCpunitMap.keyset()){
                                
                                    for(CoveredProduct ucp :slidListCpunitMap.get(slid)){
                                        if(ucp.InstalledProductGoldenID != null && ucp.InstalledProductGoldenID != '')
                                        ipobjgidset.add(ucp.InstalledProductGoldenID);
                                        if(ucp.InstalledProductbFOID != null )
                                        ipobjidset.add(ucp.InstalledProductbFOID);
                                    }
                                
                                
                                }
                                if(ipobjgidset != null && ipobjgidset.size()>0)
                                {   
                                    getIPBaseOnGodenId(ipobjgidset);
                                }
                                if(ipobjidset != null && ipobjidset.size()>0){                            
                                    getIPBaseOnId(ipobjidset);                      
                                }
                                
                                
                                for(Id slid: slidListCpunitMap.keyset()){
                                    System.debug('\n Clog:'+slid);
                                    List<CoveredProduct> CoveredProductunits = slidListCpunitMap.get(slid);
                                    Map<Id,SVMXC__Service_Contract_Products__c> ipidCpMap = new Map<Id,SVMXC__Service_Contract_Products__c>();
                                    Map<String,SVMXC__Service_Contract_Products__c> boffrefCpMap = new Map<String,SVMXC__Service_Contract_Products__c>();
                                    Map<String,SVMXC__Service_Contract_Products__c> ipidGIdCpMap = new Map<String,SVMXC__Service_Contract_Products__c>();                                    
                                    
                                    if(slidListCPMap.containskey(slid)){
                                        for(SVMXC__Service_Contract_Products__c cpobj:slidListCPMap.get(slid)){
                                            if(cpobj.BackOfficeReference__c != null && cpobj.BackOfficeReference__c !='' )
                                            boffrefCpMap.put(cpobj.BackOfficeReference__c,cpobj);
                                            if(cpobj.SVMXC__Installed_Product__r.GoldenAssetId__c != null && cpobj.SVMXC__Installed_Product__r.GoldenAssetId__c !='')
                                            ipidGIdCpMap.put(cpobj.SVMXC__Installed_Product__r.GoldenAssetId__c,cpobj);
                                            if(cpobj.SVMXC__Installed_Product__c != null)
                                            ipidCpMap.put(cpobj.SVMXC__Installed_Product__c,cpobj);
                                        }
                                    
                                    }
                                    
                                    
                                    for(CoveredProduct cpunit:CoveredProductunits){
                                        
                                        SVMXC__Service_Contract_Products__c cpObject ;
                                        System.debug('\n Clog:'+cpunit);
                                        System.debug('\n Clog: golden id'+cpunit.InstalledProductGoldenID);
                                        System.debug('\n Clog: Ip id'+cpunit.InstalledProductbFOID);
                                        if(cpunit.InstalledProductGoldenID != null && cpunit.InstalledProductGoldenID !='' && ipidGIdCpMap.containskey(cpunit.InstalledProductGoldenID)){
                                            cpObject = ipidGIdCpMap.get(cpunit.InstalledProductGoldenID);                                           
                                        }
                                        else if(cpunit.InstalledProductbFOID != null && ipidCpMap.containskey(cpunit.InstalledProductbFOID)){
                                            cpObject = ipidCpMap.get(cpunit.InstalledProductbFOID);     
                                        }
                                        else if(cpunit.BOReferenceCoveredProduct != null && boffrefCpMap.containskey(cpunit.BOReferenceCoveredProduct)){
                                            cpObject = boffrefCpMap.get(cpunit.BOReferenceCoveredProduct);     
                                        }                                       
                                        if(cpObject!= null)
                                        {                                       
                                            cpObject.SVMXC__Start_Date__c = cpunit.InstalledProductStartDate;
                                            cpObject.SVMXC__End_Date__c = cpunit.InstalledProductEndDate;    
                                            cpObject.ShippedSerialNumber__c = cpunit.shippedSerialNumber;
                                            cpObject.SVMXC__Product__c = cpunit.productbFOID;                                               
                                            toupdate.add(cpObject);
                                        }
                                        else{
                                            System.debug('\n Clog: else part to create cp ');
                                            if(slidCpunitocreatemap.containskey(slid))
                                            {
                                                slidCpunitocreatemap.get(slid).add(cpunit);                                         
                                            }
                                            else{
                                                slidCpunitocreatemap.put(slid,new List<CoveredProduct>{cpunit});        
                                            }
                                        }
                                    
                                    }
                                
                                }
                                if(toupdate!= null && toupdate.size()>0){                               
                                    hasError = createCoveredProduct(toupdate,'UPDATE');
                                    // For defect DEF-6992
                                    // Start
                                    if(!hasError){
                                        try{
                                            AP_IPAssociationHandler.attachIPForConcurrentOrders(toupdate);
                                        }
                                        catch(exception ex){                                        
                                            
                                            response.errorMessage +=ex.getMessage();
                                            hasError = true;
                                        }
                                    }
                                    // End
                                    
                                }
                                System.debug('\n Clog: Ip id'+slidCpunitocreatemap);
                                if(slidCpunitocreatemap != null && slidCpunitocreatemap.size()>0){
                                    List<SVMXC__Service_Contract_Products__c> tocreatcpList = new List<SVMXC__Service_Contract_Products__c>();
                                    for(Id slid:slidCpunitocreatemap.keyset()){
                                        tocreatcpList.AddAll(getServiceContractProduct(slidCpunitocreatemap.get(slid), slid));
                                    }
                                    if(tocreatcpList != null && tocreatcpList.size()>0)
                                    {
                                        Boolean isError  = createCoveredProduct(tocreatcpList,'CREATE');
                                        if(isError)
                                        hasError = true;
                                        // For defect DEF-6992
                                        // Start
                                        if(!hasError){
                                            try{
                                                AP_IPAssociationHandler.attachIPForConcurrentOrders(tocreatcpList);
                                            }
                                            catch(exception ex){                                        
                                                
                                                response.errorMessage +=ex.getMessage();
                                                hasError = true;
                                            }
                                        }
                                        // End
                                        
                                        
                                    }
                                    
                                }
                                
                                for(ServiceLineResult slr:slresuts){
                    
                                        for(Id slid :slidcpResultsMap.keyset()){
                                            
                                            if(slr.bFOContractLineID == slid){
                                                
                                                slr.CoveredProductResults.addAll(slidcpResultsMap.get(slid));
                                            }
                                            
                                            
                                        }
                                                
                                }
                                
                                if(slresuts != null && slresuts.size()>0)
                                {
                                    response.ServiceLineResults.addAll(slresuts) ;                                
                                }
                                
                                
                            }
                            if(usltocreate != null && usltocreate.size()>0){
                                    Set<String> errorsl = new Set<string>();
                                    Set<id> slsuccid = new Set<id>();
                                    Map<String,SVMXC__Service_Contract__c> slrecrecmap = new map<String,SVMXC__Service_Contract__c>();                            
                                    tobecreate.AddAll(getServiceLines(usltocreate,ServiceLineRT,  request.bFOcontractID)); 
                                    Database.SaveResult[] slc_results = CreateOrUpdateServices((List<Sobject>)tobecreate,'CREATE');
                                    List<ServiceLineResult> cslResults = new List<ServiceLineResult>();
                                    System.debug('\n Log : desc :  SL to be Created  '+tobecreate);
                                     Map<String , id> slrefslidMap = new map<String, id>();
                                    for(Integer k=0;k<slc_results.size();k++ )
                                    {
                                        Database.SaveResult sr =slc_results[k];
                                        if(!sr.isSuccess())
                                        {   
                                            hasError = true;
                                            String Message ='';
                                            for(Database.Error err : sr.getErrors()) {
                                                Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                            }
                                            //childErrorMap.put(servicelineslist[k].ParentContract__c ,Message);
                                            
                                            ServiceLineResult errSlResult = new ServiceLineResult();
                                            errSlResult.success = false;
                                            errSlResult.type = 'CREATE';
                                            errSlResult.errorMessage = Message;
                                            errSlResult.BOReferenceLine= tobecreate[k].BackOfficeReference__c; 
                                            //errSLResult.ServiceContractbFOId =servicelineslist[k].ParentContract__c;
                                            errSLResult.BOReferenceHeader = header.BackOfficeReference__c;
                                            errSLResult.BOSystem = header.BackOfficeSystem__c;
                                            cslResults.add(errSLResult);
                                            errorsl.add(tobecreate[k].BackOfficeReference__c);
                                        }
                                        else{
                                            
                                            ServiceLineResult succSlResult = new ServiceLineResult();
                                            succSlResult.success = true;
                                            succSlResult.type = 'CREATE';                    
                                            succSlResult.BOReferenceLine= tobecreate[k].BackOfficeReference__c; 
                                            //succSlResult.ServiceContractbFOId =servicelineslist[k].ParentContract__c;
                                            succSlResult.bFOContractLineID= sr.getId() ;
                                            
                                            succSlResult.CoveredProductResults = new List<CoveredProductResult>();
                                            succSlResult.BOReferenceHeader = header.BackOfficeReference__c;
                                            succSlResult.BOSystem = header.BackOfficeSystem__c;
                                            cslResults.add(succSlResult);
                                            slsuccid.add(sr.getId() );
                                             slrefslidMap.put(tobecreate[k].BackOfficeReference__c,sr.getId() );
                                            
                                        }
                                        
                            
                                    }
                                    System.debug('\n Log : desc :  SL to be Created Results '+cslResults);
                                    List<SVMXC__Service_Contract__c> cslList =[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                            SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                            LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                            PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                            CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId,ParentContract__c,ParentContract__r.BackOfficeReference__c,ParentContract__r.BackOfficeSystem__c  from SVMXC__Service_Contract__c where id in :slsuccid ];
                                    
                                    for(SVMXC__Service_Contract__c slObj: cslList){
                                    
                                        slrecrecmap.put(slObj.BackOfficeReference__c, slObj);
                                    }
                                    List<SVMXC__Service_Contract_Products__c> tocreatcpList = new List<SVMXC__Service_Contract_Products__c>();
                                   
                                    Set<String> ipGoldenIdset = new Set<String>();
                                    Set<Id> ipIdSet = new Set<Id>();
                                    for(ServiceLine usl: usltocreate){
                                    
                                        if(usl.CoveredProducts != null && usl.CoveredProducts.size()>0){
                                        
                                            if(!errorsl.contains(usl.BOReferenceLine))
                                            {
                                                //tocreatcpList.AddAll(getServiceContractProduct(usl.CoveredProducts,slrecrecmap.get(usl.BOReferenceLine).id ));
                                                for(CoveredProduct ucp :usl.CoveredProducts){
                                                    //if(ucp.InstalledProductGoldenID != null )
                                                    //ipGoldenIdset.add(ucp.InstalledProductGoldenID);
                                                    
                                                    if(ucp.InstalledProductGoldenID != null && ucp.InstalledProductGoldenID != '')
                                                    ipGoldenIdset.add(ucp.InstalledProductGoldenID);
                                                    if(ucp.InstalledProductbFOID != null )
                                                    ipIdSet.add(ucp.InstalledProductbFOID);
                                                }
                                            }
                                        }
                                    
                                    }
                                    if(ipGoldenIdset != null && ipGoldenIdset.size()>0)
                                    {   
                                        getIPBaseOnGodenId(ipGoldenIdset);
                                    }
                                    if(ipIdSet != null && ipIdSet.size()>0){                            
                                        getIPBaseOnId(ipIdSet);                     
                                    }
                                    for(ServiceLine usl: usltocreate){
                                    
                                        if(usl.CoveredProducts != null && usl.CoveredProducts.size()>0){
                                        
                                            if(!errorsl.contains(usl.BOReferenceLine))
                                            {
                                                List<CoveredProduct> ucplist = usl.CoveredProducts;
                                                List<CoveredProduct> tempcp = new List<CoveredProduct>();
                                                for(CoveredProduct cpu: ucplist){
                                                    if(cpu.InstalledProductbFOID != null)
                                                        tempcp.add(cpu);
                                                    else if(cpu.InstalledProductGoldenID != null && cpu.InstalledProductGoldenID!='' && ipObjGoldenIdMap.containskey(cpu.InstalledProductGoldenID)){
                                                        tempcp.add(cpu);                                        
                                                    }else if (cpu.productbFOID != null){ // Yassine B 18/05/2015 (wide condition about shippedSerialNumber and productbFOID)- START
                                                        System.debug('\n !!!!!!');
                                                        tempcp.add(cpu);   
                                                    }
                                                    else if(cpu.shippedSerialNumber != null && cpu.shippedSerialNumber !=''){
                                                        System.debug('\n !!!!!!');
                                                        tempcp.add(cpu);    
                                                    }// Yassine B 18/05/2015 (wide condition about shippedSerialNumber and productbFOID)- END
                                                    else{
                                                    
                                                        CoveredProductResult errcpr = new CoveredProductResult();
                                                        errcpr.success = false;
                                                        errcpr.type ='CREATE';
                                                        errcpr.errorMessage = 'pre-requiste is not fullfilled ';
                                                        errcpr.BOReferenceLine =usl.BOReferenceLine;
                                                        if(slidcpResultsMap.containskey(slrefslidMap.get(usl.BOReferenceLine)))
                                                        {
                                                            slidcpResultsMap.get(slrefslidMap.get(usl.BOReferenceLine)).add(errcpr);
                                                            
                                                        }
                                                        else{
                                                            slidcpResultsMap.put(slrefslidMap.get(usl.BOReferenceLine), new List<CoveredProductResult>{errcpr});
                                                        }
                                                        
                                                    
                                                    }
                                                
                                                }
                                                if(tempcp != null && tempcp.size()>0)                                               
                                                tocreatcpList.AddAll(getServiceContractProduct(tempcp,slrecrecmap.get(usl.BOReferenceLine).id ));
                                                
                                            }
                                        }
                                    
                                    }
                                    
                                    if(tocreatcpList != null && tocreatcpList.size()>0)
                                    {
                                        Boolean isError  = createCoveredProduct(tocreatcpList,'CREATE');
                                        if(isError)
                                        hasError = true;
                                        // For defect DEF-6992
                                        // Start
                                        if(!hasError){
                                            try{
                                                AP_IPAssociationHandler.attachIPForConcurrentOrders(tocreatcpList);
                                            }
                                            catch(exception ex){                                        
                                                
                                                response.errorMessage +=ex.getMessage();
                                                hasError = true;
                                            }
                                        }
                                        // End
                                        
                                    }
                                    
                                    System.debug('\n Log : desc :  covered prod Result Map '+slidcpResultsMap);
                                    
                                    for(ServiceLineResult slr:cslResults){
                    
                                        for(Id slid :slidcpResultsMap.keyset()){
                                            
                                            if(slr.bFOContractLineID == slid){
                                                
                                                slr.CoveredProductResults.addAll(slidcpResultsMap.get(slid));
                                            }
                                            
                                            
                                        }
                                                
                                    }
                                    
                                    System.debug('\n Log : desc : created SL Results in update '+cslResults);
                            
                                if(cslResults!= null && cslResults.size()>0)
                                   response.ServiceLineResults.addAll(cslResults) ;                         
                            }
                        
                           
                                                            
                        } 
                        
                        
                        
                    // processing Service contract Header 
                    List<Sobject> conList = new List<Sobject>();
					if(request.soldToAccount != null)
					AccountIDSet.add(request.soldToAccount);
					if(request.billToAccount != null)
					AccountIDSet.add(request.billToAccount);
					if(request.installedAtAccount != null)
					AccountIDSet.add(request.installedAtAccount);
					
                    if(request.soldToContact != null){getContactFields(request.soldToContact);}
                    if(request.billToContact != null){getContactFields(request.billToContact);}
                    if(request.mainInstalledAtContact != null){getContactFields(request.mainInstalledAtContact);}
                    
                    if(GoldenIDset.Size()>0 || firstNameset.size()>0 || localFirstNameset.size()>0 || 
                       middleInitialset.size()>0  || lastNameset.size()>0 ||
                       localLastNameset.size()>0 || emailAddressset.size()>0 || mobilePhoneset.size()>0 || workPhoneset.size()>0 )
                    {
                             String Querystr = getContactQuery();                        
                             conList = Database.query(Querystr);
                             System.debug('\n SC Log : '+conList.size());                         
                             System.debug('\n SC Log : '+conList);
                    }
                    
                    SVMXC__Service_Contract__c schobj = ContactInfo(request, getServiceContractHeader(request , null), conList);
                    System.debug('\n SC Log : sc to update '+schobj);
                      
                    Database.SaveResult header_result = CreateOrUpdateServices((List<Sobject>)new List<SVMXC__Service_Contract__c>{schobj},'UPDATE')[0];
                    String HErroMessage ='';
                    Boolean HeaderSuccess = false;
                    if (!header_result.isSuccess()) {
                                    
                       hasError = true;
                        for(Database.Error err : header_result.getErrors()) {
                            HErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                        }
                        response.success = false;
                        response.errorMessage = 'Error on Update of Service Contract : ' + HErroMessage;     
                        response.BOReferenceHeader =header.BackOfficeReference__c; 
                        response.BOSystem = header.BackOfficeSystem__c;                        
                        response.type ='UPDATE';
                        System.debug('\n CLog : Error '+HErroMessage);
                        
                        
                    }
                    else{
                        
                        response.bFOContractID = header.id;                     
                        response.success = true; 
                        response.BOReferenceHeader = header.BackOfficeReference__c; 
                        response.BOSystem = header.BackOfficeSystem__c; 
                        response.type ='UPDATE';
                        
                        
                    }
                        
                        
                                                  
                
                //}
            
            }
            
        }
        else{
                        
                    response.success = false;
                    response.type = 'CREATE';
                    response.errorMessage = 'Please send Service Contract';
        }
        if(hasError)
        {
            Database.rollback(sp);
            RollBackProcess('UPDATE');
            
        }
        return response;
    
    }
    webservice static  List<ServiceContractDetail> getServiceContractDetails(List<ID> sid, String OutboundEvent){
        
        Map<id, SVMXC__Service_Contract__c> headerMap = new Map<id,SVMXC__Service_Contract__c>();
        Map<id, SVMXC__Service_Contract__c> sLineMap = new Map<id,SVMXC__Service_Contract__c>();
        List<ServiceContractDetail> results = new List<ServiceContractDetail>();
         List<SVMXC__Service_Contract__c> scList = new List<SVMXC__Service_Contract__c>();
         Map<id,List<SVMXC__Service_Contract__c>> scidSLListMap = new Map<id,List<SVMXC__Service_Contract__c>>();
         Map<id,List<SVMXC__Service_Contract_Products__c>> slidcpListMap = new Map<id,List<SVMXC__Service_Contract_Products__c>>();
         
         Set<id> slidset = new Set<id>();
    
            if(sid != null && sid.size()>0)
            {
            
                 scList =[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                            SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                            LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                            PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                            CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId,TECH_OutboundEvent__c from SVMXC__Service_Contract__c where id in :sid /*and TECH_OutboundEvent__c = :OutboundEvent*/ ] ;
                  headerMap.putAll(scList ) ;                                         
            }
            
            if(headerMap != null && headerMap.size()>0){
                
                 List<SVMXC__Service_Contract__c> slList =[select id, name,SVMXC__Service_Contract_Notes__c,SoldtoAccount__c,DefaultInstalledAtAccount__c,BillToAccount__c,
                                                            SVMXC__Start_Date__c,SVMXC__End_Date__c,SVMXC__Contract_Price2__c,CurrencyIsoCode,IsEvergreen__c,
                                                            LeadingBusinessBU__c,SendCustomerRenewalNotification__c,OwnerId,SVMXC__Sales_Rep__c,Status__c,PODate__c,
                                                            PONumber__c,InitialOpportunity__c,SVMXC__Contact__c,SVMXC__Renewed_From__c,SVMXC__Renewal_Notes__c,
                                                            CountryofBackOffice__c,BackOfficeSystem__c,BackOfficeReference__c,RecordTypeId,                                                         
                                                            ParentContract__c,ParentContract__r.BackOfficeReference__c,ParentContract__r.BackOfficeSystem__c from SVMXC__Service_Contract__c where ParentContract__c in : headerMap.keyset() ];
                for(SVMXC__Service_Contract__c sl: slList){
                    slidset.add(sl.id);
                    if(scidSLListMap.containskey(sl.ParentContract__c)){
                        
                        scidSLListMap.get(sl.ParentContract__c).add(sl);    
                        
                    }
                    else{
                        scidSLListMap.put(sl.ParentContract__c, new List<SVMXC__Service_Contract__c>{sl});
                    }
                }
                
                if(slidset != null && slidset.size()>0){
                    

                    
                    for(SVMXC__Service_Contract_Products__c cp:[select id, SVMXC__End_Date__c,SVMXC__Exchange_Type__c,Golden_Asset_Id__c,IncludedService__c,IncludedServiceFeatureName__c,InstallAt__c,
                                                                SVMXC__Installed_Product__c,SVMXC__Installed_Product__r.name,InstalledProductLocation__c,SVMXC__Is_Billable__c,SVMXC__Line_Price__c,AssetLocation__c,BackOfficeReference__c, SVMXC__Installed_Product__r.UniqueSEIdentification__c,                                                               SVMXC__Notes__c,SVMXC__Number_Of_PMs_Delivered__c,SVMXC__Product__c,ProductSKU__c,SVMXC__Product_Family__c,SVMXC__Product_Line__c,SVMXC__Installed_Product__r.SchneiderCommercialReference__c,SVMXC__Installed_Product__r.SVMXC__Company__r.StreetLocalLang__c,SVMXC__Installed_Product__r.SVMXC__Company__r.AdditionalAddress__c,SVMXC__Installed_Product__r.SVMXC__Company__r.LocalAdditionalAddress__c,                                                                Serial_LotNumber__c,Serial_Number__c,SVMXC__Service_Contract__c,SVMXC__SLA_Terms__c,SVMXC__Start_Date__c,Tech_CreatedThroughSFM__c,SVMXC__Installed_Product__r.SVMXC__Warranty_Start_Date__c,SVMXC__Installed_Product__r.SVMXC__Warranty_End_Date__c,                                                            SVMXC__Installed_Product__r.GoldenAssetId__c,SVMXC__Installed_Product__r.SVMXC__Company__r.Name,SVMXC__Installed_Product__r.SVMXC__Company__r.SEAccountID__c,                                                              SVMXC__Installed_Product__r.SVMXC__Company__r.AccountLocalName__c,SVMXC__Installed_Product__r.SVMXC__Company__r.Street__c,                                                                SVMXC__Installed_Product__r.SVMXC__Company__r.City__c,SVMXC__Installed_Product__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,                                                                SVMXC__Installed_Product__r.SVMXC__Company__r.ZipCode__c,SVMXC__Installed_Product__r.SVMXC__Company__r.LocalCity__c,                                                                SVMXC__Installed_Product__r.SVMXC__Company__r.LocalCounty__c,SVMXC__Installed_Product__r.SVMXC__Company__r.Country__r.CountryCode__c,                                                                SVMXC__Installed_Product__r.SVMXC__Serial_Lot_Number__c,Tech_SetOfId__c,SVMXC__Service_Contract__r.BackOfficeReference__c,ShippedSerialNumber__c from SVMXC__Service_Contract_Products__c where SVMXC__Service_Contract__c in : slidset ]){
                        
                        if(slidcpListMap.containskey(cp.SVMXC__Service_Contract__c))
                        {
                            slidcpListMap.get(cp.SVMXC__Service_Contract__c).add(cp);
                        }
                        else{
                            
                            slidcpListMap.put(cp.SVMXC__Service_Contract__c, new List<SVMXC__Service_Contract_Products__c>{cp});
                        }
                    }
                    
                }
                
                for(SVMXC__Service_Contract__c sc:scList){
                    ServiceContractDetail scr = getServiceContractDetail(sc);
                    
                    if(scidSLListMap.containskey(sc.id) ){
                        
                        
                        List<ServiceLineDetail> slr = new List<ServiceLineDetail>();
                        
                        for(SVMXC__Service_Contract__c sl: scidSLListMap.get(sc.id)){
                            
                            ServiceLineDetail sld = getServiceLineDetails(new List<SVMXC__Service_Contract__c>{sl})[0];
                            
                            if(slidcpListMap.containskey(sl.id))
                            {
                                List<CoveredProductDetail> cpdlist = new List<CoveredProductDetail>();
                                
                                for(SVMXC__Service_Contract_Products__c  cp: slidcpListMap.get(sl.id) ){
                                    
                                    CoveredProductDetail cpd = getCoveredProductDetail(new List<SVMXC__Service_Contract_Products__c>{cp})[0];
                                    cpdlist.add(cpd);
                                }
                                
                                sld.CoveredProduct = cpdlist;
                            }
                            
                            
                            slr.add(sld);
                        }
                        
                        scr.serviceLine = slr;
                    }
                    
                    
                    results.add(scr);
                }
                
                                                          
            }
            
            
            
            
        
        return results;
        
    }
    public static ServiceContractDetail getServiceContractDetail(SVMXC__Service_Contract__c sc){
        
        ServiceContractDetail usc = new ServiceContractDetail();
        usc.bFOcontractID = sc.id;
        usc.contractNumberHeader= sc.Name;       
        usc.status= sc.Status__c;
        usc.BOReferenceHeader= sc.BackOfficeReference__c;
        usc.countryOfBO= sc.CountryofBackOffice__c;
        usc.BOSystem= sc.BackOfficeSystem__c;
        usc.TECH_OutboundEvent= sc.TECH_OutboundEvent__c;
        usc.serviceLine = new List<ServiceLineDetail>();
       return usc; 
        
        
    }
    public static List<ServiceLineDetail> getServiceLineDetails(List<SVMXC__Service_Contract__c> slines){ 
        
            List<ServiceLineDetail> sldlist = new List<ServiceLineDetail>();        
        
            
            for(SVMXC__Service_Contract__c sl: slines){
                ServiceLineDetail usl  = new ServiceLineDetail();
                usl.bFOContractLineID = sl.id;
                usl.contractNumberLine = sl.name;
                usl.BOReferenceLine    = sl.BackOfficeReference__c;
                usl.parentContractBORef = sl.ParentContract__r.BackOfficeReference__c;              
                usl.CoveredProduct = new List<CoveredProductDetail>();
                sldlist.add(usl);
                
            }
        
        return sldlist ;
    }
    public static List<CoveredProductDetail> getCoveredProductDetail(List<SVMXC__Service_Contract_Products__c> cps){ 
            
            List<CoveredProductDetail> cpdList = new List<CoveredProductDetail>();
            
                    
        
            
            for(SVMXC__Service_Contract_Products__c cp: cps){
            
                CoveredProductDetail cpd = new CoveredProductDetail();
                    cpd.BOReferenceLine = cp.SVMXC__Service_Contract__r.BackOfficeReference__c;
                    cpd.SerialLotNumber = cp.SVMXC__Installed_Product__r.SVMXC__Serial_Lot_Number__c;
                    cpd.InstalledProductGoldenID = cp.SVMXC__Installed_Product__r.GoldenAssetId__c;
                  cpd.InstalledProductStartDate = cp.SVMXC__Start_Date__c;
                  cpd.InstalledProductEndDate = cp.SVMXC__End_Date__c;
                  cpd.BOReferenceCoveredProduct = cp.BackOfficeReference__c;
                  cpd.InstalledProductID   = cp.SVMXC__Installed_Product__c;
                  cpd.InstalledProductName = cp.SVMXC__Installed_Product__r.name;
                  cpd.warrantyStartDate =String.valueOf( cp.SVMXC__Installed_Product__r.SVMXC__Warranty_Start_Date__c);
                  cpd.warrantyEndDate = String.valueOf(cp.SVMXC__Installed_Product__r.SVMXC__Warranty_End_Date__c);
                  cpd.SECommercialRef = cp.SVMXC__Installed_Product__r.SchneiderCommercialReference__c;
                //cpd.TECH_FOLastUpdateTimestamp =
                  cpd.InstalledAtGoldenID = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.SEAccountID__c;
                  cpd.InstalledAtName = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.name;
                  cpd.installedAtNameLocal = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.AccountLocalName__c;
                  cpd.installedAtStreet = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.Street__c;
                  cpd.installedAtStreetLocal =cp.SVMXC__Installed_Product__r.SVMXC__Company__r.StreetLocalLang__c;
                  cpd.installedAtAddAddressInfo =cp.SVMXC__Installed_Product__r.SVMXC__Company__r.AdditionalAddress__c;
                  cpd.installedAtAddAddressInfoLocal =cp.SVMXC__Installed_Product__r.SVMXC__Company__r.LocalAdditionalAddress__c;
                 cpd.installedAtZipCode = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.ZipCode__c;
                 cpd.installedAtCity =  cp.SVMXC__Installed_Product__r.SVMXC__Company__r.City__c;
                 cpd.installedAtLocalCity = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.LocalCity__c;
                 cpd.installedAtCountryCode = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.Country__r.CountryCode__c;
                 cpd.installedAtStateProvinceCode = cp.SVMXC__Installed_Product__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
                 cpd.uniqueDigitalID=cp.SVMXC__Installed_Product__r.UniqueSEIdentification__c;
                cpdList.add(cpd);
                
            
            
            }
            
            return cpdList ;
        
    }
    
    webservice static  ServiceContractSyncResult updateServiceContractSyncDetails(ID sid, String TECH_OutboundEvent, Boolean successBOUpdate ,String BOerrorMessage){
        
            ServiceContractSyncResult scsr = new ServiceContractSyncResult();
            
            if(sid != null)
            {
                
                SVMXC__Service_Contract__c sc = [select id, Synchronization_log__c,TECH_OutboundEvent__c,Last_Synchronization__c from SVMXC__Service_Contract__c where id =: sid];
                if(successBOUpdate){
                    sc.TECH_OutboundEvent__c = null;
                    sc.Synchronization_Log_F2B__c = TECH_OutboundEvent + ' event => '+ 'BO Service Contract Updated';
                }
                else{
                    sc.Synchronization_Log_F2B__c = TECH_OutboundEvent+ ' event => ' + 'BO Service Contract Not Updated due to BO error:\n[' + BOerrorMessage + ']';
                }
                
                sc.Synchronization_log__c = system.now();
                sc.Last_Synchronization__c = system.now();
                scsr.bFOContractID = sc.id;
                
                
                try{
                    
                    update sc;
                     scsr.success =true;
                    
                }
                catch(exception ex){
                    scsr.success =false;
                    scsr.errorMessage = ex.getMessage();
                }
                    
            }
            
        
        return scsr;
        
    }
    public Static SVMXC__Service_Contract__c getServiceContractHeader(ServiceContract usc, id rt){  
        
               
            
                SVMXC__Service_Contract__c sc = new  SVMXC__Service_Contract__c();
                if(usc.bFOcontractID == null)
                {
                    sc.name = usc.contractNumberHeader;
                    sc.SVMXC__Service_Contract_Notes__c = usc.description;
                    
                    sc.SoldtoAccount__c = usc.soldToAccount;
                    sc.DefaultInstalledAtAccount__c = usc.installedAtAccount;
                    sc.BillToAccount__c = usc.billToAccount;
                    sc.SVMXC__Start_Date__c = usc.contractStartDate;
                    sc.SVMXC__End_Date__c = usc.contractEndDate;
                    sc.SVMXC__Contract_Price2__c =  usc.contractPrice;
                    sc.CurrencyIsoCode = usc.currencyCode;
                    sc.IsEvergreen__c  = usc.isEvergreen;
                    sc.LeadingBusinessBU__c = usc.leadingBU;
                    //sc.name = usc.leadingBUContract;
                    if(usc.sendCustomerRenewalNotification != null)
                    sc.SendCustomerRenewalNotification__c  = usc.sendCustomerRenewalNotification;
                    if(userSESAMap.containskey(usc.ownerSESA))
                    sc.OwnerId = userSESAMap.get(usc.ownerSESA).id;
                    if(userSESAMap.containskey(usc.salesRepSESA))
                    sc.SVMXC__Sales_Rep__c =userSESAMap.get(usc.salesRepSESA).id;
                    sc.Status__c = usc.status;
                    sc.PODate__c = usc.PODate;
                    sc.PONumber__c = usc.PONumber;
                    sc.InitialOpportunity__c = usc.initialOpportunity;
                    //sc.SVMXC__Contact__c = usc.contact;
                    sc.SVMXC__Renewed_From__c = usc.RenewedFrom;
                    sc.SVMXC__Renewal_Notes__c = usc.RenewalNotes;
                    sc.CountryofBackOffice__c = usc.countryOfBO;
                    sc.BackOfficeSystem__c = usc.BOSystem;
                    sc.BackOfficeReference__c= usc.BOReferenceHeader;
                    sc.RecordTypeId = rt;
                    sc.TECH_CreatedByBOuser__c = usc.TECH_CreatedBy_BO_user;
                    sc.TECH_LastModifiedByBOuser__c = usc.TECH_Last_Modified_By_BO_user;
                    sc.TECH_BOLastUpdateTimeStamp__c = usc.TECH_BOLastUpdateTimeStamp;
                    sc.TECH_OutboundEvent__c = usc.TECH_OutboundEvent; 
                    sc.Amended_From__c = usc.amendedFrom;
                    sc.SVMXC__Billing_Schedule__c = usc.billingSchedule;
                    sc.TECH_BOBillToRecordID__c = usc.TECH_BOBillToRecordID;
                    sc.SalesOrderNumber__c = usc.salesOrderNumber;
                    
                }
                else{
                    
                    sc.id = usc.bFOcontractID;
                    
                    //if(usc.contractNumberHeader !='N/A') 
                    //sc.name = usc.contractNumberHeader;
                    if(usc.description !='N/A')
                    sc.SVMXC__Service_Contract_Notes__c = usc.description;
                    
                    if(usc.soldToAccount != null)
                        sc.SoldtoAccount__c = usc.soldToAccount;
                    if(usc.installedAtAccount != null)
                    sc.DefaultInstalledAtAccount__c = usc.installedAtAccount;
                    if(usc.billToAccount != null)
                    sc.BillToAccount__c = usc.billToAccount;
                    if(usc.contractStartDate != null)
                    sc.SVMXC__Start_Date__c = usc.contractStartDate;
                    if(usc.contractEndDate != null)
                    sc.SVMXC__End_Date__c = usc.contractEndDate;
                    if(usc.contractPrice != null)
                    sc.SVMXC__Contract_Price2__c =  usc.contractPrice;
                    if(usc.currencyCode !='N/A')
                    sc.CurrencyIsoCode = usc.currencyCode;
                    if(usc.isEvergreen != null)
                    sc.IsEvergreen__c  = usc.isEvergreen;
                    /** Yassine.B: Added usc.leadingBU != null condition to do not ovveride leading BU in update flow**/
                    if(usc.leadingBU !='N/A' && usc.leadingBU != null)
                    sc.LeadingBusinessBU__c = usc.leadingBU;
                    //sc.name = usc.leadingBUContract;
                    if(usc.sendCustomerRenewalNotification != null)
                    sc.SendCustomerRenewalNotification__c  = usc.sendCustomerRenewalNotification;
                    if(userSESAMap.containskey(usc.ownerSESA))
                    sc.OwnerId = userSESAMap.get(usc.ownerSESA).id;
                    if(userSESAMap.containskey(usc.salesRepSESA))
                    sc.SVMXC__Sales_Rep__c = userSESAMap.get(usc.salesRepSESA).id;
                    if(usc.status !='N/A')
                    sc.Status__c = usc.status;
                    if(usc.PODate != null)
                    sc.PODate__c = usc.PODate;
                    if(usc.PONumber !='N/A')
                    sc.PONumber__c = usc.PONumber;
                    if(usc.initialOpportunity != null)
                    sc.InitialOpportunity__c = usc.initialOpportunity;
                   // if(usc.contact != null)
                   // sc.SVMXC__Contact__c = usc.contact;
                    if(usc.RenewedFrom != null)
                    sc.SVMXC__Renewed_From__c = usc.RenewedFrom;
                    if(usc.RenewalNotes !='N/A')
                    sc.SVMXC__Renewal_Notes__c = usc.RenewalNotes;
                    if(usc.countryOfBO !='N/A')
                    sc.CountryofBackOffice__c = usc.countryOfBO;
                    if(usc.BOSystem !='N/A')
                    sc.BackOfficeSystem__c = usc.BOSystem;
                    if(usc.BOReferenceHeader!='N/A')
                    sc.BackOfficeReference__c= usc.BOReferenceHeader;
                    
                    if(usc.TECH_CreatedBy_BO_user!='N/A')
                    sc.TECH_CreatedByBOuser__c = usc.TECH_CreatedBy_BO_user;
                    if(usc.TECH_Last_Modified_By_BO_user!='N/A')
                    sc.TECH_LastModifiedByBOuser__c = usc.TECH_Last_Modified_By_BO_user;
                    if(usc.TECH_BOLastUpdateTimeStamp != null)
                    sc.TECH_BOLastUpdateTimeStamp__c = usc.TECH_BOLastUpdateTimeStamp;
                    if(usc.TECH_OutboundEvent!='N/A')
                    sc.TECH_OutboundEvent__c = usc.TECH_OutboundEvent; 
                    //sc.RecordTypeId = rt;
                    if(usc.amendedFrom != null )
                    sc.Amended_From__c = usc.amendedFrom;
                    if(usc.billingSchedule!='N/A')
                    sc.SVMXC__Billing_Schedule__c = usc.billingSchedule;
                    if(usc.TECH_BOBillToRecordID!='N/A')
                    sc.TECH_BOBillToRecordID__c = usc.TECH_BOBillToRecordID;
                    if(usc.salesOrderNumber!='N/A')
                    sc.SalesOrderNumber__c = usc.salesOrderNumber;
                    
                    
                }
                //sc.name = usc.BOReferenceHeader;
                //sc.CreatedById = usc.techCreatedByBOUser;
                //sc.LastModifiedById = usc.techLastModifiedByBOUser;
                
                          
               
        
        return sc;        
        
    }
    public static List<SVMXC__Service_Contract__c> getServiceLines(List<ServiceLine> slinelist, id rt, id pscId)
    {   
        
                /* 
        webservice  String  parentContractBORef;
        
        webservice  String  SKUComRef;
        
            */
            List<SVMXC__Service_Contract__c>   scList = new List<SVMXC__Service_Contract__c>();
            
            for(ServiceLine uslObj: slinelist)
            {
        
                SVMXC__Service_Contract__c sc = new  SVMXC__Service_Contract__c();
                if(uslObj.bFOContractLineID == null){
                
                    sc.ParentContract__c = pscId;
                    sc.name = uslObj.contractNumberLine;
                    sc.RecordTypeId = rt;
                    sc.BackOfficeReference__c = uslObj.BOReferenceLine;
                    //sc.DefaultInstalledAtAccount__c = uslObj.mainShipToAccount;                   
                    sc.SVMXC__Company__c = uslObj.mainShipToAccount;
                    sc.Entitlement__c = uslobj.entitlement; 
                    sc.Quantity__c = uslobj.quantity; 
                    sc.SVMXC__Contract_Price2__c = uslobj.contractPrice; 
                    sc.CurrencyIsoCode = uslobj.currencyCode; 
                    sc.SVMXC__Start_Date__c = uslobj.lineStartDate; 
                    sc.SVMXC__End_Date__c = uslobj.lineEndDate; 
                    sc.SVMXC__Service_Contract_Notes__c = uslobj.description; 
                    sc.TECH_UnitPrice__c =uslobj.TECH_UnitPrice;
                    sc.TECH_BOLastUpdateTimeStamp__c = uslobj.TECH_BOLastUpdateTimeStamp;
                    sc.ReasonForCancellation__c = uslobj.ReasonForCancellation;
                }
                else{
                    
                    
                    sc.id = uslObj.bFOContractLineID;
                    //if(uslObj.contractNumberLine !='N/A')
                    //sc.name = uslObj.contractNumberLine;
                    //sc.RecordTypeId = rt;
                    if(uslObj.BOReferenceLine !='N/A')
                    sc.BackOfficeReference__c = uslObj.BOReferenceLine;
                    if(uslObj.mainShipToAccount != null)
                    sc.SVMXC__Company__c = uslObj.mainShipToAccount;
                    //sc.DefaultInstalledAtAccount__c = uslObj.mainShipToAccount;
                    if(uslObj.entitlement !='N/A')
                    sc.Entitlement__c = uslobj.entitlement; 
                    if(uslObj.quantity != null)
                    sc.Quantity__c = uslobj.quantity; 
                    if(uslObj.contractPrice != null)
                    sc.SVMXC__Contract_Price2__c = uslobj.contractPrice;
                     
                    if(uslObj.currencyCode !='N/A')
                    sc.CurrencyIsoCode = uslobj.currencyCode; 
                    if(uslObj.lineStartDate != null)
                    sc.SVMXC__Start_Date__c = uslobj.lineStartDate;
                     if(uslObj.lineEndDate != null)
                    sc.SVMXC__End_Date__c = uslobj.lineEndDate; 
                    if(uslObj.description !='N/A') 
                    sc.SVMXC__Service_Contract_Notes__c = uslobj.description; 
                    if(uslObj.TECH_UnitPrice != null)
                    sc.TECH_UnitPrice__c =uslobj.TECH_UnitPrice;
                    if(uslObj.TECH_BOLastUpdateTimeStamp != null)
                    sc.TECH_BOLastUpdateTimeStamp__c = uslobj.TECH_BOLastUpdateTimeStamp;
                    
                    if(uslObj.ReasonForCancellation !='N/A') 
                    sc.ReasonForCancellation__c = uslobj.ReasonForCancellation;
                    
                }
                System.debug('\n SC Log: '+sc);
                 System.debug('\n SC Log: '+ProductMap);
                 /*
                if(uslObj.SKUComRef != null && uslObj.SKUComRef !='')
                {
                    if(ProductMap.containskey(uslObj.SKUComRef))
                    {
                        sc.SKUComRef__c =ProductMap.get(uslObj.SKUComRef).id;
                    }
                    else{
                        
                        sc.SKUComRef__c = null;
                    }
                }
                */
                if(uslObj.SKUComRef != null && uslObj.SKUComRef !='')
                    sc.SKUComRef__c = uslObj.SKUComRef;
                 System.debug('\n SC Log: '+sc);
                scList.add(sc);
            }    
                          
               
        
        return scList;        
        
    }
    public static List<SVMXC__Service_Contract_Products__c> getServiceContractProduct(List<CoveredProduct> ucpList, Id slid)
    {
        List<SVMXC__Service_Contract_Products__c> scpList = new List<SVMXC__Service_Contract_Products__c>();                
        
        for(CoveredProduct ucp : ucpList){
            
                SVMXC__Service_Contract_Products__c scpObj = new SVMXC__Service_Contract_Products__c();
                SVMXC__Installed_Product__c ipobj ; 
                if(ucp.InstalledProductbFOID != null &&  ipObjMap.containskey(ucp.InstalledProductbFOID))
                {
                    ipobj = ipObjMap.get(ucp.InstalledProductbFOID);
                
                }
                else if(ucp.InstalledProductGoldenID != null && ucp.InstalledProductGoldenID !=''){
                    if(ipObjGoldenIdMap.containskey(ucp.InstalledProductGoldenID))
                    {
                         ipobj =  ipObjGoldenIdMap.get(ucp.InstalledProductGoldenID);                        
                    }
                }
                if(ipobj!= null){
                
                        scpObj.SVMXC__Installed_Product__c = ipobj.id;
                        if(ipobj.SVMXC__Company__c != null )
                        {
                          scpObj.InstalledAtAccount__c = ipobj.SVMXC__Company__c;
                          scpObj.InstalledAtGoldenID__c = ipobj.SVMXC__Company__r.SEAccountID__c;
                          scpObj.InstalledAtName__c = ipobj.SVMXC__Company__r.Name;
                          scpObj.installedAtNameLocal__c = ipobj.SVMXC__Company__r.AccountLocalName__c;                       
                          scpObj.installedAtStreet__c = ipobj.SVMXC__Company__r.Street__c;                        
                          scpObj.installedAtStreetLocal__c = ipobj.SVMXC__Company__r.StreetLocalLang__c;
                          scpObj.installedAtAddAddressInfo__c = ipobj.SVMXC__Company__r.AdditionalAddress__c;
                          scpObj.installedAtAddAddressInfoLocal__c = ipobj.SVMXC__Company__r.LocalAdditionalAddress__c;
                          scpObj.installedAtZipCode__c = ipobj.SVMXC__Company__r.ZipCode__c;
                          scpObj.installedAtCity__c =  ipobj.SVMXC__Company__r.City__c ;
                          scpObj.installedAtLocalCity__c = ipobj.SVMXC__Company__r.LocalCity__c;
                          scpObj.installedAtCountryCode__c = ipobj.SVMXC__Company__r.Country__r.CountryCode__c;
                          scpObj.installedAtStateProvinceCode__c = ipobj.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
                          
                        }   
                
                }
                //scpObj.Serial_LotNumber__c = ucp.SerialLotNumber; // formula filed
                 //scpObj.BOReferenceCoveredProduct
                scpObj.BackOfficeReference__c = ucp.BOReferenceCoveredProduct;
                scpObj.SVMXC__Start_Date__c = ucp.InstalledProductStartDate;
                scpObj.SVMXC__End_Date__c = ucp.InstalledProductEndDate;
                scpObj.SVMXC__Service_Contract__c = slid;
                scpObj.ShippedSerialNumber__c =ucp.shippedSerialNumber;
                scpObj.SVMXC__Product__c = ucp.productbFOID;
                scpList.add(scpObj);
               
        }
                
        return scpList;
    }
    
     public Static Database.SaveResult[] CreateOrUpdateServices(List<SObject> sObjectList,String type)
    {
            Database.SaveResult[] sresults ;
            if(sObjectList != null && sObjectList.size()>0){                
                if(type == 'CREATE' ){
                    sresults = Database.insert(sObjectList, false);
                }
                else if(type == 'UPDATE')
                {
                    sresults = Database.update(sObjectList, false);
                }
            }
        return sresults;
    }
    
    public static  void getContactFields(Contact con){

        if(con != null)
        {                   
            if(con.GoldenID != null && con.GoldenID!='')
                GoldenIDset.add(con.GoldenID);
            if(con.firstName != null && con.firstName!='')
                firstNameset.add(con.firstName);
            if(con.localFirstName != null && con.localFirstName!='')
                localFirstNameset.add(con.localFirstName);
            if(con.middleInitial != null && con.middleInitial!='')
                middleInitialset.add(con.middleInitial);
            if(con.lastName != null && con.lastName!='')
                lastNameset.add(con.lastName);
            if(con.localLastName != null && con.localLastName!='')
                localLastNameset.add(con.localLastName);
            if(con.emailAddress != null && con.emailAddress!='')
                emailAddressset.add(con.GoldenID);
            if(con.mobilePhone != null && con.mobilePhone!='')
                mobilePhoneset.add(con.mobilePhone);
            if(con.workPhone != null && con.workPhone!='')
                workPhoneset.add(con.workPhone);                    
        }

    } 
    
    public static String getContactQuery(){
        
                String Query='';
        
                String QueryString ='';
                String WhereClause ='';
				String AccountFilter ='';
                QueryString = ' Select id,SEContactID__c,FirstName,LocalFirstName__c,MidInit__c,LocalMidInit__c,LastName,LocalLastName__c,Email,MobilePhone,WorkPhone__c,AccountId from Contact ';
                
				if(AccountIDSet != null && AccountIDSet.size()>0)
                {                   
                    AccountFilter +=  ' AccountId in ('+ SOQLListFormat(AccountIDSet) +') ';                    
                }
				
                if(GoldenIDset != null && GoldenIDset.size()>0)
                {                    
					WhereClause +=  ' ( SEContactID__c in  ('+ SOQLListFormat(GoldenIDset) +') ';					
                }
                if(firstNameset != null && firstNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR  FirstName in  ('+ SOQLListFormat(firstNameset) +') ';
                    else
                    WhereClause +=  '  FirstName in  ('+ SOQLListFormat(firstNameset) +') ';
                }
                if(localFirstNameset != null && localFirstNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LocalFirstName__c in ('+ SOQLListFormat(localFirstNameset) +') ';
                    else
                    WhereClause +=  ' LocalFirstName__c in ('+ SOQLListFormat(localFirstNameset) +') ';
                }
                if(middleInitialset != null && middleInitialset.size()>0)
                {   
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR MidInit__c in ('+ SOQLListFormat(middleInitialset) +') ';
                    else
                    WhereClause +=  ' MidInit__c in ('+ SOQLListFormat(middleInitialset) +') ';
                }
                if(localMiddleInitialset != null && localMiddleInitialset.size()>0)
                {   
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LocalMidInit__c in ('+ SOQLListFormat(localMiddleInitialset) +') ';
                    else
                    WhereClause +=  ' LocalMidInit__c in ('+ SOQLListFormat(localMiddleInitialset) +') ';
                }
                if(lastNameset != null && lastNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LastName in ('+ SOQLListFormat(lastNameset) +') ';
                    else
                    WhereClause +=  ' LastName in ('+ SOQLListFormat(lastNameset) +') ';
                }
                if(localLastNameset != null && localLastNameset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR LocalLastName__c in ('+ SOQLListFormat(localLastNameset) +') ';
                    else
                    WhereClause +=  ' LocalLastName__c in ('+ SOQLListFormat(localLastNameset) +') ';
                }
                if(emailAddressset != null && emailAddressset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR Email in ('+ SOQLListFormat(emailAddressset) +') ';
                    else
                    WhereClause +=  ' Email in ('+ SOQLListFormat(emailAddressset) +') ';
                }
                if(mobilePhoneset != null && mobilePhoneset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR MobilePhone in ('+ SOQLListFormat(mobilePhoneset) +') ';
                    else
                    WhereClause +=  ' MobilePhone in ('+ SOQLListFormat(mobilePhoneset) +') ';
                }
                if(workPhoneset != null && workPhoneset.size()>0)
                {
                    if(WhereClause.length()>0)
                    WhereClause +=  ' OR WorkPhone__c in ('+ SOQLListFormat(workPhoneset) +') ';
                    else
                    WhereClause +=  ' WorkPhone__c in ('+ SOQLListFormat(workPhoneset) +') ';
                }
				if(AccountFilter.length()>0)
				{
					if(WhereClause.length()>0)
					{
						WhereClause  = ' AND ('+ WhereClause + ' )';
						WhereClause = AccountFilter + WhereClause;
					}
					else{
						WhereClause = AccountFilter;
					}
					
				}
					
                Query =  QueryString +' where '+WhereClause+' Limit 10000';
                System.debug('\n scLog :'+Query);
                return Query;
        
    }
    
    public static SVMXC__Service_Contract__c ContactInfo(ServiceContract request , SVMXC__Service_Contract__c sobj , List<Sobject>  conList){
            SVMXC__Service_Contract__c sc = new SVMXC__Service_Contract__c();
            
            sc = sobj;
            sc.ContactInformation__c ='';
            System.debug('\n Log : sc '+request.soldToContact);
            System.debug('\n Log : sc '+request.billToContact);
            System.debug('\n Log : sc '+request.mainInstalledAtContact);
            System.debug('\n Log : sc '+conList);
            
                if(request.soldToContact != null)
                {
					Id ContactId = getMatchedContact(request.soldToContact ,conList , request.soldToAccount);
                    if(ContactId != null )
                    {
                        sc.SVMXC__Contact__c = ContactId; 
                    }
                    else{
                        System.debug('***********************************');
                        sc.SVMXC__Contact__c = null; 
                        sc.ContactInformation__c  += 'Sold to Contact: ';
                        if(request.soldToContact.firstName != null )
                            sc.ContactInformation__c  += request.soldToContact.firstName +' ';
                        if(request.soldToContact.lastName != null)
                            sc.ContactInformation__c  += request.soldToContact.lastName +' ';
                        if(request.soldToContact.emailAddress != null)
                            sc.ContactInformation__c  += request.soldToContact.emailAddress+' ';
                        if(request.soldToContact.workPhone != null)
                            sc.ContactInformation__c  += request.soldToContact.workPhone+' ';
                        sc.ContactInformation__c  += '\n';
                        //sc.ContactInformation__c = 'SOLD To CONTACT:'+request.soldToContact.firstName +' , '+request.soldToContact.lastName+','+
                        //+request.soldToContact.emailAddress+','+request.soldToContact.workPhone;
                    }
                    
                }
                if(request.billToContact != null)
                {
                    Id ContactId = getMatchedContact(request.billToContact ,conList , request.billToAccount);
                    if(ContactId != null )
                    {
                        sc.BillToContact__c = ContactId; 
                    }
                    
                    else{
                        sc.BillToContact__c = null;
                        sc.ContactInformation__c +='Bill To Contact: ';
                        if(request.billToContact.firstName != null) 
                            sc.ContactInformation__c  +=request.billToContact.firstName +' ';
                        if(request.billToContact.lastName != null)
                            sc.ContactInformation__c  +=request.billToContact.lastName +' ';
                        if(request.billToContact.emailAddress != null)
                            sc.ContactInformation__c  +=request.billToContact.emailAddress+ ' ';
                        if(request.billToContact.workPhone != null)
                            sc.ContactInformation__c  +=request.billToContact.workPhone+ ' ';
                         sc.ContactInformation__c  += '\n';
                        //sc.ContactInformation__c += 'BILL TO  CONTACT:'+request.billToContact.firstName +' , '+request.billToContact.lastName+','+
                        //+request.billToContact.emailAddress+','+request.billToContact.workPhone;
                    }
                                
                }
                if(request.mainInstalledAtContact != null)
                {
					Id ContactId = getMatchedContact(request.mainInstalledAtContact ,conList , request.installedAtAccount);
                    if(ContactId != null )
                    {
                        sc.MaininstalledatContact__c = ContactId;
                    }
                    else{
                        sc.MaininstalledatContact__c = null;
                        sc.ContactInformation__c +='Main Installed At Contact: ' ;
                        if(request.mainInstalledAtContact.firstName != null )
                            sc.ContactInformation__c +=request.mainInstalledAtContact.firstName+' ';
                        if(request.mainInstalledAtContact.lastName != null )
                            sc.ContactInformation__c +=request.mainInstalledAtContact.lastName+' ';
                        if(request.mainInstalledAtContact.emailAddress != null )
                            sc.ContactInformation__c +=request.mainInstalledAtContact.emailAddress + ' ';
                        if(request.mainInstalledAtContact.workPhone != null )
                            sc.ContactInformation__c +=request.mainInstalledAtContact.workPhone+ ' ';
                        sc.ContactInformation__c  += '\n';    
                        //sc.ContactInformation__c += 'MAIN INSTALLED AT CONTACT:'+request.mainInstalledAtContact.firstName +' , '+request.mainInstalledAtContact.lastName+','+
                        //+request.mainInstalledAtContact.emailAddress+','+request.mainInstalledAtContact.workPhone;
                    }              
                }  
                if(sc.ContactInformation__c != null)
                {
                    String st = sc.ContactInformation__c ;
                    if(st.length()>0)
                    sc.ContactInformation__c = 'CONTACT AUTO-MATCHING FAILED for:\n'+sc.ContactInformation__c;
                }
            
            
            return sc;
    
    }
    
    public static Id getMatchedContact(Contact ucon , List<Sobject> conList, Id AccountId){
        
       
        ID ContactId ;
        Contact c = ucon;
		
		if(c.GoldenID != null && c.GoldenID !='')
		{
			for(Sobject con: conList){
				
				if(con.get('SEContactID__c') != null && con.get('SEContactID__c') !='' && con.get('SEContactID__c') == c.GoldenID && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('SEContactID__c') != null && con.get('SEContactID__c') !='' && con.get('SEContactID__c') == c.GoldenID && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.emailAddress != null && c.emailAddress !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('Email') != null && con.get('Email') !='' && con.get('Email') == c.emailAddress && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('Email') != null && con.get('Email') !='' && con.get('Email') == c.emailAddress && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.mobilePhone != null && c.mobilePhone !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('MobilePhone') != null && con.get('MobilePhone') !='' && con.get('MobilePhone') == c.mobilePhone && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('MobilePhone') != null && con.get('MobilePhone') !='' && con.get('MobilePhone') == c.mobilePhone && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.firstName != null && c.firstName !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('FirstName') != null && con.get('FirstName') !='' && con.get('FirstName') == c.firstName && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('FirstName') != null && con.get('FirstName') !='' && con.get('FirstName') == c.firstName && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.lastName != null && c.lastName !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('LastName') != null && con.get('LastName') !='' && con.get('LastName') == c.lastName && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('LastName') != null && con.get('LastName') !='' && con.get('LastName') == c.lastName && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.localFirstName != null && c.localFirstName !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('LocalFirstName__c') != null && con.get('LocalFirstName__c') !='' && con.get('LocalFirstName__c') == c.localFirstName && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('LocalFirstName__c') != null && con.get('LocalFirstName__c') !='' && con.get('LocalFirstName__c') == c.localFirstName && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.localLastName != null && c.localLastName !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('LocalLastName__c') != null && con.get('LocalLastName__c') !='' && con.get('LocalLastName__c') == c.localLastName && AccountId != null && con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('LocalLastName__c') != null && con.get('LocalLastName__c') !='' && con.get('LocalFirstName__c') == c.localLastName && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		if(c.localMiddleInitial != null && c.localMiddleInitial !='' && ContactId == null)
		{
			for(Sobject con: conList){
				
				if(con.get('LocalMidInit__c') != null && con.get('LocalMidInit__c') !='' && con.get('LocalMidInit__c') == c.localMiddleInitial && AccountId != null &&  con.get('AccountId') == AccountId ){
					ContactId = con.id;    
                        break ; 
				}
				else if(con.get('LocalMidInit__c') != null && con.get('LocalMidInit__c') !='' && con.get('LocalMidInit__c') == c.localMiddleInitial && AccountId == null )
				{
					ContactId = con.id;    
                        break ; 
				}
			}
		
		}
		
            
		
		 /*
        String key ='';
        String ckey ='';
        if(ucon.GoldenID != null && ucon.GoldenID !='')
            key +=ucon.GoldenID;
        if(ucon.firstName != null && ucon.firstName !='')
            key +=ucon.firstName;
        if(ucon.localFirstName != null && ucon.localFirstName !='')
            key +=ucon.localFirstName;
        if(ucon.middleInitial != null && ucon.middleInitial !='')
            key +=ucon.middleInitial;
        if(ucon.localMiddleInitial != null && ucon.localMiddleInitial !='')
            key +=ucon.localMiddleInitial;
        if(ucon.lastName != null && ucon.lastName !='')
            key +=ucon.lastName;
        if(ucon.localLastName != null && ucon.localLastName !='')
            key +=ucon.localLastName;
        if(ucon.emailAddress != null && ucon.emailAddress !='')
            key +=ucon.emailAddress;
        if(ucon.mobilePhone != null && ucon.mobilePhone !='')
            key +=ucon.mobilePhone;
        if(ucon.workPhone != null && ucon.workPhone !='')
            key +=ucon.workPhone;   
          System.debug('\n Log SC: key '+key);  
            
        for(Sobject con: conList){
            ckey ='';
            
            if(c.GoldenID != null && c.GoldenID !='')
                if(con.get('SEContactID__c') != null && con.get('SEContactID__c') !='')
                    ckey +=con.get('SEContactID__c');                   
            if(c.firstName != null && c.firstName !='')
                if(con.get('FirstName') != null && con.get('FirstName') !='')
                    ckey +=con.get('FirstName');
            if(c.localFirstName != null && c.localFirstName !='')
                if(con.get('LocalFirstName__c') != null && con.get('LocalFirstName__c') !='')
                    ckey +=con.get('LocalFirstName__c');
            if(c.middleInitial != null && c.middleInitial !='')
                if(con.get('MidInit__c') != null && con.get('MidInit__c') !='')
                    ckey +=con.get('MidInit__c');           
            if(c.localMiddleInitial != null && c.localMiddleInitial !='')
                if(con.get('LocalMidInit__c') != null && con.get('LocalMidInit__c') !='')
                    ckey +=con.get('LocalMidInit__c');
            if(c.lastName != null && c.lastName !='')
                if(con.get('LastName') != null && con.get('LastName') !='')
                    ckey +=con.get('LastName');
            if(c.localLastName != null && c.localLastName !='')
                if(con.get('LocalLastName__c') != null && con.get('LocalLastName__c') !='')
                    ckey +=con.get('LocalLastName__c');
            if(c.emailAddress != null && c.emailAddress !='')
                if(con.get('Email') != null && con.get('Email') !='')
                    ckey +=con.get('Email');
            if(c.mobilePhone != null && c.mobilePhone !='')
                if(con.get('MobilePhone') != null && con.get('MobilePhone') !='')
                    ckey +=con.get('MobilePhone');
            if(c.workPhone != null && c.workPhone !='')
                if(con.get('WorkPhone__c') != null && con.get('WorkPhone__c') !='')
                    ckey +=con.get('WorkPhone__c'); 
                    
            System.debug('\n Log SC: ckey '+ckey);                  
                    
                    if(key == ckey){                    
                        ContactId = con.id;    
                        break ;             
                    }
            
            
        } */
		
        System.debug('\n Log SC: ContactId '+ContactId);      
        return ContactId;
        
    }
    
     //description : format the list to inorporate to a dynamic request
    //By adding quotes between each values
    //input list of string
    //outpu string formated list
    public static string SOQLListFormat(set<string> input){   
        String SOQL_ListFormat = '';
        for (string Value : input) {
                String value_in_quotes = '\''+Value+'\'';
        if (SOQL_ListFormat!='') { SOQL_ListFormat+=','; }  //  add a comma if this isn't the first one
                SOQL_ListFormat += value_in_quotes;
        }   
        return SOQL_ListFormat;
    }
    
   
    
    

}