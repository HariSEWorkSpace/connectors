global class WS_Work_Order{


        
    
     global class WorkOrder{
     
            webservice ID         workOrderbFOID; 
            webservice String     workOrderNumber; 
            webservice ID      installedAtAccountbFOID ;
            webservice Contact    contact;
            webservice Date    customerRequestedDate ; 
            webservice String customerRequestedTime;
            webservice String serviceBusinessUnit;
            webservice String priority;
            webservice String scheduledDateTime;
            webservice ID     workOrderGroupbFOID;
            webservice String workOrderName;
            webservice String workOrderReason;
            webservice String commentToPlanner;
            webservice String countryOfBackOffice;
            webservice String backOfficeSystem;
            webservice String workOrderStatus;
            webservice String workOrderSubStatus;
            webservice String workOrderCategory;
            webservice String workOrderType;
            webservice String workOrderSubType;
            webservice String isBillable;
            webservice String billingType;
            webservice Technician primaryFSR;
            webservice ID     parentWObFOID;
            webservice ID     soldToAccountbFOID;
            webservice String parentWOBackOfficeReference;
            webservice InstalledProduct mainInstalledProduct;
            webservice String  productbFOID;
            webservice String  projectNumber;
            webservice String  serviceContractBOReference;
            webservice String  serviceLineBOReference;
            webservice String  salesOrderNumber;
            webservice String  salesOrderLineNumber;
            webservice String  PONumber;
            webservice String  serviceCenterTerritoryName;
            webservice String  customerReferenceNumber;
            webservice String  TECH_FOLastUpdateTimestamp; 
            webservice WorkDetail   WorkDetail;
            webservice PartsOrders PartsOrders;
            webservice String   quotationNumber;
            webservice Id   serviceContractbFOID;
            webservice Id   serviceLinebFOID;
            webservice String   WOBackOfficeReference;
            webservice String   TECH_WOBackOfficeRecordID;
            webservice String   WOGBackOfficeReference;
            webservice Decimal   estimatedExpenseCost;
            webservice Decimal   estimatedMaterialCost;
            webservice Decimal   estimatedLaborCost;
            webservice String   WOcurrencyIsCode;
            webservice String billToAccountbFOID;
            webservice String slaTermsName;
            webservice Account installedAtAccount;
            webservice String caseNumber; 
            webservice String BackOfficeBillToValid;
            webservice String plantName; //Yassine.B 18/03/2015
            webservice String closedOn;
            webservice Decimal plannedDuration;
            
            
        
     
     }

            
     global class WorkDetail{

        webservice List<TimeWD> TimeWDs;
        webservice List<ExpenseWD> ExpenseWDs;  
        webservice List<ServiceProductsWD> ServiceProductsWDs;
        webservice List<PartsWD> PartsWDs;
        
     }
     
     global class Account{
        webservice    ID      bFOID;
        webservice    String   GoldenID;
        webservice    String   Name;
        webservice    String   NameLocal;
        webservice    String   Street;
        webservice    String   StreetLocal;
        webservice    String   AddAddressInfo;
        webservice    String   AddAddressInfoLocal;
        webservice    String   ZipCode;
        webservice    String   City;
        webservice    String   LocalCity;
        webservice    String   CountryCode;
        webservice    String   StateProvinceCode;
        webservice    String   recordTypeName;

     
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
    
     global class Technician{
     
        webservice String SESAID;
        webservice String FirstName;
        webservice String LastName;
        webservice String Email;
        webservice String RoleName;
        webservice String BusinessUnit;
        webservice String level;
       
     
     }
    
     global class InstalledProduct{
     
        webservice String GoldenID;
        webservice String Name;
        webservice String InstalledAtGoldenID;
        webservice String SerialNumber;
        webservice String SECommercialRef;
        webservice String installedAtCountryCode;
        
        webservice String installedAtName;
        webservice String installedAtNameLocal;
        webservice String installedAtStreet;
        webservice String installedAtStreetLocal;
        webservice String installedAtAddAddressInfo;
        webservice String installedAtAddAddressInfoLocal;
        webservice String installedAtZipCode;
        webservice String installedAtCity;
        webservice String installedAtLocalCity;     
        webservice String installedAtStateProvinceCode;
        webservice String installedAtRecordTypeName;
        webservice String uniqueDigitalID;
        
        
       
     
     }

     global class PartsOrders{
        webservice List<PartsOrder> PartsOrders;

     }
    
     global class PartsOrdersResults{
        webservice List<PartsOrderResult> PartsOrderResults;
     }
     
     global class PartsOrder{
        webservice  ID partOrderbFOID;      
        webservice  String  partOrderbFONumber  ;
        webservice  String  partOrderStatus ;
        webservice  String  serviceLevel    ;
        webservice  Contact contact ;
        webservice  String  shippingReceivingNotes  ;
        webservice  Account shipToAccount   ;
        webservice  String  freightTerms    ;
        webservice  String  partsSLATerms   ;
        webservice  String  onsiteSLATerms  ;
        webservice  String  partOrderBOReference;
        webservice  String  TECH_BOPartsOrderRecordId;
        webservice  String  TECH_BOLastUpdateTimestamp;// Data type need to ask
        webservice  String  synchronizationLog;
        webservice  String  attentionToSESAID;
        webservice  String  attentionToEmail;
        webservice  String  partOrderType;
        

        webservice List<PartsOrderLines> PartsOrderLines;
     
     }

     global class PartsOrderResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      partOrderbFOID;
        webservice  String  partOrderbFONumber;
        webservice  String  partOrderBOReference;
        webservice  String  TECH_BOPartsOrderRecordId;
        webservice List<PartsOrderLinesResult> PartsOrderLinesResults;


     }
     
     global class PartsOrderLines{
      
        webservice  ID   partOrderbFOID;        
        webservice  ID  partOrderLinebFOID  ;
        webservice  String  partOrderLinebFONumber  ;
        webservice  String  partOrderLineType   ;
        webservice  String  sparePartbFOID   ;
        webservice  String  FOSKUReference  ;
        webservice  String  plantName   ;
        webservice  Integer expectedQuantity    ;
        webservice  String  unitOfMeasure   ;
        webservice  String  requestedDate   ;
        webservice  String  calculatedPlant ;
        webservice  Integer stockQuantity   ;
        webservice  String  sparePartCategory   ;
        
        webservice  String  LeadDate    ;
        webservice  String  BOMaterialReference ;
        webservice  String  freeTextReference   ;
        webservice  String  genericReference    ;
        webservice  String  createdBySESAID ;
        webservice  String  createdByFirstName  ;
        webservice  String  createdByLastName   ;
        webservice  Integer shippedQuantity;
        webservice  String shippingStatus;
        
        webservice  String expectedShipDate;// DataType need to ask
        webservice  String partOrderLineBOReference;
        webservice  String carrier;
        webservice  String trackingNumber;
        webservice  String TECH_BOLastUpdateTimestamp; // DataType need to ask      
        webservice  String shipmentMode;
        webservice  String TECH_BOPartsOrderLineRecordId;
        webservice  String partOrderLineInternalType;
        webservice  Decimal receivedQuantity;
        webservice  Date receivedDate;
        webservice  String returnReason;
        webservice  String installedProductSerialNumber;
        webservice  String currencyIsoCode;
        webservice  Double linePrice;
        




     }
    
     global class PartsOrderLinesResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID partOrderLinebFOID;
        webservice  String partOrderLinebFONumber;
        webservice  String partOrderLineBOReference;
        webservice  String TECH_BOPartsOrderLineRecordId;
     }



    
     global class TimeWD{
         
        webservice ID workOrderbFOID;
        webservice ID  workDetailbFOID;
        webservice String  lineType;
        webservice String  activityType;
        webservice String  hourType;
        webservice  Technician  FSR;
        webservice  String  isBillable;    
        webservice  String  billingType;
        webservice  String  startDateTime;
        webservice  String  endDateTime;
        webservice  Double  totalTime;
        webservice  String  workDescription;
        webservice  ID  workDetailPlannedbFOID;
        webservice  String workDetailbFONumber;
        webservice String levelRequired;


     
     }
    
     global class ExpenseWD{
     
        webservice     ID  workOrderbFOID;
        webservice      ID  workDetailbFOID;
        webservice      String  lineType;
        webservice      String  expenseType;
        webservice      String  expenseDate;
        webservice      Technician FSR;
        webservice      String  isBillable;
        webservice      String  billingType;
        webservice      Double  expenseQuantity;
        webservice      Double  linePricePerUnit;
        webservice      String  workDescription;
        webservice      ID  workDetailPlannedbFOID;
        webservice      String  currencyIsoCode;
        webservice  String workDetailbFONumber;
        webservice  Double linePricePerUnitCorporateCurrency;
        webservice String levelRequired;

     
     }
    
     global class ServiceProductsWD{
        webservice ID workOrderbFOID;
        webservice ID workDetailbFOID;
        webservice String workDetailbFONumber;
        webservice  Technician  FSR;
        webservice String workDescription;
        webservice InstalledProduct InstalledProduct;
        webservice String levelRequired;


     }
    
     global class PartsWD{
        /*
        webservice List<PartsOrder> PartsOrders;
        webservice Contact  Contact;
        webservice String shippingReceivingNotes;
        webservice Account shipToAccount;
        webservice String   freightTerms;
        webservice String   partsSLATerms;
        webservice String   onsiteSLATerms;

        */

        webservice ID workOrderbFOID;
        webservice ID workDetailbFOID;
        webservice String workDetailbFONumber;
        webservice String partOrderLinebFOID;
        webservice String TECH_BOPartsOrderLineRecordId;
        webservice String FOSKUReference;
        webservice String BOMaterialReference;
        webservice ID  sparePartbFOID;
        webservice Technician FSR;
        webservice String   isBillable;
        webservice  Decimal expectedQuantity;
        webservice  Decimal shippedQuantity;
        webservice  Decimal installedQuantity;
        webservice  Decimal returnedQuantity;
        webservice  Decimal failedQuantity;
        webservice String workDescription;
        webservice String levelRequired;
        webservice String partOrderLineType;
        webservice String genericReference;
        webservice String freeTextReference;
        webservice Decimal leftOnsiteQuantity;
        webservice String notReturnReason;
        

        



     
     }
    
     global class WorkOrderResult{
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      workOrderbFOID;
        webservice  String  workOrderNumber;
        webservice  String  workOrderBOReference;
        webservice  String  TECH_WOBackOfficeRecordID;
        webservice  ID      workOrderGroupbFOID;
        webservice  String  workOrderGoupBOReference;
        webservice  String  countryOfBackOffice;
        webservice  String  backOfficeSystem;
        webservice  WorkDetailsResult   WorkDetailsResult;

     
     }
    
     global class WorkDetailsResult{
        webservice  List<TimeWDResult> TimeWDResults;
        webservice  List<ExpenseWDResult> ExpenseWDResults;
        webservice  List<PartsWDResult> PartsWDResult;
        webservice  List<ServicedProductsWDResult> ServicedProductsWDResult;
     
     }
     global class ServicedProductsWDResult{
     
        webservice  Boolean success;
        webservice  String  type;
        webservice  String  errorMessage;
        webservice  ID      installedProductbFOID;
        webservice  String  installedProductGoldenID;
        webservice  String  SerialNumber;
        webservice  ID      workOrderbFOID;

     
     }
     global class PartsWDResult{
     
     }
     global class ExpenseWDResult{
     
     }
     global class TimeWDResult{
     
     }
     global class WorkOrderSyncDetails{
        webservice  ID  workOrderbFOId;
        webservice  String  workOrderBOReference;
        webservice  String  TECH_WOBackOfficeRecordID;
        webservice  ID  workOrderGroupbFOID;
        webservice  String  workOrderGroupBOReference;
        webservice  String  BackOfficeSystem;
        webservice  String  Event;
        webservice  Boolean success;
        webservice String BOerrorMessage;
        webservice String BackOfficeBillToValid;
     
     }
     global class WorkOrderSyncDetailsResult{
        webservice  ID workOrderbFOId;
        webservice  Boolean success;
        webservice String errorMessage;
        webservice String workOrderBOReference;
        
     
     }
     global class WorkOrdersTechCloseResult{ 

        webservice List<WorkOrder> workorders; 
        webservice  Boolean success; 
        webservice  String  errorMessage; 
     }

     public class ServiceProducts{
        
            public Id Serial_Number;
            public Id Group_Member;
            public id UserId;
            public id ContactId;
            public id Fsrid;
            public id ipid;
            public String SESAID;
            public String FirstName;
            public String LastName;
            public String Email;
            public String RoleName;
            public String GoldenID;
            public String IPName;
            public String InstalledAtGoldenID;
            public String IPSerialNumber;
            public String IPSECommercialRef;
            public String IpinstalledAtCountryCode;   
        
     
     }
    
     
    public static WorkOrder woresult = new WorkOrder();
    public static Map<String,RecordType> woDetailsMap = new Map<String,RecordType>();
    webservice static  WorkOrder getWorkOrderDetails(Id WorkOrderId, String Event){ 
            
            
            if(WorkOrderId != null )
            {
                Set<id> woidset = new Set<id>();
                woidset.add(WorkOrderId);
                for(RecordType rt: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
                    woDetailsMap.put(rt.DeveloperName , rt);
                }
                
                if(Event=='WO.CREATION' || Event=='WO.SYNC')
                {
                    
                    if(woDetailsMap.containskey('Products_Serviced')){
                        RecordType rt =woDetailsMap.get('Products_Serviced');
                        SVMXC__Service_Order__c wo = getWorkOrderObjects(woidset)[0];
                        populateWorkOrderFields(wo);
                        WorkDetail wd=new WorkDetail();
                        
                        wd.ServiceProductsWDs = getServiceProducts(WorkOrderId,rt.id);
                        woresult.WorkDetail = wd;
                    }
                
                }
                else if(Event=='WO.RELEASE' ){
                
                        SVMXC__Service_Order__c wo = getWorkOrderObjects(woidset)[0];
                         populateWorkOrderFields(wo);
                         WorkDetail wd= getWorkDetails(WorkOrderId ,'WO.RELEASE');
                         woresult.WorkDetail = wd; 
                         PartsOrders porder = new PartsOrders();
                         porder = preparePartsOrder(wo);
                         System.debug('\n WWO Log: '+porder);
                         woresult.PartsOrders =porder;
                         System.debug('\n WWO Log: '+woresult.PartsOrders);
                         
                }
                
            
            }
            System.debug('\n WWO Log: '+woresult.PartsOrders);
            System.debug('\n WWO Log: '+woresult);
            return woresult;
    
    }
  public Static Set<String> AccntIDSet = new Set<String>();
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
    
    public static Set<String> IPGoldenIDset = new Set<String>();
    public static Set<String> Nameset = new Set<String>();
    public static Set<String> InstalledAtGoldenIDset = new Set<String>();
    public static Set<String> SerialNumberset = new Set<String>();
    public static Set<String> SECommercialRefset = new Set<String>();
    public static Set<String> installedAtCountryCodeset = new Set<String>();
    
    
    
    webservice static List<WorkOrderResult> bulkCreateWorkOrders(List<WorkOrder> WorkOrderList){
            List<WorkOrderResult> worList = new List<WorkOrderResult>();
            //List<TechObject> tlist = new List<TechObject>();
            List<Sobject> conList = new List<Sobject>();
            List<Sobject> conList2 = new List<Sobject>();
            /*Set<String> sesaSet = new Set<String>();
            Set<String> firstNameSet = new Set<String>();
            Set<String> lastNameSet = new Set<String>();
            Set<String> emailSet = new Set<String>();
            List<user> userList = new List<user>();
            Map<String, User> userMap = new Map<String, User>();*/
            Set<String> ipgolden = new Set<String>();
            Map<String ,Id> goldenIdMap = new Map<String,Id>();
            Set<String> wogrefset = new Set<String>();
            map<String, WorkOrderGroup__c> workorderGroupMap = new Map<String, WorkOrderGroup__c>();
            Set<Id> accidSet = new Set<id>();
            List<SVMXC__Service_Order__c> existingwolist = new List<SVMXC__Service_Order__c>();
            List<WorkOrder> WorkOrderListToProcess = new List<WorkOrder>();
            List<WorkOrder> WorkOrderMandatoryPass = new List<WorkOrder>();
            Map<String,SVMXC__Service_Order__c> existingMap = new Map<String,SVMXC__Service_Order__c>();
            
            RecordType rt =[SELECT Description,DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType='SVMXC__Service_Order__c' and DeveloperName ='WO_ConnectedWorkOrder'];
            if(WorkOrderList != null){
                
                for(WorkOrder wu: WorkOrderList){   
                    MandatoryFields mf = new MandatoryFields();
                     mf = CreateMandataryCheck(wu);
                    if( mf.isMFPass)
                    {                   
                        WorkOrderMandatoryPass.add(wu);
                    }
                    else{                   
                      WorkOrderResult wor = new WorkOrderResult();
                      wor.success = false;
                      wor.type = 'CREATED';                     
                      wor.errorMessage =' Mandatory Fields are missing '+ mf.fields;
                      worList.add(wor);                 
                    }               
                }
            
            
                Set<String> setsystem = new Set<String>();
                Set<String> setbref = new Set<String>();
                for(WorkOrder wou: WorkOrderMandatoryPass){
                    if(wou.WOBackOfficeReference != null && wou.WOBackOfficeReference !=''){
                        setbref.add(wou.WOBackOfficeReference);
                    }
                    if(wou.backOfficeSystem != null && wou.backOfficeSystem !=''){
                        setsystem.add(wou.backOfficeSystem);
                    }                
                  }
                  
                String swhereClause = '';
                if(setsystem != null && setsystem.size()>0)
                {
                    swhereClause +=' BackOfficeSystem__c in : setsystem ';
                }
                if(setbref != null && setbref.size()>0)
                {
                    if(swhereClause.length()>0)
                    {
                        swhereClause +=' and  BackOfficeReference__c in : setbref ';
                    }
                }
                if(swhereClause.length()>0)
                {
                     existingwolist = Database.query('Select id,BackOfficeSystem__c,BackOfficeReference__c, name from SVMXC__Service_Order__c where  '+swhereClause);
                     if(existingwolist != null && existingwolist.size()>0)
                     {
                        for(SVMXC__Service_Order__c ewo: existingwolist){
                            existingMap.put(ewo.BackOfficeSystem__c+ewo.BackOfficeReference__c, ewo);
                        }
                     }  
                }
                for(WorkOrder wou: WorkOrderMandatoryPass){
                    if(!existingMap.containskey(wou.backOfficeSystem+wou.WOBackOfficeReference))
                     WorkOrderListToProcess.add(wou);
                     else{
                        // error 
                        WorkOrderResult wor = new WorkOrderResult();
                        wor.success = false;
                        wor.type = 'CREATED';
                        wor.workOrderBOReference =  wou.WOBackOfficeReference;
                        wor.workOrderGoupBOReference =  wou.WOGBackOfficeReference;
                        wor.TECH_WOBackOfficeRecordID = wou.TECH_WOBackOfficeRecordID;
                        wor.errorMessage = ' Work order is already exist with BackOfficeReference for this BackOfficeSystem ';
                        worList.add(wor);
                     
                     }
                }
            }
            else{
                     WorkOrderResult wor = new WorkOrderResult();
                      wor.success = false;
                      wor.type = 'CREATED';
                     
                      wor.errorMessage = ' Please send request ';
                      worList.add(wor);
                      return worList;                     
                     
            }
            
            if(WorkOrderListToProcess != null && WorkOrderListToProcess.size()>0)
            {
                WorkOrderList = new List<WorkOrder>();
                WorkOrderList = WorkOrderListToProcess;
                for(WorkOrder wou: WorkOrderList){
                    System.debug('*********************'+wou);
                    if(wou.contact != null ){
                        getContactFields(wou.contact);
                    }
                    if(wou.mainInstalledProduct!= null )
                    {
                        if(wou.mainInstalledProduct.GoldenID != null && wou.mainInstalledProduct.GoldenID !='')
                        ipgolden.add(wou.mainInstalledProduct.GoldenID);
                    }

                    if(wou.WorkDetail != null ){
                        if(wou.WorkDetail.ServiceProductsWDs != null && wou.WorkDetail.ServiceProductsWDs.size()>0)

                        {
                            for(ServiceProductsWD spu: wou.WorkDetail.ServiceProductsWDs){                
                                if(spu.InstalledProduct != null)
                                getInstalledProductFields(spu.InstalledProduct );               

                            }

                        }
                    }
                                        
                    if(wou.WOGBackOfficeReference != null){
                        System.debug('\n CLog : '+wou.WOGBackOfficeReference);
                        wogrefset.add(wou.WOGBackOfficeReference );
                    }
                    else if(wou.WOBackOfficeReference != null ){
                        System.debug('\n CLog : '+wou.WOBackOfficeReference);
                        wogrefset.add(wou.WOBackOfficeReference );
                    
                    }
          if(wou.installedAtAccountbFOID != null){
            System.debug('\n CLog : '+wou.installedAtAccountbFOID);
            AccntIDSet.add(wou.installedAtAccountbFOID);
          }
                    
                }
                if(ipgolden != null && ipgolden.size()>0){
                    for(SVMXC__Installed_Product__c  ip: [  SELECT GoldenAssetId__c,Name,Id,UniqueSEIdentification__c FROM SVMXC__Installed_Product__c  where GoldenAssetId__c  in : ipgolden])
                    {
                        goldenIdMap.put(ip.GoldenAssetId__c ,ip.id);
                    }
                }
                System.debug('\n CLog : '+wogrefset);
                if(wogrefset != null && wogrefset.size()>0){
                
                    for(WorkOrderGroup__c obj: [select id,BackOfficeReference__c from WorkOrderGroup__c where BackOfficeReference__c in :wogrefset ]){
                        System.debug('\n CLog : '+workorderGroupMap);
                        workorderGroupMap.put(obj.BackOfficeReference__c , obj);
                    }
                
                }
                if(GoldenIDset.Size()>0 || firstNameset.size()>0 || localFirstNameset.size()>0 || 
                       middleInitialset.size()>0  || lastNameset.size()>0 ||
                       localLastNameset.size()>0 || emailAddressset.size()>0 || mobilePhoneset.size()>0 || workPhoneset.size()>0 )
                {
                         String Querystr = getContactQuery();                        
                         conList2 = Database.query(Querystr);
                         System.debug('\n SCLog : '+conList.size());                         
                         System.debug('\n SCLog : '+conList);
                }
                List<SVMXC__Service_Order__c> worderList = new List<SVMXC__Service_Order__c>();
            
            
            
            Set<id> ipset = new Set<id>();
            Set<id> aidset = new Set<id>();
            for(WorkOrder wou: WorkOrderList)
            {
                SVMXC__Service_Order__c  wo =   getWorkOrder(wou);
                System.debug('\n CLog: '+wo);
                
                if(wou.WOGBackOfficeReference != null){
                    System.debug('\n CLog : '+wou.WOGBackOfficeReference);
                        if(workorderGroupMap.containskey(wou.WOGBackOfficeReference))
                        {
                            wo.WorkOrderGroup__c = workorderGroupMap.get(wou.WOGBackOfficeReference).id;
                        }
                }
                else if(wou.WOBackOfficeReference != null ){
                    System.debug('\n CLog : '+wou.WOBackOfficeReference);
                    if(workorderGroupMap.containskey(wou.WOBackOfficeReference))
                    {
                            wo.WorkOrderGroup__c = workorderGroupMap.get(wou.WOBackOfficeReference).id;
                    }
                
                }
                
                wo.RecordTypeid = rt.id;
                wo.SynchronizationLog__c ='Work Order SYNCED with Back Office';
                wo.FirstSynchronizationDate__c = system.now();
                wo.LastSynchronizationDate__c = system.now();
                
                //if(wou.contact != null && getMatchedContact(wou.contact ,conList2) != null )
        if(wou.contact != null)
                {
          Id ContactId =getMatchedContact(wou.contact ,conList2,wou.installedAtAccountbFOID);
          if(ContactId!=null)
          {
            wo.SVMXC__Contact__c = ContactId; 
          }
                }
                //else if(wou.contact != null && getMatchedContact(wou.contact ,conList2) == null){
        else if(wou.contact != null && getMatchedContact(wou.contact,conList2,wou.installedAtAccountbFOID) == null)
        {
                        wo.ContactInformation__c  += 'CONTACT AUTO-MATCHING FAILED \n Contact :';
                        if(wou.contact.firstName != null )
                            wo.ContactInformation__c  += wou.contact.firstName +' ';
                        if(wou.contact.lastName != null)
                            wo.ContactInformation__c  += wou.contact.lastName +' ';
                        if(wou.contact.emailAddress != null)
                            wo.ContactInformation__c  += wou.contact.emailAddress+' ';
                        if(wou.contact.mobilePhone != null)
                            wo.ContactInformation__c  += wou.contact.mobilePhone+' ';
                        wo.ContactInformation__c  += '\n';
                }
                if(wou.mainInstalledProduct!= null )
                {
                    if(wou.mainInstalledProduct.GoldenID != null && wou.mainInstalledProduct.GoldenID !='' && goldenIdMap.containskey(wou.mainInstalledProduct.GoldenID))
                        wo.SVMXC__Component__c =goldenIdMap.get(wou.mainInstalledProduct.GoldenID);
                }
                if(wo.SVMXC__Company__c == null){
                    if(wo.SVMXC__Component__c != null){
                        ipset.add(wo.SVMXC__Component__c);
                    }
                    else{
                            if(wo.SoldToAccount__c != null ){
                                wo.SVMXC__Company__c = wo.SoldToAccount__c;
                                aidset.add(wo.SoldToAccount__c);
                            }
                    }
                
                }
                 System.debug('\n CLog: '+wo);
                worderList.add(wo);
                
            }
            if(ipset != null && ipset.size()>0){
                Map<id,SVMXC__Installed_Product__c> ipidobjmap = new Map<id,SVMXC__Installed_Product__c>();
                List<SVMXC__Installed_Product__c> iplist =[SELECT Id, SVMXC__Company__c, SVMXC__Site__c,UniqueSEIdentification__c FROM SVMXC__Installed_Product__c WHERE id in :ipset ];
                ipidobjmap.putAll(iplist);
                
                for(SVMXC__Service_Order__c wo: worderList)
                {
                    if(wo.SVMXC__Company__c == null){
                        if(wo.SVMXC__Component__c != null){
                             SVMXC__Installed_Product__c mainIP = ipidobjmap.get(wo.SVMXC__Component__c);
                            if(mainIP !=null && mainIP.SVMXC__Company__c != null){
                                    wo.SVMXC__Company__c = mainIP.SVMXC__Company__c;
                                    wo.SVMXC__Site__c = mainIP.SVMXC__Site__c;
                            }else{
                                    wo.SVMXC__Company__c = wo.SoldToAccount__c;
                            }
                        }
                        
                
                    }
                    if(wo.SVMXC__Company__c != null )
                    aidset.add(wo.SVMXC__Company__c);
                
                }
                
            }
            for(SVMXC__Service_Order__c wo: worderList)
            {
                if(wo.SVMXC__Company__c != null )
                    aidset.add(wo.SVMXC__Company__c);
            }
            
            System.debug('\n CLog: account ids '+aidset);
            if(aidset != null && aidset.size()>0)
            {
                Map<id,id> aidsiteMap = new Map<id,id>();
                List<SVMXC__Site__c> primaryLocs = [SELECT Id,SVMXC__Account__c, PrimaryLocation__c FROM SVMXC__Site__c WHERE SVMXC__Account__c  in : aidset AND PrimaryLocation__c=true ];
                Set<id> accountIDSet = new Set<id>();
                for(SVMXC__Site__c site: primaryLocs){
                    if(site.PrimaryLocation__c)
                    aidsiteMap.put(site.SVMXC__Account__c,site.id );
                }
                for(SVMXC__Service_Order__c wo: worderList)
                {
                    if(wo.SVMXC__Company__c != null  && !aidsiteMap.containskey(wo.SVMXC__Company__c)){
                    
                        accountIDSet.add(wo.SVMXC__Company__c);
                    }
                }
                System.debug('\n CLog: '+accountIDSet);
                if(accountIDSet!= null && accountIDSet.size()>0)
                {
                    List<CS_AccountToLocation__c> acctoloc = CS_AccountToLocation__c.getall().values();
                    String SQLHeader ='';
                    String SQLLine ='';
                    
                    for(CS_AccountToLocation__c obj: acctoloc)
                    {
                        if(obj.SourceObjField__c != null )
                        {
                            if(SQLHeader !='')
                             SQLHeader +=',';
                             SQLHeader +=obj.SourceObjField__c;                  
                        }
                        System.debug('\n SQLHeader: '+SQLHeader);
                        if(obj.TargetObjField__c != null )
                        {
                            if(SQLLine !='')
                             SQLLine +=',';
                             SQLLine +=obj.TargetObjField__c;                    
                        }
                        System.debug('\n SQLLine: '+SQLLine);
                    }
                    
                    String SqlQuery='Select id, Name , '+SQLHeader+' , ( select id , '+SQLLine+' from SVMXC__Sites__r where PrimaryLocation__c = true '+' )' +' from Account where id in :accountIDSet';
                    System.debug('\n query: '+SqlQuery);
                    List<SObject> sobjects =Database.Query(SqlQuery);
                    System.debug('\n CLog: '+sobjects);
                    // create location
                    List<SVMXC__Site__c> siteList = new List<SVMXC__Site__c>();
                    
                    if(sobjects!= null && sobjects.size()>0){
                        for(SObject sObj:sobjects){
                            // create location
                            //SObject sObj = (SObject)acc;
                            SVMXC__Site__c site = new SVMXC__Site__c();
                            site.PrimaryLocation__c =  true;
                            //site.TECH_CreateFromWS_IP__c = true;
                            site.SVMXC__Account__c = Id.valueOf(sobj.get('Id')+'');
                            SObject tObj = (SObject)site;
                            tObj.put('Name',sobj.get('Name')+'_'+'SITE');
                            tObj.put('RecordTypeId',Label.CLOCT13SRV36);
                            tObj.put('SVMXC__Location_Type__c', 'Site');
                            
                            for(CS_AccountToLocation__c obj: acctoloc)
                            {
                                if(obj.SourceObjField__c != null  && obj.TargetObjField__c != null )
                                {                               
                                     tObj.put(obj.TargetObjField__c,sobj.get(obj.SourceObjField__c));
                                }
                                
                            }                       
                            siteList.add((SVMXC__Site__c)tObj);
                            
                    
                        }
                        System.debug('\n CLog: '+siteList);
                        if(siteList != null && siteList.size()>0){
                            Database.SaveResult[] sresults  =  CreateOrUpdateServices((List<Sobject>)siteList,'CREATE');
                            for(Integer k=0;k<sresults.size();k++ )
                            {
                                Database.SaveResult sr =sresults[k];
                                if(!sr.isSuccess())
                                {                           
                                    String Message =' Creation of Site ';
                                    for(Database.Error err : sr.getErrors()) {
                                        Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                    }                           
                                    //aidErroMessMap.put(siteList[k].SVMXC__Account__c,Message);          
                                }
                                else{                           
                                    aidsiteMap.put(siteList[k].SVMXC__Account__c,sr.getId());
                                }
                                
                                
                            }
                                
                        }
                        
                    }
                
                }
                
                for(SVMXC__Service_Order__c wo: worderList)
                {
                    if(wo.SVMXC__Company__c != null  && aidsiteMap.containskey(wo.SVMXC__Company__c))
                    {
                        //SVMXC__Site__c primaryLoc =aidsiteMap.get(wo.SVMXC__Company__c);
                        wo.SVMXC__Site__c = aidsiteMap.get(wo.SVMXC__Company__c);
                    }
                    
                }                
            }
            System.debug('\n CLog: '+worderList);
            if(worderList != null && worderList.size()>0)
            {
                Database.SaveResult[] Header_results = CreateOrUpdateServices((List<Sobject>)worderList,'CREATE');
                Set<id> woidset = new set<id>();
                Set<String> errorHeader = new Set<String>();
                Map<String,SVMXC__Service_Order__c> succWOMap = new Map<String,SVMXC__Service_Order__c>();
                for(Integer k=0;k<Header_results.size();k++ )
                {
                    Database.SaveResult sr = Header_results[k];
                    if(sr.isSuccess())
                    {
                        woidset.add(sr.getId());
                    }
                    else{
                        errorHeader.add(worderList[k].BackOfficeSystem__c+worderList[k].BackOfficeReference__c );
                    }
                    
                }
                List<SVMXC__Service_Order__c> wolist  = new List<SVMXC__Service_Order__c>();
                Map<id,SVMXC__Service_Order__c> womap = new Map<id,SVMXC__Service_Order__c>();
                if(woidset!= null && woidset.size()>0)
                {               
                     wolist =  getWorkOrderObjects(woidset);                
                    womap.putAll(wolist);
                }
                for(Integer k=0;k<Header_results.size();k++ )
                {
                    Database.SaveResult sr =Header_results[k];
                    WorkOrderResult wor = new WorkOrderResult();
                    List<ServicedProductsWDResult> ServicedProductsWDResult = new List<ServicedProductsWDResult>();
                    WorkDetailsResult wdr = new WorkDetailsResult();                
                    wdr.ServicedProductsWDResult = ServicedProductsWDResult;
                    wor.WorkDetailsResult =wdr;
                     List<ServicedProductsWDResult> spResult = new List<ServicedProductsWDResult>();
                     
                    if(!sr.isSuccess())
                    {
                        String ErroMessage ='';
                        for(Database.Error err : sr.getErrors()) {
                                    ErroMessage= ' '+err.getFields()+' : '+err.getMessage();                              
                        }
                        wor.success = false;
                        wor.type = 'CREATED';
                        wor.errorMessage = ErroMessage;
                        wor.TECH_WOBackOfficeRecordID = worderList[k].TECH_WOBackOfficeRecordID__c;
                    }
                    else{
                        
                        Id worid = sr.getId();
                        SVMXC__Service_Order__c srObj = womap.get(worid);
                        wor.success = true;
                        wor.type = 'CREATED';
                        wor.workOrderbFOID = srObj.id;
                        wor.workOrderNumber = srObj.name;
                        wor.workOrderBOReference = srObj.BackOfficeReference__c;
                        wor.workOrderGroupbFOID = srObj.WorkOrderGroup__c;
                        /*
                        if (srObj.BackOfficeReference__c != null)
                        {
                            wor.workOrderGoupBOReference = srObj.BackOfficeReference__c;
                        }
                        else
                        {
                            
                        } */
                        wor.TECH_WOBackOfficeRecordID = srObj.TECH_WOBackOfficeRecordID__c;
                        wor.workOrderGoupBOReference = srObj.WorkOrderGroup__r.BackOfficeReference__c;                  
                        wor.countryOfBackOffice = srObj.CountryOfBackOffice__c;
                        wor.backOfficeSystem = srObj.BackOfficeSystem__c;
                        succWOMap.put(srObj.BackOfficeSystem__c+srObj.BackOfficeReference__c,srObj);
                        
                    }   
                    worList.add(wor);
                }
                // processing workDetails
                List<SVMXC__Service_Order_Line__c> soLineList = new List<SVMXC__Service_Order_Line__c>();
                RecordType rtRecord ;
                for(RecordType rtobj: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
                    woDetailsMap.put(rtobj.DeveloperName , rtobj);
                }
                if(woDetailsMap.containskey('Products_Serviced')){
                    rtRecord =woDetailsMap.get('Products_Serviced');
                }

                String iPQuery = getIPQuery();
                List<SVMXC__Installed_Product__c> iplist  = new List<SVMXC__Installed_Product__c>();
                if(iPQuery.length()>0){
                     iplist = Database.query(iPQuery);
                    for(SVMXC__Installed_Product__c ipobj: iplist)
                    IPMap.put(ipobj.id,ipobj);
                }
                
                for(WorkOrder wou: WorkOrderList){
                    
                    if(succWOMap.containskey(wou.backOfficeSystem+wou.WOBackOfficeReference)){
                        if(wou.WorkDetail != null )
                        {
                        if(wou.WorkDetail.ServiceProductsWDs != null && wou.WorkDetail.ServiceProductsWDs.size()>0)
                        {
                            
                            for(ServiceProductsWD spu: wou.WorkDetail.ServiceProductsWDs){                
                                
                                SVMXC__Service_Order_Line__c sol = new SVMXC__Service_Order_Line__c();
                                sol.SVMXC__Service_Order__c = succWOMap.get(wou.backOfficeSystem+wou.WOBackOfficeReference).id;
                                sol.RecordTypeId = rtRecord.id;
                                if(spu.InstalledProduct  != null ){
                                    String ikey='';
                                    if(spu.InstalledProduct.GoldenID != null && spu.InstalledProduct.GoldenID !='')
                                        ikey +=spu.InstalledProduct.GoldenID;
                                    if(spu.InstalledProduct.Name != null && spu.InstalledProduct.Name !='')
                                        ikey +=spu.InstalledProduct.Name;  
                                    if(spu.InstalledProduct.InstalledAtGoldenID != null && spu.InstalledProduct.InstalledAtGoldenID !='')
                                        ikey +=spu.InstalledProduct.InstalledAtGoldenID;
                                    if(spu.InstalledProduct.SerialNumber != null && spu.InstalledProduct.SerialNumber !='')
                                        ikey +=spu.InstalledProduct.SerialNumber;
                                    if(spu.InstalledProduct.SECommercialRef != null && spu.InstalledProduct.SECommercialRef !='')
                                        ikey +=spu.InstalledProduct.SECommercialRef;
                                    if(spu.InstalledProduct.installedAtCountryCode != null && spu.InstalledProduct.installedAtCountryCode !='')
                                        ikey +=spu.InstalledProduct.installedAtCountryCode;
                                    if(iplist != null && iplist.size()>0){
                                    
                                        for(SVMXC__Installed_Product__c ipobj:iplist){
                                            String st ='';
                                            if(spu.InstalledProduct.GoldenID != null && spu.InstalledProduct.GoldenID !='')
                                            {

                                                if(ipobj.GoldenAssetId__c != null)
                                                    st += ipobj.GoldenAssetId__c;
                                            }

                                            if(spu.InstalledProduct.Name != null && spu.InstalledProduct.Name !='')
                                            {

                                                if(ipobj.Name != null)
                                                    st += ipobj.Name;
                                            }

                                            if(spu.InstalledProduct.InstalledAtGoldenID != null && spu.InstalledProduct.InstalledAtGoldenID !='')
                                            {

                                                if(ipobj.SVMXC__Company__r.SEAccountID__c != null)
                                                    st += ipobj.SVMXC__Company__r.SEAccountID__c;
                                            }

                                            if(spu.InstalledProduct.SerialNumber != null && spu.InstalledProduct.SerialNumber !='')
                                            {

                                                if(ipobj.CustomerSerialNumber__c != null)
                                                    st += ipobj.CustomerSerialNumber__c;
                                            }

                                            if(spu.InstalledProduct.SECommercialRef != null && spu.InstalledProduct.SECommercialRef !='')
                                            {

                                                if(ipobj.SchneiderCommercialReference__c != null)
                                                    st += ipobj.SchneiderCommercialReference__c;
                                            }

                                            if(spu.InstalledProduct.installedAtCountryCode != null && spu.InstalledProduct.installedAtCountryCode !='')
                                            {

                                                if(ipobj.SVMXC__Company__r.Country__r.CountryCode__c != null)
                                                    st += ipobj.SVMXC__Company__r.Country__r.CountryCode__c;
                                            }
                                            


                                            if(ikey == st)
                                            {                    

                                                sol.SVMXC__Serial_Number__c = ipobj.id;
                                                break;
                                            }
                                    
                                        }   
                                    
                                    
                                    }




                                        
                                }
                                
                                soLineList.add(sol);
                            }                   
                        
                        }
                        }
                    }
                
                }
                if(soLineList != null && soLineList.size()>0){
                    Database.SaveResult[] child_results = CreateOrUpdateServices((List<Sobject>)soLineList,'CREATE');
                    if(child_results != null){
                        for(Integer k=0;k<child_results.size();k++ )
                        {
                            Database.SaveResult sr = child_results[k];
                            ServicedProductsWDResult result = new ServicedProductsWDResult();
                            if(soLineList[k].SVMXC__Serial_Number__c != null ){
                                result.installedProductbFOID = soLineList[k].SVMXC__Serial_Number__c;
                                if(IPMap.containskey(soLineList[k].SVMXC__Serial_Number__c))
                                {
                                    result.installedProductGoldenID = IPMap.get(soLineList[k].SVMXC__Serial_Number__c).GoldenAssetId__c;
                                    result.SerialNumber = IPMap.get(soLineList[k].SVMXC__Serial_Number__c).CustomerSerialNumber__c;
                                }               
                                
                            }
                            result.workOrderbFOID = soLineList[k].SVMXC__Service_Order__c;
                            if(!sr.isSuccess())
                            {
                                String Message ='';
                                for(Database.Error err : sr.getErrors()) {
                                    Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                                }
                                result.success = false;
                                result.errorMessage = Message;
                                
                                
                            }
                            else{
                                result.success = true;
                            
                            }
                            for(WorkOrderResult wor: worList){
                                if(wor.workOrderbFOID == result.workOrderbFOID){
                                    wor.WorkDetailsResult.ServicedProductsWDResult.add(result);
                                }
                            }
                            
                            
                        }
                    }
                }
            
            }
                
                
                
            
        }
        
            
            
            return worList;
    
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
    public static Map<id,SVMXC__Installed_Product__c> IPMap = new Map<id,SVMXC__Installed_Product__c>();
    public static PartsOrders preparePartsOrder(List<SVMXC__RMA_Shipment_Order__c> porderList,List<SVMXC__RMA_Shipment_Line__c> proderLinelist){
            PartsOrders posResults = new PartsOrders();
            List<PartsOrder> PartsOrderUnitList = new List<PartsOrder>();
             Map<id,SVMXC__RMA_Shipment_Order__c> porderMap = new Map<id, SVMXC__RMA_Shipment_Order__c>();
            List<SVMXC__RMA_Shipment_Line__c> partsOrderLineList = new List<SVMXC__RMA_Shipment_Line__c>();
            Map<id,List<SVMXC__RMA_Shipment_Line__c>> porderLineMap = new Map<id,List<SVMXC__RMA_Shipment_Line__c>>();
            List<SVMXC__RMA_Shipment_Order__c> partsOrderList = porderList;
            System.debug('\n WWS Log: '+partsOrderList.size());
            if(partsOrderList != null && partsOrderList.size()>0){
                    porderMap.putAll(partsOrderList); 
                    partsOrderLineList = proderLinelist;
                    for(SVMXC__RMA_Shipment_Line__c line: partsOrderLineList){
                    if(porderLineMap.containskey(line.SVMXC__RMA_Shipment_Order__c)){
                            
                            porderLineMap.get(line.SVMXC__RMA_Shipment_Order__c).add(line);
                    }
                    else{
                            porderLineMap.put(line.SVMXC__RMA_Shipment_Order__c, new List<SVMXC__RMA_Shipment_Line__c>{line});
                        }
                    }
                
            }
            for(SVMXC__RMA_Shipment_Order__c porder: partsOrderList){
                PartsOrder pou = new PartsOrder();
                
                pou.partOrderbFOID = porder.id;
                pou.partOrderbFONumber = porder.name;
                pou.partOrderStatus = porder.SVMXC__Order_Status__c;
                pou.serviceLevel =  porder.Service_level__c;
                pou.shippingReceivingNotes = porder.SVMXC__Shipping_Receiving_Notes__c;
                pou.freightTerms = porder.Freight_terms__c;             
                pou.partsSLATerms = porder.Parts_SLA_terms__c;
                pou.onsiteSLATerms =  porder.On_site_SLA_terms__c;
                Contact c = new Contact();
                c.GoldenID = porder.SVMXC__Contact__r.SEContactID__c;
                c.firstName = porder.SVMXC__Contact__r.FirstName;
                c.localFirstName = porder.SVMXC__Contact__r.LocalFirstName__c;
                c.middleInitial = porder.SVMXC__Contact__r.MidInit__c;
                c.localMiddleInitial = porder.SVMXC__Contact__r.LocalMidInit__c;
                c.lastName = porder.SVMXC__Contact__r.LastName;
                c.localLastName = porder.SVMXC__Contact__r.LocalLastName__c;
                c.emailAddress = porder.SVMXC__Contact__r.Email;
                c.mobilePhone = porder.SVMXC__Contact__r.MobilePhone;
                c.workPhone = porder.SVMXC__Contact__r.WorkPhone__c;
                pou.contact = c;
                Account a = new Account();              
                a.GoldenID = porder.Ship_to__r.SEAccountID__c;
                a.AddAddressInfo = porder.Ship_to__r.AccountLocalName__c;
                a.NameLocal = porder.Ship_to__r.AccountLocalName__c;
                a.Street = porder.Ship_to__r.Street__c;
                a.StreetLocal = porder.Ship_to__r.StreetLocalLang__c;
                a.AddAddressInfo = porder.Ship_to__r.AdditionalAddress__c;
                a.AddAddressInfoLocal = porder.Ship_to__r.LocalAdditionalAddress__c;
                a.ZipCode = porder.Ship_to__r.ZipCode__c;
                a.City = porder.Ship_to__r.City__c;
                a.LocalCity = porder.Ship_to__r.LocalCity__c;
                a.CountryCode = porder.Ship_to__r.Country__r.CountryCode__c;
                a.StateProvinceCode = porder.Ship_to__r.StateProvince__r.StateProvinceCode__c;
                a.recordTypeName = porder.Ship_to__r.RecordType.Name;
                a.bFOID = porder.Ship_to__c;
                a.Name = porder.Ship_to__r.Name;
                
                
                pou.shipToAccount = a;
                pou.PartsOrderLines = new List<PartsOrderLines>();
                if(porderLineMap.containskey(porder.id))
                {
                    List<PartsOrderLines> pols = new List<PartsOrderLines>();
                    for(SVMXC__RMA_Shipment_Line__c pol: porderLineMap.get(porder.id)){
                        
                        PartsOrderLines polu = new PartsOrderLines();                       
                        polu.partOrderLinebFOID = pol.id;
                        polu.partOrderLinebFONumber = pol.Name;
                        polu.partOrderLineType = pol.SVMXC__Line_Type__c;
                        
                        polu.sparePartbFOID = pol.SVMXC__Product__c;
                        polu.FOSKUReference = pol.SKU__c;
                        polu.plantName = pol.Plant_Name__r.name;
                        polu.expectedQuantity = Integer.valueOf(pol.SVMXC__Expected_Quantity2__c);
                        polu.unitOfMeasure = pol.UnitofMeasure__c;
                        polu.requestedDate = String.valueOf(pol.RequestedDate__c);
                        polu.calculatedPlant = pol.Calculated_plant__r.name;
                        polu.stockQuantity = Integer.valueOf(pol.Available_stock__c);

                        polu.sparePartCategory = String.valueOf(pol.Spare_part_category__c);
                        polu.expectedShipDate = String.valueOf(pol.SVMXC__Expected_Ship_Date__c);
                        polu.LeadDate = String.valueOf(pol.Lead_Date__c);
                        polu.BOMaterialReference = pol.BOMaterialReference__c;
                        
                        polu.freeTextReference = pol.Free_text_reference__c;
                        polu.genericReference = pol.Generic_reference__c;
                        polu.createdBySESAID = pol.createdby.FederationIdentifier;
                        polu.createdByFirstName = pol.createdby.FirstName;
                        polu.createdByLastName = pol.createdby.LastName;
                        polu.shipmentMode = pol.Shipment_mode__c;
                        polu.partOrderLineType = pol.RecordType.Name;
                        pols.add(polu);

                    }
                    pou.PartsOrderLines = pols;
                }

            PartsOrderUnitList.add(pou);
            

            
        }
        posResults.PartsOrders = PartsOrderUnitList;
        return posResults;
    }
    public static PartsOrders preparePartsOrder(SVMXC__Service_Order__c wo){
    
        PartsOrders posResults = new PartsOrders();
        
        List<PartsOrder> PartsOrderUnitList = new List<PartsOrder>();
        Map<id,SVMXC__RMA_Shipment_Order__c> porderMap = new Map<id, SVMXC__RMA_Shipment_Order__c>();
        List<SVMXC__RMA_Shipment_Line__c> partsOrderLineList = new List<SVMXC__RMA_Shipment_Line__c>();
        Map<id,List<SVMXC__RMA_Shipment_Line__c>> porderLineMap = new Map<id,List<SVMXC__RMA_Shipment_Line__c>>();
        Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__RMA_Shipment_Order__c; 
        Map<String,Schema.RecordTypeInfo> PartOrderRecordTypeInfo = dSobjres.getRecordTypeInfosByName(); 
        Id partsorderrtId ;
        String LineType ='';
        if(wo.SVMXC__Order_Status__c =='Unscheduled' || wo.SVMXC__Order_Status__c =='Scheduled' || wo.SVMXC__Order_Status__c =='Customer Confirmed' || wo.SVMXC__Order_Status__c =='Acknowledge FSE' ||  wo.SVMXC__Order_Status__c =='WIP' )
        {       
            partsorderrtId = PartOrderRecordTypeInfo.get('Shipment').getRecordTypeId();
            LineType = 'Shipment';
        }
        else if(wo.SVMXC__Order_Status__c =='Service Complete'){
            partsorderrtId = PartOrderRecordTypeInfo.get('RMA').getRecordTypeId();
            LineType = 'RMA';
        }
       
        // Yassine B 19/05/2015 BR-7677 : Added more fields in QUERY
        List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id, Name,SVMXC__Order_Status__c,Service_level__c,SVMXC__Shipping_Receiving_Notes__c,Freight_terms__c,Parts_SLA_terms__c,On_site_SLA_terms__c,SVMXC__Contact__c,SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,SVMXC__Contact__r.MidInit__c,
        SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,
        Ship_to__r.SEAccountID__c,Ship_to__r.Name,Ship_to__r.AccountLocalName__c,Ship_to__r.Street__c,Ship_to__r.StreetLocalLang__c,Ship_to__r.AdditionalAddress__c,Ship_to__r.LocalAdditionalAddress__c,Ship_to__r.ZipCode__c,Ship_to__r.City__c,Ship_to__r.LocalCity__c,Ship_to__r.Country__r.CountryCode__c,Ship_to__r.StateProvince__c,Ship_to__c,Attention_To__r.FederationIdentifier,Attention_To__r.Email,
        Ship_to__r.RecordType.Name,Ship_to__r.StateProvince__r.StateProvinceCode__c,RecordType.Name, To_Name__c, SVMXC__Destination_Street__c, SVMXC__Destination_Zip__c, SVMXC__Destination_City__c,To_Country__r.CountryCode__c,To_State__r.StateProvinceCode__c, Shipment_mode__c  from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c = : wo.id AND SVMXC__Order_Status__c='Open' and RecordTypeId =:partsorderrtId ];
        
        System.debug('\n WWS Log: '+partsOrderList.size());
        
        if(partsOrderList != null && partsOrderList.size()>0){
            porderMap.putAll(partsOrderList);       
            partsOrderLineList = [select  id,Name,SVMXC__RMA_Shipment_Order__c,SVMXC__Line_Type__c,Plant_Name__r.name,SVMXC__Expected_Quantity2__c,UnitofMeasure__c,RequestedDate__c,RecordType.Name,
            Calculated_plant__r.name,Spare_part_category__c,SVMXC__Expected_Ship_Date__c,Lead_Date__c,Free_text_reference__c,Generic_reference__c,Shipment_mode__c,SVMXC__Product__c,SKU__c,
            BOMaterialReference__c,createdby.FederationIdentifier,createdby.FirstName,createdby.LastName,Available_stock__c,Received_Qty__c,Received_Date__c,Return_Reason__c,SVMXC__Serial_Number__r.SVMXC__Serial_Lot_Number__c,CurrencyIsoCode,SVMXC__Line_Price2__c from SVMXC__RMA_Shipment_Line__c where SVMXC__RMA_Shipment_Order__c in : porderMap.keyset() AND SVMXC__Line_Type__c =: LineType];           
            System.debug('\n WWS Log: '+partsOrderLineList.size());
            for(SVMXC__RMA_Shipment_Line__c line: partsOrderLineList){
                if(porderLineMap.containskey(line.SVMXC__RMA_Shipment_Order__c)){
                    
                    porderLineMap.get(line.SVMXC__RMA_Shipment_Order__c).add(line);
                }
                else{
                    porderLineMap.put(line.SVMXC__RMA_Shipment_Order__c, new List<SVMXC__RMA_Shipment_Line__c>{line});
                }
            }
            
        }
        for(SVMXC__RMA_Shipment_Order__c porder: partsOrderList){
                PartsOrder pou = new PartsOrder();
                
                pou.partOrderbFOID = porder.id;
                pou.partOrderType = porder.RecordType.Name;
                pou.partOrderbFONumber = porder.name;
                pou.partOrderStatus = porder.SVMXC__Order_Status__c;
                pou.serviceLevel =  porder.Service_level__c;
                pou.shippingReceivingNotes = porder.SVMXC__Shipping_Receiving_Notes__c;
                pou.freightTerms = porder.Freight_terms__c;             
                pou.partsSLATerms = porder.Parts_SLA_terms__c;
                pou.onsiteSLATerms =  porder.On_site_SLA_terms__c;
                pou.attentionToSESAID = porder.Attention_To__r.FederationIdentifier;
                pou.attentionToEmail = porder.Attention_To__r.Email;
                Contact c = new Contact();
                c.GoldenID = porder.SVMXC__Contact__r.SEContactID__c;
                c.firstName = porder.SVMXC__Contact__r.FirstName;
                c.localFirstName = porder.SVMXC__Contact__r.LocalFirstName__c;
                c.middleInitial = porder.SVMXC__Contact__r.MidInit__c;
                c.localMiddleInitial = porder.SVMXC__Contact__r.LocalMidInit__c;
                c.lastName = porder.SVMXC__Contact__r.LastName;
                c.localLastName = porder.SVMXC__Contact__r.LocalLastName__c;
                c.emailAddress = porder.SVMXC__Contact__r.Email;
                c.mobilePhone = porder.SVMXC__Contact__r.MobilePhone;
                c.workPhone = porder.SVMXC__Contact__r.WorkPhone__c;
                pou.contact = c;
                Account a = new Account();   
                // Yassine B 19/05/2015 BR-7677   -- START
                if(porder.Ship_to__c != null){ 
                    a.GoldenID = porder.Ship_to__r.SEAccountID__c;
                    a.AddAddressInfo = porder.Ship_to__r.AccountLocalName__c;
                    a.NameLocal = porder.Ship_to__r.AccountLocalName__c;
                    a.Street = porder.Ship_to__r.Street__c;
                    a.StreetLocal = porder.Ship_to__r.StreetLocalLang__c;
                    a.AddAddressInfo = porder.Ship_to__r.AdditionalAddress__c;
                    a.AddAddressInfoLocal = porder.Ship_to__r.LocalAdditionalAddress__c;
                    a.ZipCode = porder.Ship_to__r.ZipCode__c;
                    a.City = porder.Ship_to__r.City__c;
                    a.LocalCity = porder.Ship_to__r.LocalCity__c;
                    a.CountryCode = porder.Ship_to__r.Country__r.CountryCode__c;
                    a.StateProvinceCode = porder.Ship_to__r.StateProvince__r.StateProvinceCode__c;
                    a.recordTypeName = porder.Ship_to__r.RecordType.Name;
                    a.bFOID = porder.Ship_to__c;
                    a.Name = porder.Ship_to__r.Name;
                }else{
                    a.name=porder.To_Name__c;
                    a.Street=porder.SVMXC__Destination_Street__c;
                    a.ZipCode=porder.SVMXC__Destination_Zip__c;
                    a.City=porder.SVMXC__Destination_City__c;
                    a.CountryCode=porder.To_Country__r.CountryCode__c;
                    a.StateProvinceCode=porder.To_State__r.StateProvinceCode__c;
                }
                 // Yassine B 19/05/2015 BR-7677   -- END
                pou.shipToAccount = a;
                pou.PartsOrderLines = new List<PartsOrderLines>();
                if(porderLineMap.containskey(porder.id))
                {
                    List<PartsOrderLines> pols = new List<PartsOrderLines>();
                    for(SVMXC__RMA_Shipment_Line__c pol: porderLineMap.get(porder.id)){
                        
                        PartsOrderLines polu = new PartsOrderLines();                       
                        polu.partOrderLinebFOID = pol.id;
                        polu.partOrderLinebFONumber = pol.Name;
                        polu.partOrderLineType = pol.RecordType.Name;
                        polu.partOrderLineInternalType = pol.SVMXC__Line_Type__c;
                        polu.sparePartbFOID = pol.SVMXC__Product__c;
                        polu.FOSKUReference = pol.SKU__c;
                        polu.plantName = pol.Plant_Name__r.name;
                        polu.expectedQuantity = Integer.valueOf(pol.SVMXC__Expected_Quantity2__c);
                        polu.unitOfMeasure = pol.UnitofMeasure__c;
                        polu.requestedDate = String.valueOf(pol.RequestedDate__c);
                        polu.calculatedPlant = pol.Calculated_plant__r.name;
                        polu.stockQuantity = Integer.valueOf(pol.Available_stock__c);

                        polu.sparePartCategory = String.valueOf(pol.Spare_part_category__c);
                        polu.expectedShipDate = String.valueOf(pol.SVMXC__Expected_Ship_Date__c);
                        polu.LeadDate = String.valueOf(pol.Lead_Date__c);
                        polu.receivedQuantity = pol.Received_Qty__c;
                        polu.receivedDate = pol.Received_Date__c;
                        polu.returnReason = pol.Return_Reason__c;
                        polu.installedProductSerialNumber = pol.SVMXC__Serial_Number__r.SVMXC__Serial_Lot_Number__c;

                        polu.BOMaterialReference = pol.BOMaterialReference__c;
                        
                        polu.freeTextReference = pol.Free_text_reference__c;
                        polu.genericReference = pol.Generic_reference__c;
                        polu.createdBySESAID = pol.createdby.FederationIdentifier;
                        polu.createdByFirstName = pol.createdby.FirstName;
                        polu.createdByLastName = pol.createdby.LastName;
                        polu.shipmentMode = porder.Shipment_mode__c;
                        polu.partOrderLineType = pol.RecordType.Name;
                        polu.currencyIsoCode = pol.CurrencyIsoCode;
                        polu.linePrice = pol.SVMXC__Line_Price2__c;
                        pols.add(polu);

                    }
                    pou.PartsOrderLines = pols;
                }

            PartsOrderUnitList.add(pou);
            

            
        }
        posResults.PartsOrders = PartsOrderUnitList;
        return posResults;
    
    }
    /*
    public static List<SVMXC__Service_Order_Line__c> prepareServiceProducts(List<ServiceProductsWD> spwd){
        List<SVMXC__Service_Order_Line__c> ServiceProductsList = new  List<SVMXC__Service_Order_Line__c>();
        List<ServiceProducts>  spList = new List<ServiceProducts>();
        
        
        for(ServiceProductsWD spu: spwd){
                
                ServiceProducts spObj = new ServiceProducts();
        
            if(spu.InstalledProduct != null)
                getInstalledProductFields(spu.InstalledProduct ,spObj);
            if(spu.FSR != null)
                getTechnicianFields(spu.FSR,spObj);             
             spList.add(spObj);
            
        }
        List<SVMXC__Installed_Product__c> iplist = Database.query(getIPQuery());
        for(SVMXC__Installed_Product__c ipobj: iplist)
        IPMap.put(ipobj.id,ipobj);
        
        String Query='';        
        String QueryString ='';
        String WhereClause ='';
        QueryString = ' Select Id,FirstName,LastName,Email,MobilePhone,WorkPhone__c from Contact ';
        
        if(TFirstNameset != null && TFirstNameset.size()>0)
        {
            WhereClause +=  ' FirstName in  ('+ SOQLListFormat(TFirstNameset) +') ';
        }
        if(TLastNameset != null && TLastNameset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
            else
            WhereClause +=  '  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
        }
        if(TEmailset != null && TEmailset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  email in  ('+ SOQLListFormat(TEmailset) +') ';
            else
            WhereClause +=  '  email in  ('+ SOQLListFormat(TEmailset) +') ';
        }
            List<Sobject> contactlist  = new List<Sobject>();
         if(WhereClause.length()>0){
             Query =  QueryString +' where '+WhereClause;
             System.debug('\n WOWS Log : contact query '+Query);
            contactlist =  Database.query(Query);
         }
         
         
        String UQuery='';        
        String UQueryString ='';
        String UWhereClause ='';
        UQueryString = ' Select id,FirstName,LastName,Email,FederationIdentifier from User ';
        
        if(TFirstNameset != null && TFirstNameset.size()>0)
        {
            UWhereClause +=  ' FirstName in  ('+ SOQLListFormat(TFirstNameset) +') ';
        }
        if(TLastNameset != null && TLastNameset.size()>0)
        {
            if(UWhereClause.length()>0)
            UWhereClause +=  ' OR  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
            else
            UWhereClause +=  '  LastName in  ('+ SOQLListFormat(TLastNameset) +') ';
        }
        if(TEmailset != null && TEmailset.size()>0)
        {
            if(UWhereClause.length()>0)
            UWhereClause +=  ' OR  email in  ('+ SOQLListFormat(TEmailset) +') ';
            else
            UWhereClause +=  '  email in  ('+ SOQLListFormat(TEmailset) +') ';
        }
        if(SESAIDset != null && SESAIDset.size()>0)
        {
            if(UWhereClause.length()>0)
            UWhereClause +=  ' OR  FederationIdentifier in  ('+ SOQLListFormat(SESAIDset) +') ';
            else
            UWhereClause +=  '  FederationIdentifier in  ('+ SOQLListFormat(SESAIDset) +') ';
        }
        List<User> userlist = new List<User>();
        if(UWhereClause.length()>0){
            UQuery =  UQueryString +' where '+UWhereClause;  
            System.debug('\n WOWS Log : user query '+UQuery);
            userlist =Database.query(UQuery);
        }
         
        
        Set<id> conidset = new Set<id>();
        Set<id> useridset = new Set<id>();
        
        for(ServiceProducts spu: spList){
            System.debug('\n WOWS Log ServiceProducts '+spu);
            string key ='';
            if(spu.FirstName != null && spu.FirstName !='')
                    key +=spu.FirstName;
            if(spu.LastName != null && spu.LastName !='')
                key +=spu.LastName;
            if(spu.Email != null && spu.Email !='')
                key +=spu.Email;
                
            
        
            if(spu.RoleName == 'Schneider Employee'){
                
                if(spu.SESAID != null && spu.SESAID !='')
                    key +=spu.SESAID;
                
                for(User uobj: userlist){
                    String st='';
                    if(spu.SESAID != null && spu.SESAID !='')
                    {
                        if(uobj.FederationIdentifier != null)
                            st +=uobj.FederationIdentifier;
                    }
                    if(spu.FirstName != null && spu.FirstName !='')
                    {
                        if(uobj.FirstName != null)
                            st +=uobj.FirstName;
                    }
                    if(spu.LastName != null && spu.LastName !='')
                    {
                        if(uobj.LastName != null)
                            st +=uobj.LastName;
                    }
                    if(spu.Email != null && spu.Email !='')
                    {
                        if(uobj.Email != null)
                            st +=uobj.Email;
                    }
                    if(key == st){
                    
                        spu.UserId = uobj.id;
                        useridset.add(uobj.id);
                     System.debug('\n WOWS Log userId '+spu.UserId);       
                        break;
                    }
                                    
                }
                
            
            }
            else{
                
                for(Sobject sobj: contactlist){
                    String st='';
                    
                    if(spu.FirstName != null && spu.FirstName !='')
                    {
                        if(spu.FirstName != null)
                            st +=sobj.get('FirstName');
                    }
                    if(spu.LastName != null && spu.LastName !='')
                    {
                        if(spu.LastName != null)
                            st +=sobj.get('LastName');
                    }
                    if(spu.Email != null && spu.Email !='')
                    {
                        if(spu.Email != null)
                            st +=sobj.get('Email');
                    }
                    if(key == st){
                        
                        spu.ContactId = (Id)sobj.get('Id');
                        System.debug('\n WOWS Log contactid '+spu.ContactId);
                        conidset.add(spu.ContactId);
                        break;
                    }
                    
                
                }
                
            
            }
            
            String ikey='';
            if(spu.GoldenID != null && spu.GoldenID !='')
                ikey +=spu.GoldenID;
            if(spu.IPName != null && spu.IPName !='')
                ikey +=spu.IPName;  
            if(spu.InstalledAtGoldenID != null && spu.InstalledAtGoldenID !='')
                ikey +=spu.InstalledAtGoldenID;
            if(spu.IPSerialNumber != null && spu.IPSerialNumber !='')
                ikey +=spu.IPSerialNumber;
            if(spu.IPSECommercialRef != null && spu.IPSECommercialRef !='')
                ikey +=spu.IPSECommercialRef;
            if(spu.IpinstalledAtCountryCode != null && spu.IpinstalledAtCountryCode !='')
                ikey +=spu.IpinstalledAtCountryCode;
            
            for(SVMXC__Installed_Product__c ipobj:iplist){
                String st ='';
                if(spu.GoldenID != null && spu.GoldenID !='')
                {
                    if(ipobj.GoldenAssetId__c != null)
                        st += ipobj.GoldenAssetId__c;
                }
                if(spu.IPName != null && spu.IPName !='')
                {
                    if(ipobj.Name != null)
                        st += ipobj.Name;
                }
                if(spu.InstalledAtGoldenID != null && spu.InstalledAtGoldenID !='')
                {
                    if(ipobj.SVMXC__Company__r.SEAccountID__c != null)
                        st += ipobj.SVMXC__Company__r.SEAccountID__c;
                }
                if(spu.IPSerialNumber != null && spu.IPSerialNumber !='')
                {
                    if(ipobj.CustomerSerialNumber__c != null)
                        st += ipobj.CustomerSerialNumber__c;
                }
                if(spu.IPSECommercialRef != null && spu.IPSECommercialRef !='')
                {
                    if(ipobj.SchneiderCommercialReference__c != null)
                        st += ipobj.SchneiderCommercialReference__c;
                }
                if(spu.IpinstalledAtCountryCode != null && spu.IpinstalledAtCountryCode !='')
                {
                    if(ipobj.SVMXC__Company__r.Country__r.CountryCode__c != null)
                        st += ipobj.SVMXC__Company__r.Country__r.CountryCode__c;
                }
                
                if(ikey == st)
                {                    
                    spu.ipid = ipobj.id;
                    break;
                }
        
            }
             System.debug('\n WOWS Log ServiceProducts '+spu);
            
        }       
        
        List<SVMXC__Service_Group_Members__c> sgmlist = [select id, SVMXC__Salesforce_User__c , ThirdPartyContact__c,SVMXC__Role__c  from SVMXC__Service_Group_Members__c where SVMXC__Salesforce_User__c in : useridset or ThirdPartyContact__c in : conidset ];
        for(ServiceProducts spu: spList){       
            System.debug('\n WOWS Log sp '+spu);
            for(SVMXC__Service_Group_Members__c sg:sgmlist){
                 
                
                if(spu.RoleName == 'Schneider Employee')
                {                       
                    if(spu.UserId == sg.SVMXC__Salesforce_User__c){
                        spu.Fsrid = sg.id;
                    }               
                }
                else{
                    if(spu.ContactId == sg.ThirdPartyContact__c){
                        spu.Fsrid = sg.id;
                    }
                
                }
                System.debug('\n WOWS Log sp '+spu);
            
            }
        
        }
        
        RecordType rtRecord ;
        for(RecordType rt: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
            woDetailsMap.put(rt.DeveloperName , rt);
        }
        if(woDetailsMap.containskey('Products_Serviced')){
            rtRecord =woDetailsMap.get('Products_Serviced');
        }
        for(ServiceProducts spu: spList){   
            SVMXC__Service_Order_Line__c sol = new SVMXC__Service_Order_Line__c();
            sol.SVMXC__Serial_Number__c = spu.ipid;
            sol.SVMXC__Group_Member__c = spu.Fsrid;
            sol.RecordTypeId = rtRecord.id;
            ServiceProductsList.add(sol);
        
        }
        
        
        
        return ServiceProductsList;
    
    }
    */
    
    public Static Set<String> SESAIDset = new Set<string>();
    public Static set<String> TFirstNameset = new Set<String>();
    public Static set<String> TLastNameset = new Set<String>();
    public Static set<String> TEmailset = new Set<String>();
    
    public static  void getTechnicianFields(Technician tecu,ServiceProducts spObj){
    
        if(tecu != null ){
        
            if(tecu.SESAID != null && tecu.SESAID !='')
            {
                SESAIDset.add(tecu.SESAID );
                spObj.SESAID = tecu.SESAID ;
            }
            if(tecu.FirstName != null && tecu.FirstName !='')
            {
                TFirstNameset.add(tecu.FirstName );
                spObj.FirstName = tecu.FirstName ;
            }
            if(tecu.LastName != null && tecu.LastName !='')
            {
                TLastNameset.add(tecu.LastName );
                spObj.LastName = tecu.LastName ;
            }
            if(tecu.Email != null && tecu.Email !='')
            {
                TEmailset.add(tecu.Email );
                spObj.Email = tecu.Email ;
            }
            if(tecu.RoleName != null && tecu.RoleName !='')
            {               
                spObj.RoleName = tecu.RoleName ;
            }
            
        
        
        }
    
    }
    
    /** Yassine.B : updated on 19/02/15 **/
    webservice static WorkOrderSyncDetailsResult updateWorkOrderSyncDetails(WorkOrderSyncDetails request){
        WorkOrderSyncDetailsResult result = new WorkOrderSyncDetailsResult();
        if(request != null)
        {
            SVMXC__Service_Order__c wo = new SVMXC__Service_Order__c();
            WorkOrderGroup__c wog;      
            MandatoryFields mf = WorkOrderSyncDetailsMandataryCheck(request);
            
            if(mf.isMFPass){
                
                wo=[select id,SynchronizationLog__c,BackOfficeSystem__c,FirstSynchronizationDate__c,LastSynchronizationDate__c ,name, BackOfficeReference__c, SVMXC__Order_Status__c, WorkOrderGroup__c, WorkOrderGroup__r.BackOfficeReference__c from SVMXC__Service_Order__c where id =:request.workOrderbFOId];
                if(request.workOrderGroupbFOID != null){
                    try{
                        wog=[select id, BackOfficeReference__c from WorkOrderGroup__c where id =:request.workOrderGroupbFOID];
                    }
                    catch(Exception ex){
                        System.debug('exception ');
                    }
                }else{
                    if(wo.WorkOrderGroup__c != null){
                        try{
                            wog=[select id, BackOfficeReference__c from WorkOrderGroup__c where id =:wo.WorkOrderGroup__c];
                        }
                        catch(Exception ex){
                            System.debug('exception ');
                        }
                    }
                }
                if(request.Event == 'WO.CREATION'){
                    
                        if(request.success){
                            wo.SynchronizationLog__c ='Work Order CREATED in Back Office';
                            wo.BackOfficeReference__c = request.workOrderBOReference;
                            wo.TECH_IsBoundToBackOffice__c = true;
                            wo.SVMXC__Order_Status__c = 'Unscheduled';
                            if(wog != null){
                                wog.BackOfficeReference__c = request.workOrderGroupBOReference;
                            }
                        }
                        else{
                            wo.SynchronizationLog__c ='Work Order NOT CREATED in Back Office due to : '+request.BOerrorMessage+ '';
                        }
                        if(wo.FirstSynchronizationDate__c==null){
                         wo.FirstSynchronizationDate__c = system.now();
                        }
                        wo.LastSynchronizationDate__c = system.now();
                        wo.TECH_WOBackOfficeRecordID__c = request.TECH_WOBackOfficeRecordID;
                        //wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                        
                        
                    }
                    else if(request.Event == 'WO.RELEASE'){
                    
                        if(request.success){
                            wo.SynchronizationLog__c ='Work Order RELEASED in Back Office';
                            
                            //Yassine.B 15/04/2015 - BEGIN - patch code move into the success=true case
                            Map<String,CS_BOFederationSystems__c> csmap =CS_BOFederationSystems__c.getAll();
                            
                            Set<String> OracleSystems = new Set<String>(); 
                            Set<String> SAPSystems = new Set<String>(); 
                            for(CS_BOFederationSystems__c obj:csmap.values()){
                                if(obj.System__c != null){
                                    String BOSystem = String.valueOf(obj.System__c);
                                    if(BOSystem.contains('Oracle'))
        
        
                                        OracleSystems.add(obj.SystemCode__c);
                                    else if(BOSystem.contains('SAP'))
        
        
                                        SAPSystems.add(obj.SystemCode__c);
                                }
        
        
                                
                            }
                            
                            if(SAPSystems.contains(wo.BackOfficeSystem__c))
                            {
                                    List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id, Name,SVMXC__Order_Status__c, Last_Synchronization__c, Synchronization_log__c from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c = : request.workOrderbFOId and SVMXC__Order_Status__c = 'Open'];
        
        
        
        
                                    for(SVMXC__RMA_Shipment_Order__c obj: partsOrderList){                            
                                        obj.SVMXC__Order_Status__c = 'Released';
        
        
                                        obj.Last_Synchronization__c = system.now();
                                        obj.Synchronization_log__c = 'Part Order RELEASED in Back Office';
                                    }
                                    
                                    update partsOrderList;
                            
                            }
                            else if(OracleSystems.contains(wo.BackOfficeSystem__c)){
                                //Yassine.B 04/06/2015 - START - patch code DEF-DEF-7241
                                Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__RMA_Shipment_Order__c; 
                                Map<String,Schema.RecordTypeInfo> PartOrderRecordTypeInfo = dSobjres.getRecordTypeInfosByName(); 
                                List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id, Name,SVMXC__Order_Status__c, RecordTypeId from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c = : request.workOrderbFOId and SVMXC__Order_Status__c = 'Open'];
                                List<SVMXC__RMA_Shipment_Order__c> partOrderListTarget = new List<SVMXC__RMA_Shipment_Order__c>();
                                for(SVMXC__RMA_Shipment_Order__c obj: partsOrderList){
                                    if(wo.SVMXC__Order_Status__c =='Unscheduled' || wo.SVMXC__Order_Status__c =='Scheduled' || wo.SVMXC__Order_Status__c =='Customer Confirmed' || wo.SVMXC__Order_Status__c =='Acknowledge FSE' ||  wo.SVMXC__Order_Status__c =='WIP' ){
                                        if(obj.RecordTypeId == PartOrderRecordTypeInfo.get('Shipment').getRecordTypeId()){
                                            obj.SVMXC__Order_Status__c = 'Pending Release in BO';      
                                            obj.Last_Synchronization__c = system.now();
                                            obj.Synchronization_log__c = 'Part Order PENDING RELEASE in Back Office';
                                            partOrderListTarget.add(obj);
                                        }
                                    }else if(wo.SVMXC__Order_Status__c == 'Service Complete'){
                                        if(obj.RecordTypeId == PartOrderRecordTypeInfo.get('RMA').getRecordTypeId()){
                                            obj.SVMXC__Order_Status__c = 'Pending Release in BO';      
                                            obj.Last_Synchronization__c = system.now();
                                            obj.Synchronization_log__c = 'Part Order PENDING RELEASE in Back Office';   
                                            partOrderListTarget.add(obj);
                                        }
                                    }
                                    
                                }
                                if(partOrderListTarget.size() > 0){
                                    update partOrderListTarget;
                                }
                                //Yassine.B 04/06/2015 - END - patch code DEF-DEF-7241
                           }
                           //Yassine.B 15/04/2015 - END - patch code move into the success=true case
     
                        }
                        else{
                            wo.SynchronizationLog__c ='Work Order NOT RELEASED due to : '+request.BOerrorMessage+ '';
                        }
                        if(wo.FirstSynchronizationDate__c==null){
                            wo.FirstSynchronizationDate__c = system.now();
                        }
                        wo.LastSynchronizationDate__c = system.now();
                        //wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                        
     
                    }
                    else if(request.Event == 'WO.SYNC'){
                        if(request.success){
                            //if(request.BackOfficeBillToValid != null){
                            //    wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                            //}
                            wo.SynchronizationLog__c = 'Work Order SYNCED with Back Office';

                        }
                        else{
                            wo.SynchronizationLog__c ='Work Order NOT SYNCED with Back Office due to : '+request.BOerrorMessage+ '';
                        }
                        wo.LastSynchronizationDate__c = system.now();

                    }
                    //Yassine Bouargoub 27/05/2015 - DEF-6925 - START
                    if(request.BackOfficeBillToValid != null){
                        wo.Back_Office_Bill__c = request.BackOfficeBillToValid;
                    }
                    //Yassine Bouargoub 27/05/2015 - DEF-6925 - END
                    try{
                        System.debug('\n CLog : '+wo);
                        System.debug('\n CLog : '+wog);
                        update wo;
                        update wog;
                        result.success =true;
                        result.workOrderbFOId = wo.Id; 
                        result.workOrderBOReference = wo.BackOfficeReference__c;
                        System.debug('\n CLog : '+wo);
                   }
                    catch(exception ex){
                        result.success = false;
                        result.errorMessage = ex.getMessage();
                        result.workOrderBOReference = wo.BackOfficeReference__c;
                    }
            
            }
            else{
                result.success = false;
                result.errorMessage = 'Please send Mandatory Fields '+mf.fields;
            }
        }
        else{
            result.success = false;
            result.errorMessage = 'Please send the WorkOrderSyncDetails parameter';
        
        }
            
           
        System.debug('\n CLog : '+result);
        return result;
        
    }
    
    
    public class MandatoryFields{
        public Boolean isMFPass{get;set;}
        public String fields{get;set;}
        
    }
    
    public static MandatoryFields CreateMandataryCheck(WorkOrder request){
        MandatoryFields mf = new MandatoryFields();
        String mandatoryFields ='';                
        Boolean mandatory = true;  
        /*      
        
        if(request.customerRequestedDate != null ){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' customerRequestedDate';
        }
        if(request.serviceBusinessUnit != null && request.serviceBusinessUnit != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' serviceBusinessUnit';
        }
        if(request.priority != null && request.priority != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' priority';
        }
        if(request.workOrderReason != null && request.workOrderReason != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' workOrderReason';
        }
        
        if(request.workOrderStatus != null && request.workOrderStatus != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' workOrderStatus';
        }
        if(request.workOrderCategory != null && request.workOrderCategory != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' workOrderCategory';
        }
        
        if(request.isBillable != null && request.isBillable != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' isBillable';
        }
        if(request.billingType != null && request.billingType != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' billingType';
        }
        if(request.workOrderType != null && request.workOrderType != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' workOrderType';
        }
        
        */
        if(request.WOBackOfficeReference != null ){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' WOBackOfficeReference';
        }
        if(request.countryOfBackOffice != null && request.countryOfBackOffice != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' countryOfBackOffice';
        }
        if(request.backOfficeSystem != null && request.backOfficeSystem != ''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + ' backOfficeSystem';
        }
        
        
         mf.isMFPass = mandatory;
        mf.fields = mandatoryFields;
        return mf;
    }
    public static MandatoryFields WorkOrderSyncDetailsMandataryCheck(WorkOrderSyncDetails request){
        MandatoryFields mf = new MandatoryFields();
        
        String mandatoryFields ='';                
        Boolean mandatory = true;   
        
        if(request.workOrderbFOId != null ){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + 'workOrderbFOId';
        }
        if(request.success )
        {
            if(request.workOrderBOReference != null && request.workOrderBOReference !=''){
            }
            else{
                mandatory = false;
                mandatoryFields += mandatoryFields + 'workOrderBOReference';
            }
            /*
            if(request.workOrderGroupBOReference != null && request.workOrderGroupBOReference !=''){
            }
            else{
                mandatory = false;
                mandatoryFields += mandatoryFields + 'workOrderGroupBOReference';
            }*/
        }
                
        if(request.Event != null && request.Event !=''){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + 'Event';
        }
        if(request.success != null){
        }
        else{
            mandatory = false;
            mandatoryFields += mandatoryFields + 'success';
        }
        mf.isMFPass = mandatory;
        mf.fields = mandatoryFields;
        
        return mf;
    
    }
    

    public Static List<SVMXC__Service_Order__c> getWorkOrderObjects(Set<Id> woids){
    
        List<SVMXC__Service_Order__c>  wos = new List<SVMXC__Service_Order__c>();
        //wo = [select ID,Name,SVMXC__Company__c,SVMXC__Contact__c,CustomerRequestedDate__c,CustomerRequestedTime__c,BusinessUnit__c,SVMXC__Priority__c,SVMXC__Scheduled_Date_Time__c,WorkOrderGroup__c,WorkOrderGroup__r.BackOfficeReference__c,WorkOrderName__c,Comments_to_Planner__c,CountryOfBackOffice__c,BackOfficeSystem__c,SVMXC__Order_Status__c,SubStatus__c,Work_Order_Category__c,SVMXC__Order_Type__c,WorkOrderSubType__c,IsBillable__c,SVMXC__Billing_Type__c,SVMXC__Group_Member__c,OwnerID,Parent_Work_Order__c,SoldToAccount__c,SVMXC__Component__c,SVMXC__Product__c,Project__c,SVMXC__Service_Contract__c,ServiceLine__c,BackOfficeReference__c,SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.StateProvince__r.Name,SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,SVMXC__Contact__r.MidInit__c,SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,SVMXC__SLA_Terms__c, SVMXC__SLA_Terms__r.Name, SVMXC__Group_Member__r.SVMXC__Role__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName,SVMXC__Preferred_Technician__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email,SVMXC__Group_Member__r.SESAID__c,SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName,SVMXC__Group_Member__r.ThirdPartyContact__r.LastName,SVMXC__Group_Member__r.ThirdPartyContact__r.Email,SVMXC__Component__r.GoldenAssetId__c,SVMXC__Component__r.Name,SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c,SVMXC__Component__r.SVMXC__Serial_Lot_Number__c,SVMXC__Component__r.SchneiderCommercialReference__c,SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Service_Contract__r.BackOfficeReference__c,ServiceLine__r.BackOfficeReference__c,Sales_Order_Number__c,salesOrderLineNumber__c,Customer_Reference_Number__c,PONumber__c,SVMXC__Primary_Territory__r.Name,CustomerReferenceNumber__c from SVMXC__Service_Order__c where id =:woid];
        /** Yassine.B : added estimated and quotation, CurrencyIsoCode fields on 19/02/2015 **/
        wos = [select ID,Name,SVMXC__Company__c,SVMXC__Contact__c,CustomerRequestedDate__c,CustomerRequestedTime__c,BusinessUnit__c, Service_Business_Unit__c,
               SVMXC__Priority__c,SVMXC__Scheduled_Date_Time__c,WorkOrderGroup__c,WorkOrderGroup__r.BackOfficeReference__c,WorkOrderName__c,
               Comments_to_Planner__c,CountryOfBackOffice__c,BackOfficeSystem__c,SVMXC__Order_Status__c,SubStatus__c,Work_Order_Category__c,
               SVMXC__Order_Type__c,WorkOrderSubType__c,IsBillable__c,SVMXC__Billing_Type__c,SVMXC__Group_Member__c,OwnerID,Parent_Work_Order__c,
               Parent_Work_Order__r.BackOfficeReference__c,Parent_Work_Order__r.TECH_WOBackOfficeRecordID__c,SoldToAccount__c,SVMXC__Component__c,SVMXC__Product__c,Project__c,SVMXC__Service_Contract__c,ServiceLine__c,SVMXC__Closed_On__c,
               BackOfficeReference__c,SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,
               SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,
               SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,
               SVMXC__Company__r.StateProvince__r.Name, SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Company__r.RecordType.Name, SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,
               SVMXC__Contact__r.MidInit__c,SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,
               SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,SVMXC__SLA_Terms__c, SVMXC__SLA_Terms__r.Name,
               SVMXC__Group_Member__r.SVMXC__Role__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName,SVMXC__Preferred_Technician__c,
               SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email,SVMXC__Group_Member__r.SESAID__c,
               SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName,SVMXC__Group_Member__r.ThirdPartyContact__r.LastName,
               SVMXC__Group_Member__r.ThirdPartyContact__r.Email,SVMXC__Group_Member__r.Business_Unit__c,SVMXC__Group_Member__r.Level__c, SVMXC__Component__r.GoldenAssetId__c,SVMXC__Component__r.Name,
               SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c,SVMXC__Component__r.SVMXC__Serial_Lot_Number__c,SVMXC__Component__r.SchneiderCommercialReference__c,
               SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Component__r.SVMXC__Company__r.Name,SVMXC__Component__r.SVMXC__Company__r.AccountLocalName__c,
               SVMXC__Component__r.SVMXC__Company__r.Street__c,SVMXC__Component__r.SVMXC__Company__r.StreetLocalLang__c,SVMXC__Component__r.SVMXC__Company__r.AdditionalAddress__c,
               SVMXC__Component__r.SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Component__r.SVMXC__Company__r.ZipCode__c,SVMXC__Component__r.SVMXC__Company__r.City__c,
               SVMXC__Component__r.SVMXC__Company__r.LocalCity__c, SVMXC__Component__r.SVMXC__Company__r.RecordType.Name,SVMXC__Component__r.UniqueSEIdentification__c,
               SVMXC__Component__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Service_Contract__r.BackOfficeReference__c,ServiceLine__r.BackOfficeReference__c,
               Sales_Order_Number__c,salesOrderLineNumber__c,Customer_Reference_Number__c,PONumber__c,SVMXC__Primary_Territory__r.Name,CustomerReferenceNumber__c,SVMXC__Case__c,SVMXC__Case__r.CaseNumber,SVMXC__Component__r.RecordType.Name,
               EstimatedExpenseCost__c, Estimated_Labor_Cost__c, EstimatedMaterialCost__c, QuotationNumber__c,CurrencyIsoCode,SVMXC__Problem_Description__c, SVMXC__Primary_Territory__r.Plant__r.Name,TECH_WOBackOfficeRecordID__c,TECH_FOLastUpdate_Timestamp__c,LastModifiedDate ,PlannedServiceDuration__c from SVMXC__Service_Order__c where id in : woids];
               
        return wos;
    }
    public Static List<ServiceProductsWD>  getServiceProducts( Id woid ,Id rtid){
        List<ServiceProductsWD> splist = new List<ServiceProductsWD>();
        Set<id> ipidSet = new Set<id>();
        Set<id> fsridSet = new Set<id>();
        for(SVMXC__Service_Order_Line__c  wd:[select id, SVMXC__Serial_Number__c,SVMXC__Group_Member__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and RecordTypeId =:rtid ]){            
            if(wd.SVMXC__Serial_Number__c != null ){            
                ipidSet.add(wd.SVMXC__Serial_Number__c);
            }
            if(wd.SVMXC__Group_Member__c != null ){         
                fsridSet.add(wd.SVMXC__Group_Member__c);
            }            
        }
        prepareIPMap(ipidSet);
        prepareTechnicians(fsridSet);
        
        for(SVMXC__Service_Order_Line__c  wd:[select id,name,SVMXC__Service_Order__c, SVMXC__Serial_Number__c,SVMXC__Group_Member__c ,SVMXC__Work_Description__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and RecordTypeId =:rtid ]){  
            ServiceProductsWD sp = new ServiceProductsWD();
            sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
            sp.workDetailbFOID = wd.id;
            sp.workDetailbFONumber = wd.name;
            if(wd.SVMXC__Group_Member__c != null)
            {
                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                {
                    sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                }
            }
            if(wd.SVMXC__Serial_Number__c != null)
            {
                if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                {
                    sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                }
            
            }
            sp.workDescription = wd.SVMXC__Work_Description__c;
            
            splist.add(sp);
        
        }
        
        
            
        return splist;
        
    }
    webservice Static  WorkOrdersTechCloseResult bulkGetTechCloseWorkOrders( String backOfficeSystem ){
        
            WorkOrdersTechCloseResult response = new WorkOrdersTechCloseResult();
            Map<id,WorkOrder> WOMap=new Map<id,WorkOrder>();
            List<SVMXC__Service_Order__c>  wos = new List<SVMXC__Service_Order__c>();
        
            for(RecordType rtobj: [SELECT DeveloperName,Id,Name,SobjectType FROM RecordType where SobjectType ='SVMXC__Service_Order_Line__c']){
                    woDetailsMap.put(rtobj.DeveloperName , rtobj);
            }
            RecordType PlannedRt =woDetailsMap.get('Estimate');    
            RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
            RecordType PartsRt =woDetailsMap.get('Parts');
            RecordType ActualsRt =woDetailsMap.get('UsageConsumption');
            ID Planned = PlannedRt.id;
            ID serviceproduct = ServiceProductRt.id;
            ID Parts = PartsRt.id;
            ID Actuals = ActualsRt.id;
            Map<id,SVMXC__Service_Order__c> workorderMap = new Map<id,SVMXC__Service_Order__c>();
            Map<id,List<SVMXC__Service_Order_Line__c>> woidlistServiceListMap = new Map<id,List<SVMXC__Service_Order_Line__c>>();
            Map<id,List<SVMXC__Service_Order_Line__c>> woidlistCurrencyServiceListMap = new Map<id,List<SVMXC__Service_Order_Line__c>>();
            Set<id> ipidSet = new Set<id>();
            set<id> fsridSet = new Set<id>();
            Map<id,List<SVMXC__RMA_Shipment_Order__c>> woidporderListmap = new Map<id,List<SVMXC__RMA_Shipment_Order__c>>();
             Map<id,List<SVMXC__RMA_Shipment_Line__c>> porderLineMap = new Map<id,List<SVMXC__RMA_Shipment_Line__c>>();
                
               wos = [select ID,Name,SVMXC__Company__c,SVMXC__Contact__c,CustomerRequestedDate__c,CustomerRequestedTime__c,BusinessUnit__c, Service_Business_Unit__c,
               SVMXC__Priority__c,SVMXC__Scheduled_Date_Time__c,WorkOrderGroup__c,WorkOrderGroup__r.BackOfficeReference__c,WorkOrderName__c,
               Comments_to_Planner__c,CountryOfBackOffice__c,BackOfficeSystem__c,SVMXC__Order_Status__c,SubStatus__c,Work_Order_Category__c,
               SVMXC__Order_Type__c,WorkOrderSubType__c,IsBillable__c,SVMXC__Billing_Type__c,SVMXC__Group_Member__c,OwnerID,Parent_Work_Order__c,
               Parent_Work_Order__r.BackOfficeReference__c,Parent_Work_Order__r.TECH_WOBackOfficeRecordID__c,SoldToAccount__c,SVMXC__Component__c,SVMXC__Product__c,Project__c,SVMXC__Service_Contract__c,ServiceLine__c,SVMXC__Closed_On__c,
               BackOfficeReference__c,SVMXC__Company__r.SEAccountID__c,SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,
               SVMXC__Company__r.StreetLocalLang__c,SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,
               SVMXC__Company__r.ZipCode__c,SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,
               SVMXC__Company__r.StateProvince__r.Name, SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Company__r.RecordType.Name, SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,
               SVMXC__Contact__r.MidInit__c,SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,
               SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,SVMXC__SLA_Terms__c, SVMXC__SLA_Terms__r.Name,
               SVMXC__Group_Member__r.SVMXC__Role__c,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName,SVMXC__Preferred_Technician__c,
               SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName,SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email,SVMXC__Group_Member__r.SESAID__c,
               SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName,SVMXC__Group_Member__r.ThirdPartyContact__r.LastName,
               SVMXC__Group_Member__r.ThirdPartyContact__r.Email,SVMXC__Group_Member__r.Business_Unit__c,SVMXC__Group_Member__r.Level__c, SVMXC__Component__r.GoldenAssetId__c,SVMXC__Component__r.Name,
               SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c,SVMXC__Component__r.SVMXC__Serial_Lot_Number__c,SVMXC__Component__r.SchneiderCommercialReference__c,
               SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Component__r.SVMXC__Company__r.Name,SVMXC__Component__r.SVMXC__Company__r.AccountLocalName__c,
               SVMXC__Component__r.SVMXC__Company__r.Street__c,SVMXC__Component__r.SVMXC__Company__r.StreetLocalLang__c,SVMXC__Component__r.SVMXC__Company__r.AdditionalAddress__c,
               SVMXC__Component__r.SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Component__r.SVMXC__Company__r.ZipCode__c,SVMXC__Component__r.SVMXC__Company__r.City__c,
               SVMXC__Component__r.SVMXC__Company__r.LocalCity__c, SVMXC__Component__r.SVMXC__Company__r.RecordType.Name,SVMXC__Component__r.UniqueSEIdentification__c,
               SVMXC__Component__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Service_Contract__r.BackOfficeReference__c,ServiceLine__r.BackOfficeReference__c,
               Sales_Order_Number__c,salesOrderLineNumber__c,Customer_Reference_Number__c,PONumber__c,SVMXC__Primary_Territory__r.Name,CustomerReferenceNumber__c,SVMXC__Case__c,SVMXC__Case__r.CaseNumber,SVMXC__Component__r.RecordType.Name,PlannedServiceDuration__c,
               EstimatedExpenseCost__c, Estimated_Labor_Cost__c, EstimatedMaterialCost__c, QuotationNumber__c,CurrencyIsoCode,SVMXC__Problem_Description__c, SVMXC__Primary_Territory__r.Plant__r.Name,TECH_WOBackOfficeRecordID__c,TECH_FOLastUpdate_Timestamp__c,LastModifiedDate  from SVMXC__Service_Order__c where BackOfficeSystem__c =:backOfficeSystem and  TECH_TechnicaClosure__c='To Be Processed' and SVMXC__Order_Status__c ='Service Validated' limit 150];
            
            List<SVMXC__RMA_Shipment_Line__c> partsOrderLineList = new List<SVMXC__RMA_Shipment_Line__c>();
            
            if(wos != null && wos.size()>0){                
                workorderMap.putAll(wos); 
                for(SVMXC__Service_Order_Line__c sl:[select Level_Required__c ,id, Name,  RecordTypeId ,RecordType.Name,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c,SVMXC__Expense_Type__c,SVMXC__Date_Received__c,IsBillable__c,SVMXC__Work_Description__c ,
                                                    SVMXC__Start_Date_and_Time__c ,SVMXC__End_Date_and_Time__c ,TotalTime__c, SVMXC__Work_Detail__c, ExpenseQuantity__c, LinePricePerUnit__c, 
                                                    CurrencyIsoCode,PartsOrderLine__c,PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c,PartsOrderLine__r.SKU__c ,PartsOrderLine__r.BOMaterialReference__c,
                                                    PartsOrderLine__r.SVMXC__Product__r.Name,PartsOrderLine__r.SVMXC__Expected_Quantity2__c,ShippedQuantity_del__c,InstalledQuantity__c,FailedQuantity__c,
                                                    ReturnedQuantity__c,Part_Order_Line_Type__c,PartsOrderLine__r.Generic_reference__c,PartsOrderLine__r.Free_text_reference__c,Left_Onsite_Qty__c,Not_Returned_Reason__c from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:workorderMap.keyset() and ( RecordTypeId =:Planned OR RecordTypeId =:serviceproduct OR RecordTypeId =:Parts OR RecordTypeId =:Actuals)]) 
                {
                    
                    if(woidlistServiceListMap.containskey(sl.SVMXC__Service_Order__c)){                         
                        woidlistServiceListMap.get(sl.SVMXC__Service_Order__c).add(sl);
                    }
                    else{
                        woidlistServiceListMap.put(sl.SVMXC__Service_Order__c, new List<SVMXC__Service_Order_Line__c>{sl});
                    }
                    if(sl.SVMXC__Serial_Number__c != null ){            
                         ipidSet.add(sl.SVMXC__Serial_Number__c);
                    }
                    if(sl.SVMXC__Group_Member__c != null ){         
                        fsridSet.add(sl.SVMXC__Group_Member__c);
                    } 
                }
                for(SVMXC__Service_Order_Line__c sl:[select id,SVMXC__Service_Order__c, convertCurrency(LinePricePerUnit__c) from SVMXC__Service_Order_Line__c  where SVMXC__Service_Order__c =:workorderMap.keyset() and ( RecordTypeId =:Planned OR RecordTypeId =:serviceproduct OR RecordTypeId =:Parts OR RecordTypeId =:Actuals)]) 
                {
                    
                    if(woidlistCurrencyServiceListMap.containskey(sl.SVMXC__Service_Order__c)){                         
                        woidlistCurrencyServiceListMap.get(sl.SVMXC__Service_Order__c).add(sl);
                    }
                    else{
                        woidlistCurrencyServiceListMap.put(sl.SVMXC__Service_Order__c, new List<SVMXC__Service_Order_Line__c>{sl});
                    }
                    
                } 
                Set<id> poidset = new set<id>();
                 List<SVMXC__RMA_Shipment_Order__c> partsOrderList = [select id,SVMXC__Service_Order__c, Name,SVMXC__Order_Status__c,Service_level__c,SVMXC__Shipping_Receiving_Notes__c,Freight_terms__c,Parts_SLA_terms__c,On_site_SLA_terms__c,SVMXC__Contact__c,SVMXC__Contact__r.SEContactID__c,SVMXC__Contact__r.FirstName,SVMXC__Contact__r.LocalFirstName__c,SVMXC__Contact__r.MidInit__c,
        SVMXC__Contact__r.LocalMidInit__c,SVMXC__Contact__r.LastName,SVMXC__Contact__r.LocalLastName__c,SVMXC__Contact__r.Email,SVMXC__Contact__r.MobilePhone,SVMXC__Contact__r.WorkPhone__c,
        Ship_to__r.SEAccountID__c,Ship_to__r.Name,Ship_to__r.AccountLocalName__c,Ship_to__r.Street__c,Ship_to__r.StreetLocalLang__c,Ship_to__r.AdditionalAddress__c,Ship_to__r.LocalAdditionalAddress__c,Ship_to__r.ZipCode__c,Ship_to__r.City__c,Ship_to__r.LocalCity__c,Ship_to__r.Country__r.CountryCode__c,Ship_to__r.StateProvince__c,Ship_to__c,
        Ship_to__r.RecordType.Name,Ship_to__r.StateProvince__r.StateProvinceCode__c from SVMXC__RMA_Shipment_Order__c where SVMXC__Service_Order__c  =:workorderMap.keyset() AND SVMXC__Order_Status__c='Open'];
                if(partsOrderList != null && partsOrderList.size()>0){
                    for(SVMXC__RMA_Shipment_Order__c poobj:partsOrderList){
                        poidset.add(poobj.id);
                        if(woidporderListmap.containskey(poobj.SVMXC__Service_Order__c)){
                            woidporderListmap.get(poobj.SVMXC__Service_Order__c).add(poobj);
                        }
                        else{
                            woidporderListmap.put(poobj.SVMXC__Service_Order__c, new List<SVMXC__RMA_Shipment_Order__c>{poobj});
                            
                        }
                    }
                    if(poidset != null && poidset.size()>0){
                        
                        partsOrderLineList = [select  id,Name,SVMXC__RMA_Shipment_Order__c,SVMXC__Line_Type__c,Plant_Name__r.name,SVMXC__Expected_Quantity2__c,UnitofMeasure__c,RequestedDate__c,RecordType.Name,
                             Calculated_plant__r.name,Spare_part_category__c,SVMXC__Expected_Ship_Date__c,Lead_Date__c,Free_text_reference__c,Generic_reference__c,Shipment_mode__c,SVMXC__Product__c,SKU__c,
                            BOMaterialReference__c,createdby.FederationIdentifier,createdby.FirstName,createdby.LastName,Available_stock__c from SVMXC__RMA_Shipment_Line__c where SVMXC__RMA_Shipment_Order__c in : poidset];
                        
                    }
                    for(SVMXC__RMA_Shipment_Line__c line: partsOrderLineList){
                        if(porderLineMap.containskey(line.SVMXC__RMA_Shipment_Order__c)){
                            
                            porderLineMap.get(line.SVMXC__RMA_Shipment_Order__c).add(line);
                        }
                        else{
                            porderLineMap.put(line.SVMXC__RMA_Shipment_Order__c, new List<SVMXC__RMA_Shipment_Line__c>{line});
                        }
                    }
                }
                            
            }
            prepareIPMap(ipidSet);
            prepareTechnicians(fsridSet);   
            
            for(SVMXC__Service_Order__c wo:wos){
                
                WorkOrder wunit=populateAndGetWorkOrderFields(wo);
                WorkDetail wd = new WorkDetail();
                if(woidlistServiceListMap.containskey(wo.id))
                {
                     wd= getWorkDetails(woidlistServiceListMap.get(wo.id),woidlistCurrencyServiceListMap.get(wo.id));
                }
                wunit.WorkDetail = wd;              
                PartsOrders porder = new PartsOrders();
                WOMap.put(wo.id,wunit);
                
            }
        if(WOMap != null && WOMap.size()>0)
        {
            
            response.workorders = new List<WorkOrder>();
            response.workorders =  WOMap.values();
            response.success = true;
            
            
        }
        else{
            
            
            response.success = false;
            response.errorMessage = 'No records found.';
            
        }
        return response;
    }
    webservice Static   List<WorkOrderSyncDetailsResult>  bulkUpdateTechCloseWorkOrders( List<WorkOrderSyncDetails> WorkOrderSyncDetails ){
        List<WorkOrderSyncDetailsResult> results = new List<WorkOrderSyncDetailsResult>();
        List<WorkOrderSyncDetails> toProcess = new List<WorkOrderSyncDetails>();
        
        Set<id> workorderidset = new Set<id>();
    
        
        for(WorkOrderSyncDetails wosd: WorkOrderSyncDetails){
            if(wosd.success != null && wosd.workOrderbFOId != null ){
                toProcess.add(wosd);
                workorderidset.add(wosd.workOrderbFOId );
            }
            else{
                WorkOrderSyncDetailsResult wrerror = new WorkOrderSyncDetailsResult();
                wrerror.workOrderbFOId = wosd.workOrderbFOId;
                wrerror.workOrderBOReference = wosd.workOrderBOReference;
                wrerror.success = false;
                wrerror.errorMessage = ' Success and workOrderbFOId are mandatory ' ;
                results.add(wrerror);
            }
        
        }
        if(workorderidset!= null && workorderidset.size()>0)
        {
            Map<id, SVMXC__Service_Order__c> woMap = new Map<id,SVMXC__Service_Order__c>();
            List<SVMXC__Service_Order__c> sorder = new List<SVMXC__Service_Order__c>();
            List<SVMXC__Service_Order__c> worders =[select id, name,SynchronizationLog__c,BackOfficeReference__c,SVMXC__Order_Status__c,TECH_TechnicaClosure__c,LastSynchronizationDate__c from SVMXC__Service_Order__c where id in :workorderidset ];
            if(worders != null && worders.size()>0)
            woMap.putAll(worders);
            for(WorkOrderSyncDetails wosd: toProcess){
                if(woMap.containskey(wosd.workOrderbFOId)){
                    SVMXC__Service_Order__c wo = woMap.get(wosd.workOrderbFOId);
                    
                    if(wosd.success){
                        wo.SynchronizationLog__c = 'Work Order TECHNICALLY CLOSED in Back Office';
                        wo.TECH_TechnicaClosure__c ='Processed';
                        wo.LastSynchronizationDate__c = system.now();
                    }
                    else{
                        wo.SynchronizationLog__c = 'Work Order NOT TECHNICALLY CLOSED in Back Office due to  ['+wosd.BOerrorMessage+']';
                        wo.TECH_TechnicaClosure__c ='Failed';
                        wo.LastSynchronizationDate__c = system.now();
                       
                    
                    }
                    sorder.add(wo);
                 }
                 else{
                    WorkOrderSyncDetailsResult wr = new WorkOrderSyncDetailsResult();
                    wr.workOrderbFOId = wosd.workOrderbFOId;
                    wr.errorMessage = ' work order not exist ';
                    wr.success = false; 
                    results.add(wr);
                 }
            }
            if( sorder != null && sorder.size()>0 ){
                Database.SaveResult[] worder_results  = CreateOrUpdateServices((List<Sobject>)worders,'UPDATE');
                for(Integer k=0;k<worder_results.size();k++ )
                {
                    Database.SaveResult sr = worder_results[k];
                    WorkOrderSyncDetailsResult wr = new WorkOrderSyncDetailsResult();
                    wr.workOrderbFOId = worders[k].id;
                    wr.workOrderBOReference =worders[k].BackOfficeReference__c;
                    
                    if(!sr.isSuccess())
                    {
                        wr.success = false;
                        String Message ='';
                        for(Database.Error err : sr.getErrors()) {
                            Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                        }                            
                        wr.errorMessage = Message;
                    }
                    else{
                        wr.success = true;              
                    }
                    
                    results.add(wr);
                }
                
            }
            
            
            
        }
        
        return results;
        
        
    }
    webservice Static   List<WorkOrderSyncDetailsResult>  bulkCloseWorkOrders( List<ID> workOrderID ){
    
        List<WorkOrderSyncDetailsResult> results = new List<WorkOrderSyncDetailsResult>();
        
        List<SVMXC__Service_Order__c> worders =[select id, name,SynchronizationLog__c,BackOfficeReference__c,SVMXC__Order_Status__c,LastSynchronizationDate__c from SVMXC__Service_Order__c where id in :workOrderID ];
        
        Map<id, SVMXC__Service_Order__c> woMap = new Map<id,SVMXC__Service_Order__c>();
        
        if( worders != null && worders.size()>0 ){
            woMap.putAll(worders);
            for(SVMXC__Service_Order__c wo:worders){
                wo.SynchronizationLog__c = 'Work Order CLOSED in Back Office';
                wo.SVMXC__Order_Status__c ='Closed';
                wo.LastSynchronizationDate__c = system.now();
            }
            Database.SaveResult[] worder_results  = CreateOrUpdateServices((List<Sobject>)worders,'UPDATE');
            for(Integer k=0;k<worder_results.size();k++ )
            {
                Database.SaveResult sr = worder_results[k];
                WorkOrderSyncDetailsResult wr = new WorkOrderSyncDetailsResult();
                wr.workOrderbFOId = worders[k].id;
                wr.workOrderBOReference =worders[k].BackOfficeReference__c;
                
                if(!sr.isSuccess())
                {
                    wr.success = false;
                }
                else{
                    wr.success = true;              
                }
                
                results.add(wr);
            }
        }
        return results;
        
    
    }
     public Static   WorkDetail  getWorkDetails( List<SVMXC__Service_Order_Line__c> serviceLines,List<SVMXC__Service_Order_Line__c> ccurrencyserviceLines ){
        WorkDetail wDetail=new WorkDetail();
        RecordType PlannedRt =woDetailsMap.get('Estimate');        
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
        RecordType PartsRt =woDetailsMap.get('Parts');
        RecordType ActualsRt =woDetailsMap.get('UsageConsumption');
        ID Planned = PlannedRt.id;       
        ID serviceproduct = ServiceProductRt.id;
        ID Parts = PartsRt.id;
        ID Actuals = ActualsRt.id;
        
        
        List<TimeWD> TimeWDs = new List<TimeWD>();
        List<ExpenseWD> ExpenseWDs  = new List<ExpenseWD>();  
        List<PartsWD> PartsWDs  = new List<PartsWD>();  
        List<ServiceProductsWD> ServiceProductsWDs = new List<ServiceProductsWD>();
        Map<id,SVMXC__Service_Order_Line__c> currencyMap = new Map<id,SVMXC__Service_Order_Line__c>();  
        currencyMap.putAll(ccurrencyserviceLines);   
            
            for(SVMXC__Service_Order_Line__c  wd:serviceLines)
             {    
                    if(wd.RecordTypeId == Planned || wd.RecordTypeId == Actuals){
                    
                        if(wd.SVMXC__Line_Type__c == 'Time')
                        {
                            TimeWD t = new TimeWD();
                            t.workOrderbFOID = wd.SVMXC__Service_Order__c;
                            t.workDetailbFOID = wd.id;
                            //t.lineType = wd.SVMXC__Line_Type__c;
                            if(wd.RecordTypeId == Planned)
                            t.lineType = System.Label.CLAPR15SRV84;
                            if(wd.RecordTypeId == Actuals)
                             t.lineType = 'Actuals';
                            t.activityType = wd.SVMXC__Activity_Type__c;
                            t.hourType = wd.HourType__c;
                            if(wd.SVMXC__Group_Member__c != null)
                            {
                                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                {
                                    t.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);   
                                }
                            }
                            
                            t.isBillable = wd.IsBillable__c;
                            //t.startDateTime = String.valueOf(wd.SVMXC__Start_Date_and_Time__c);
                            if(wd.SVMXC__Start_Date_and_Time__c != null){
                                t.startDateTime = (wd.SVMXC__Start_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                            }
                            //t.endDateTime = String.valueOf(wd.SVMXC__End_Date_and_Time__c);
                            if(wd.SVMXC__End_Date_and_Time__c != null){
                                t.endDateTime =  (wd.SVMXC__End_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                            }
                            t.totalTime = wd.TotalTime__c;
                            t.totalTime = wd.TotalTime__c;
                            t.workDescription = wd.SVMXC__Work_Description__c;
                            t.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                            t.workDetailbFONumber = wd.Name;
                            t.levelRequired = wd.Level_Required__c;// May Release 2015
                            TimeWDs.add(t);
                        
                        
                        }
                        else if(wd.SVMXC__Line_Type__c == 'Expenses'){
                        
                            ExpenseWD e = new ExpenseWD();
                            e.workOrderbFOID = wd.SVMXC__Service_Order__c;
                            e.workDetailbFOID = wd.id;
                            if(wd.RecordTypeId == Planned)
                             e.lineType = System.Label.CLAPR15SRV84;
                            if(wd.RecordTypeId == Actuals)
                             e.lineType = 'Actuals';
                            e.expenseType = wd.SVMXC__Expense_Type__c;
                            e.expenseDate = String.valueOf(wd.SVMXC__Date_Received__c);
                             if(wd.SVMXC__Group_Member__c != null)
                            {
                                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                {
                                    e.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                }
                            }
                            e.isBillable = wd.IsBillable__c;
                            //e.billingType = wd.
                            e.expenseQuantity = wd.ExpenseQuantity__c;
                            e.linePricePerUnit = wd.LinePricePerUnit__c;
                            e.currencyIsoCode = wd.CurrencyIsoCode;
                            e.workDescription = wd.SVMXC__Work_Description__c;
                            e.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                            if(currencyMap.containskey(wd.id))
                            e.linePricePerUnitCorporateCurrency = currencyMap.get(wd.id).LinePricePerUnit__c;
                            e.workDetailbFONumber = wd.Name;
                            e.levelRequired = wd.Level_Required__c;// May Release 2015
                            ExpenseWDs.add(e);
                        
                        
                        }
                    
                    }
                    if(wd.RecordTypeId == Parts &&  wd.PartsOrderLine__c != null){
                    
                        PartsWD p = new PartsWD();
                        p.workOrderbFOID = wd.SVMXC__Service_Order__c;
                        p.workDetailbFOID = wd.id;
                        p.workDetailbFONumber = wd.Name;
                        p.partOrderLinebFOID  = wd.PartsOrderLine__c;
                        p.TECH_BOPartsOrderLineRecordId = wd.PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c;
                        p.FOSKUReference = wd.PartsOrderLine__r.SKU__c;
                        p.BOMaterialReference =  wd.PartsOrderLine__r.BOMaterialReference__c;
                        p.sparePartbFOID = wd.PartsOrderLine__r.SVMXC__Product__c; // Yassine.B 02/04/2015 fix (name -> Id)
                        if(wd.SVMXC__Group_Member__c != null)
                        {
                            if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                            {
                                p.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                            }
                        }
                        p.isBillable = wd.IsBillable__c;
                        //p.expectedQuantity
                        p.shippedQuantity = wd.ShippedQuantity_del__c;
                        p.installedQuantity = wd.InstalledQuantity__c;
                        p.returnedQuantity = wd.ReturnedQuantity__c;
                        p.failedQuantity = wd.FailedQuantity__c;
                        p.workDescription = wd.SVMXC__Work_Description__c;
                        p.expectedQuantity = wd.PartsOrderLine__r.SVMXC__Expected_Quantity2__c;
                        p.levelRequired = wd.Level_Required__c;// May Release 2015
                        p.partOrderLineType = wd.Part_Order_Line_Type__c;
                        p.genericReference = wd.PartsOrderLine__r.Generic_reference__c;
                        p.freeTextReference =  wd.PartsOrderLine__r.Free_text_reference__c;
                        p.leftOnsiteQuantity = wd.Left_Onsite_Qty__c;
                        p.notReturnReason = wd.Not_Returned_Reason__c;
                        PartsWDs.add(p);
                    
                    }
                   
                    else if(wd.RecordTypeId == serviceproduct){
                         ServiceProductsWD sp = new ServiceProductsWD();
                         sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
                         sp.workDetailbFOID = wd.id;
                         sp.workDetailbFONumber = wd.Name;
                        if(wd.SVMXC__Group_Member__c != null)
                        {
                            if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                            {
                                sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                            }
                        }
                        if(wd.SVMXC__Serial_Number__c != null)
                        {
                            if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                            {
                                sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                            }
                        
                        }
                        sp.workDescription = wd.SVMXC__Work_Description__c;
                        sp.levelRequired = wd.Level_Required__c;// May Release 2015
                        ServiceProductsWDs.add(sp);
                    
                    }
             
             }
            
            
            wDetail.TimeWDs = TimeWDs;
            wDetail.ExpenseWDs = ExpenseWDs;
            wDetail.ServiceProductsWDs = ServiceProductsWDs;
            wDetail.PartsWDs = PartsWDs;
            return wDetail;
     }
    public Static   WorkDetail  getWorkDetails( Id woid ,String event){
        WorkDetail wDetail=new WorkDetail();
        Set<id> ipidSet = new Set<id>();
        Set<id> fsridSet = new Set<id>();
        
        RecordType PlannedRt =woDetailsMap.get('Estimate');        
        RecordType ServiceProductRt =woDetailsMap.get('Products_Serviced');
        RecordType PartsRt =woDetailsMap.get('Parts');
        ID Planned = PlannedRt.id;       
        ID serviceproduct = ServiceProductRt.id;
        ID Parts = PartsRt.id;
        
        List<TimeWD> TimeWDs = new List<TimeWD>();
        List<ExpenseWD> ExpenseWDs  = new List<ExpenseWD>();  
        List<PartsWD> PartsWDs  = new List<PartsWD>();  
        List<ServiceProductsWD> ServiceProductsWDs = new List<ServiceProductsWD>();
        Map<id,SVMXC__Service_Order_Line__c> currencyMap = new Map<id,SVMXC__Service_Order_Line__c>();
            
        
        if(event == 'WO.RELEASE'){
        
                List<SVMXC__Service_Order_Line__c> solines = new List<SVMXC__Service_Order_Line__c>();
                solines = [select id, Name, RecordTypeId ,RecordType.Name,SVMXC__Service_Order__c,SVMXC__Line_Type__c ,SVMXC__Activity_Type__c,HourType__c,SVMXC__Serial_Number__c,SVMXC__Group_Member__c,SVMXC__Expense_Type__c,SVMXC__Date_Received__c,IsBillable__c,SVMXC__Work_Description__c ,SVMXC__Start_Date_and_Time__c ,SVMXC__End_Date_and_Time__c ,TotalTime__c, SVMXC__Work_Detail__c, ExpenseQuantity__c, LinePricePerUnit__c, CurrencyIsoCode,PartsOrderLine__c,PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c,PartsOrderLine__r.SKU__c ,PartsOrderLine__r.BOMaterialReference__c,PartsOrderLine__r.SVMXC__Product__r.Name,PartsOrderLine__r.SVMXC__Expected_Quantity2__c,ShippedQuantity_del__c,InstalledQuantity__c,FailedQuantity__c,ReturnedQuantity__c, Level_Required__c,
                Part_Order_Line_Type__c,PartsOrderLine__r.Generic_reference__c,PartsOrderLine__r.Free_text_reference__c,Left_Onsite_Qty__c,Not_Returned_Reason__c
                from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and ( RecordTypeId =:Planned OR RecordTypeId =:serviceproduct OR RecordTypeId =:Parts)];             
                
                List<SVMXC__Service_Order_Line__c> servicelinelist = [select id, convertCurrency(LinePricePerUnit__c) from SVMXC__Service_Order_Line__c where SVMXC__Service_Order__c =:woid and ( RecordTypeId =:Planned and SVMXC__Line_Type__c = 'Expenses' )];
                 if(servicelinelist != null && servicelinelist.size()>0)
                 currencyMap.putAll(servicelinelist);
                
                if(solines != null && solines.size()>0)
                {
                    // for preparation IP Map  and Technicians Map
                    for(SVMXC__Service_Order_Line__c  wd:solines)
                    {
                        if(wd.SVMXC__Serial_Number__c != null ){            
                            ipidSet.add(wd.SVMXC__Serial_Number__c);
                        }
                        if(wd.SVMXC__Group_Member__c != null ){         
                            fsridSet.add(wd.SVMXC__Group_Member__c);
                        }
                    }
                    if(ipidSet != null && ipidSet.size()>0)
                    prepareIPMap(ipidSet);
                    if(fsridSet != null && fsridSet.size()>0)
                    prepareTechnicians(fsridSet);
                    // Work Detail Creation
                    for(SVMXC__Service_Order_Line__c  wd:solines){
                        if(wd.RecordTypeId == Planned){  
                        
                            if(wd.SVMXC__Line_Type__c == 'Time')
                            {
                                TimeWD t = new TimeWD();
                                t.workOrderbFOID = wd.SVMXC__Service_Order__c;
                                t.workDetailbFOID = wd.id;
                                //t.lineType = wd.SVMXC__Line_Type__c;
                                t.lineType = System.Label.CLAPR15SRV84;
                                t.activityType = wd.SVMXC__Activity_Type__c;
                                t.hourType = wd.HourType__c;
                                if(wd.SVMXC__Group_Member__c != null)
                                {
                                    if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                    {
                                        t.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                    }
                                }
                                t.isBillable = wd.IsBillable__c;
                                
                                //t.startDateTime = String.valueOf(wd.SVMXC__Start_Date_and_Time__c);
                                if(wd.SVMXC__Start_Date_and_Time__c != null){
                                    t.startDateTime = (wd.SVMXC__Start_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                                }
                                //t.endDateTime = String.valueOf(wd.SVMXC__End_Date_and_Time__c);
                                if(wd.SVMXC__End_Date_and_Time__c != null){
                                    t.endDateTime =  (wd.SVMXC__End_Date_and_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
                                }
                                t.totalTime = wd.TotalTime__c;
                                t.workDescription = wd.SVMXC__Work_Description__c;
                                t.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                                t.workDetailbFONumber = wd.Name;
                                t.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015
                                TimeWDs.add(t);
                            }
                            else if(wd.SVMXC__Line_Type__c == 'Expenses'){
                            
                                ExpenseWD e = new ExpenseWD();
                                e.workOrderbFOID = wd.SVMXC__Service_Order__c;
                                e.workDetailbFOID = wd.id;
                                e.lineType = System.Label.CLAPR15SRV84;
                                e.expenseType = wd.SVMXC__Expense_Type__c;
                                e.expenseDate = String.valueOf(wd.SVMXC__Date_Received__c);
                                 if(wd.SVMXC__Group_Member__c != null)
                                {
                                    if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                    {
                                        e.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                    }
                                }
                                e.isBillable = wd.IsBillable__c;
                                //e.billingType = wd.
                                e.expenseQuantity = wd.ExpenseQuantity__c;
                                e.linePricePerUnit = wd.LinePricePerUnit__c;
                                e.currencyIsoCode = wd.CurrencyIsoCode;
                                e.workDescription = wd.SVMXC__Work_Description__c;
                                e.workDetailPlannedbFOID = wd.SVMXC__Work_Detail__c;
                                if(currencyMap.containskey(wd.id))
                                e.linePricePerUnitCorporateCurrency = currencyMap.get(wd.id).LinePricePerUnit__c;
                                e.workDetailbFONumber = wd.Name;
                                e.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015
                                ExpenseWDs.add(e);
                            }
                    
                        }
                        //Send only Work Detail Part that are related to a Part Order Line (Shipment), meaning the ones having PartsOrderLine__c not empty
                        if(wd.RecordTypeId == Parts && wd.PartsOrderLine__c != null){
                        
                            PartsWD p = new PartsWD();
                            p.workOrderbFOID = wd.SVMXC__Service_Order__c;
                            p.workDetailbFOID = wd.id;
                            p.workDetailbFONumber = wd.Name;
                            p.partOrderLinebFOID  = wd.PartsOrderLine__c;
                            p.partOrderLineType = wd.Part_Order_Line_Type__c;
                            p.TECH_BOPartsOrderLineRecordId = wd.PartsOrderLine__r.TECH_BOPartsOrderLineRecordId__c;
                            p.FOSKUReference = wd.PartsOrderLine__r.SKU__c;
                            p.BOMaterialReference =  wd.PartsOrderLine__r.BOMaterialReference__c;
                            p.sparePartbFOID = wd.PartsOrderLine__r.SVMXC__Product__c; // Yassine.B 02/04/2015 fix (name -> Id)
                            p.genericReference = wd.PartsOrderLine__r.Generic_reference__c;
                            p.freeTextReference =  wd.PartsOrderLine__r.Free_text_reference__c;
                            if(wd.SVMXC__Group_Member__c != null)
                            {
                                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                {
                                    p.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                }
                            }
                            p.isBillable = wd.IsBillable__c;
                            //p.expectedQuantity
                            p.shippedQuantity = wd.ShippedQuantity_del__c;
                            p.installedQuantity = wd.InstalledQuantity__c;
                            p.returnedQuantity = wd.ReturnedQuantity__c;
                            p.failedQuantity = wd.FailedQuantity__c;
                            p.leftOnsiteQuantity = wd.Left_Onsite_Qty__c;
                            p.notReturnReason = wd.Not_Returned_Reason__c;
                            p.workDescription = wd.SVMXC__Work_Description__c;
                            p.expectedQuantity = wd.PartsOrderLine__r.SVMXC__Expected_Quantity2__c;
                            p.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015                          
                            PartsWDs.add(p);
                        
                        }                   
                        else if(wd.RecordTypeId == serviceproduct){
                             ServiceProductsWD sp = new ServiceProductsWD();
                             sp.workOrderbFOID = wd.SVMXC__Service_Order__c;
                             sp.workDetailbFOID = wd.id;
                             sp.workDetailbFONumber = wd.Name;
                            if(wd.SVMXC__Group_Member__c != null)
                            {
                                if(TechnicianMap.containskey(wd.SVMXC__Group_Member__c))
                                {
                                    sp.FSR = TechnicianMap.get(wd.SVMXC__Group_Member__c);
                                }
                            }
                            if(wd.SVMXC__Serial_Number__c != null)
                            {
                                if(IPUnitMap.containskey(wd.SVMXC__Serial_Number__c))
                                {
                                    sp.InstalledProduct = IPUnitMap.get(wd.SVMXC__Serial_Number__c);
                                }
                            
                            }
                            sp.workDescription = wd.SVMXC__Work_Description__c;
                            sp.levelRequired = wd.Level_Required__c; //May Release Yassine 05052015
                            ServiceProductsWDs.add(sp);
                    
                        }
                        
                    
                    }
                }
                wDetail.TimeWDs = TimeWDs;
                wDetail.ExpenseWDs = ExpenseWDs;
                wDetail.ServiceProductsWDs = ServiceProductsWDs;
                wDetail.PartsWDs = PartsWDs;
        }
    
        
        
        return wDetail;
    
    }
    public static Map<Id,InstalledProduct> IPUnitMap = new Map<Id,InstalledProduct>();
    public Static void prepareIPMap(Set<id> idset){
           
            for(SVMXC__Installed_Product__c ipobj: [select id, name,GoldenAssetId__c,SVMXC__Company__r.SEAccountID__c,
                SVMXC__Company__r.Name,SVMXC__Company__r.AccountLocalName__c,SVMXC__Company__r.Street__c,SVMXC__Company__r.StreetLocalLang__c,
                SVMXC__Company__r.AdditionalAddress__c,SVMXC__Company__r.LocalAdditionalAddress__c,SVMXC__Company__r.ZipCode__c,
                SVMXC__Company__r.City__c,SVMXC__Company__r.LocalCity__c,SVMXC__Company__r.Country__r.CountryCode__c,SVMXC__Company__r.StateProvince__c,
                SVMXC__Company__r.StateProvince__r.StateProvinceCode__c,SVMXC__Company__r.RecordType.Name,UniqueSEIdentification__c,
                CustomerSerialNumber__c, SVMXC__Serial_Lot_Number__c, SchneiderCommercialReference__c,SVMXC__Country__c,RecordType.Name from SVMXC__Installed_Product__c where id in :idset ])
            {
                InstalledProduct ipu = new InstalledProduct();
                ipu.GoldenID = ipobj.GoldenAssetId__c;
                ipu.Name =  ipobj.Name;
                ipu.InstalledAtGoldenID = ipobj.SVMXC__Company__r.SEAccountID__c;
                //ipu.SerialNumber = ipobj.CustomerSerialNumber__c;
                ipu.SerialNumber = ipobj.SVMXC__Serial_Lot_Number__c; // Yassine.B 13/03/2015 - fix the right serial number field on IP
                ipu.SECommercialRef = ipobj.SchneiderCommercialReference__c;
                ipu.installedAtCountryCode = ipobj.SVMXC__Country__c;
                ipu.installedAtGoldenID = ipobj.SVMXC__Company__r.SEAccountID__c;
                ipu.installedAtName = ipobj.SVMXC__Company__r.Name;
                ipu.installedAtNameLocal = ipobj.SVMXC__Company__r.AccountLocalName__c;
                ipu.installedAtStreet = ipobj.SVMXC__Company__r.Street__c;
                ipu.installedAtStreetLocal = ipobj.SVMXC__Company__r.StreetLocalLang__c;
                ipu.installedAtAddAddressInfo = ipobj.SVMXC__Company__r.AdditionalAddress__c;
                ipu.installedAtAddAddressInfoLocal = ipobj.SVMXC__Company__r.LocalAdditionalAddress__c;
                ipu.installedAtZipCode = ipobj.SVMXC__Company__r.ZipCode__c;
                ipu.installedAtCity = ipobj.SVMXC__Company__r.City__c;
                ipu.installedAtLocalCity = ipobj.SVMXC__Company__r.LocalCity__c;
                ipu.installedAtCountryCode = ipobj.SVMXC__Company__r.Country__r.CountryCode__c;
                ipu.installedAtStateProvinceCode = ipobj.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
                ipu.uniqueDigitalID = ipobj.UniqueSEIdentification__c;
                
                //ipu.installedAtRecordTypeName = ipobj.RecordType.name;
                ipu.installedAtRecordTypeName = ipobj.SVMXC__Company__r.RecordType.Name; // Yassine.B 13/03/2015 - fix the record type name field on Account
                IPUnitMap.put(ipobj.id, ipu);
            }
        
        
    }
    public static Map<Id,Technician> TechnicianMap = new Map<Id,Technician>();
    public Static void  prepareTechnicians(Set<id> idset){
            
            for(SVMXC__Service_Group_Members__c gm:[select Level__c, id, SESAID__c,Business_Unit__c,SVMXC__Salesforce_User__c,SVMXC__Salesforce_User__r.FirstName,SVMXC__Salesforce_User__r.LastName,SVMXC__Salesforce_User__r.email,ThirdPartyContact__c,ThirdPartyContact__r.FirstName,ThirdPartyContact__r.LastName,ThirdPartyContact__r.email,SVMXC__Email__c,SVMXC__Role__c  from SVMXC__Service_Group_Members__c]){         
                Technician t = new Technician();
                if(gm.SVMXC__Role__c == 'Schneider Employee'){
                    t.SESAID  = gm.SESAID__c;
                    t.FirstName = gm.SVMXC__Salesforce_User__r.FirstName;
                    t.LastName = gm.SVMXC__Salesforce_User__r.LastName;
                    t.Email = gm.SVMXC__Salesforce_User__r.email;
                    t.RoleName = gm.SVMXC__Role__c;
                    t.BusinessUnit = gm.Business_Unit__c;
                    t.level =gm.Level__c; // May 2015 Release 
                }
                else{
                    
                    t.FirstName = gm.ThirdPartyContact__r.FirstName;
                    t.LastName = gm.ThirdPartyContact__r.LastName;
                    t.Email = gm.ThirdPartyContact__r.email;
                    t.RoleName = gm.SVMXC__Role__c;
                    t.BusinessUnit = gm.Business_Unit__c;
                    t.level =gm.Level__c; // May 2015 Release 
                }
                TechnicianMap.put(gm.id,t);
            }
                
        
    }
    public Static  WorkOrder  populateAndGetWorkOrderFields(SVMXC__Service_Order__c wo){
            woresult = new WorkOrder();
            populateWorkOrderFields(wo);
            return woresult;
    }
    public Static  void  populateWorkOrderFields(SVMXC__Service_Order__c wo){
            
            woresult.workOrderbFOID = wo.id;
            woresult.workOrderNumber = wo.Name;
        
            Account ipAtAcc = new Account();
            ipAtAcc.name  = wo.SVMXC__Company__r.Name;
            ipAtAcc.bFOID = wo.SVMXC__Company__c;
            ipAtAcc.GoldenID = wo.SVMXC__Company__r.SEAccountID__c;
            ipAtAcc.NameLocal = wo.SVMXC__Company__r.AccountLocalName__c;
            ipAtAcc.Street = wo.SVMXC__Company__r.Street__c;
            ipAtAcc.StreetLocal =  wo.SVMXC__Company__r.StreetLocalLang__c;
            ipAtAcc.AddAddressInfo = wo.SVMXC__Company__r.AdditionalAddress__c;
            ipAtAcc.AddAddressInfoLocal =  wo.SVMXC__Company__r.LocalAdditionalAddress__c;
            ipAtAcc.ZipCode =  wo.SVMXC__Company__r.ZipCode__c;
            ipAtAcc.City =  wo.SVMXC__Company__r.City__c;
            ipAtAcc.LocalCity = wo.SVMXC__Company__r.LocalCity__c;
            ipAtAcc.CountryCode = wo.SVMXC__Company__r.Country__r.CountryCode__c;
            ipAtAcc.StateProvinceCode = wo.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;         
            ipAtAcc.recordTypeName = wo.SVMXC__Company__r.RecordType.Name;
            
              Contact contact  = new Contact();
              contact.GoldenID = wo.SVMXC__Contact__r.SEContactID__c;
              contact.firstName = wo.SVMXC__Contact__r.FirstName;
              contact.localFirstName = wo.SVMXC__Contact__r.LocalFirstName__c;
              contact.middleInitial = wo.SVMXC__Contact__r.MidInit__c;
              contact.localMiddleInitial = wo.SVMXC__Contact__r.LocalMidInit__c;
              contact.lastName = wo.SVMXC__Contact__r.LastName;
              contact.localLastName = wo.SVMXC__Contact__r.LocalLastName__c;
              contact.emailAddress = wo.SVMXC__Contact__r.Email;
              contact.mobilePhone = wo.SVMXC__Contact__r.MobilePhone;
              contact.workPhone = wo.SVMXC__Contact__r.WorkPhone__c;
            
            woresult.installedAtAccount = ipAtAcc;
            woresult.contact = contact;
            woresult.customerRequestedDate = wo.CustomerRequestedDate__c;
            woresult.customerRequestedTime = wo.CustomerRequestedTime__c;  
            woresult.estimatedExpenseCost = wo.EstimatedExpenseCost__c; 
            woresult.estimatedLaborCost = wo.Estimated_Labor_Cost__c;
            woresult.estimatedMaterialCost = wo.EstimatedMaterialCost__c; 
            woresult.quotationNumber = wo.QuotationNumber__c; 
            woresult.WOcurrencyIsCode = wo.CurrencyIsoCode;  
            //woresult.serviceBusinessUnit = wo.BusinessUnit__c;
            woresult.serviceBusinessUnit = wo.Service_Business_Unit__c; // Yassine.B 13/03/2015 - fix with right BU field
            woresult.priority = wo.SVMXC__Priority__c;
            //woresult.scheduledDateTime = String.valueOf(wo.SVMXC__Scheduled_Date_Time__c);
            if(wo.SVMXC__Scheduled_Date_Time__c != null){
                woresult.scheduledDateTime = (wo.SVMXC__Scheduled_Date_Time__c).formatGMT('yyyy-MM-dd HH:mm:ss');
            }
            woresult.workOrderGroupbFOID = wo.WorkOrderGroup__c;            
            woresult.workOrderName = wo.WorkOrderName__c;
            woresult.workOrderReason = wo.SVMXC__Problem_Description__c;
            woresult.commentToPlanner = wo.Comments_to_Planner__c;
            woresult.countryOfBackOffice = wo.CountryOfBackOffice__c;
            woresult.backOfficeSystem = wo.BackOfficeSystem__c;
            woresult.workOrderStatus = wo.SVMXC__Order_Status__c;
            woresult.workOrderSubStatus = wo.SubStatus__c;
            woresult.workOrderCategory = wo.Work_Order_Category__c;
            woresult.workOrderType = wo.SVMXC__Order_Type__c;
            woresult.workOrderSubType = wo.WorkOrderSubType__c;         
            woresult.isBillable = wo.IsBillable__c ;
            woresult.billingType = wo.SVMXC__Billing_Type__c;
            woresult.slaTermsName = wo.SVMXC__SLA_Terms__r.Name;
            Technician primaryFSR =new  Technician();
            System.debug('\n Log : WOWS tech aaa '+wo.SVMXC__Group_Member__c);
            if(wo.SVMXC__Group_Member__r.SVMXC__Role__c == 'Schneider Employee')
            {
                primaryFSR.SESAID = wo.SVMXC__Group_Member__r.SESAID__c;
                primaryFSR.FirstName = wo.SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.FirstName;
                primaryFSR.LastName = wo.SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.LastName;
                primaryFSR.Email = wo.SVMXC__Group_Member__r.SVMXC__Salesforce_User__r.Email;
                primaryFSR.RoleName = wo.SVMXC__Group_Member__r.SVMXC__Role__c;
                primaryFSR.BusinessUnit = wo.SVMXC__Group_Member__r.Business_Unit__c;
                primaryFSR.level = wo.SVMXC__Group_Member__r.Level__c; // May 2015 Release 
            }
            else{
                primaryFSR.FirstName = wo.SVMXC__Group_Member__r.ThirdPartyContact__r.FirstName;
                primaryFSR.LastName = wo.SVMXC__Group_Member__r.ThirdPartyContact__r.LastName;
                primaryFSR.Email = wo.SVMXC__Group_Member__r.ThirdPartyContact__r.Email;
                primaryFSR.RoleName = wo.SVMXC__Group_Member__r.SVMXC__Role__c;
                primaryFSR.BusinessUnit = wo.SVMXC__Group_Member__r.Business_Unit__c;
                primaryFSR.level = wo.SVMXC__Group_Member__r.Level__c; // May 2015 Release 
            }
             woresult.primaryFSR = primaryFSR;
             
             InstalledProduct mip = new InstalledProduct();
             mip.GoldenID =  wo.SVMXC__Component__r.GoldenAssetId__c;
             mip.Name = wo.SVMXC__Component__r.Name;
             mip.InstalledAtGoldenID = wo.SVMXC__Component__r.SVMXC__Company__r.SEAccountID__c;
             mip.SerialNumber = wo.SVMXC__Component__r.SVMXC__Serial_Lot_Number__c;
             mip.SECommercialRef = wo.SVMXC__Component__r.SchneiderCommercialReference__c;
             mip.installedAtCountryCode = wo.SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c;
             mip.installedAtName = wo.SVMXC__Component__r.SVMXC__Company__r.Name;
            mip.installedAtNameLocal = wo.SVMXC__Component__r.SVMXC__Company__r.AccountLocalName__c;
            mip.installedAtStreet = wo.SVMXC__Component__r.SVMXC__Company__r.Street__c;
            mip.installedAtStreetLocal = wo.SVMXC__Component__r.SVMXC__Company__r.StreetLocalLang__c;
            mip.installedAtAddAddressInfo = wo.SVMXC__Component__r.SVMXC__Company__r.AdditionalAddress__c;
            mip.installedAtAddAddressInfoLocal = wo.SVMXC__Component__r.SVMXC__Company__r.LocalAdditionalAddress__c;
            mip.installedAtZipCode = wo.SVMXC__Component__r.SVMXC__Company__r.ZipCode__c;
            mip.installedAtCity = wo.SVMXC__Component__r.SVMXC__Company__r.City__c;
            mip.installedAtLocalCity = wo.SVMXC__Component__r.SVMXC__Company__r.LocalCity__c;
            mip.installedAtCountryCode = wo.SVMXC__Component__r.SVMXC__Company__r.Country__r.CountryCode__c;
            mip.installedAtStateProvinceCode = wo.SVMXC__Component__r.SVMXC__Company__r.StateProvince__r.StateProvinceCode__c;
            mip.installedAtRecordTypeName  = wo.SVMXC__Component__r.SVMXC__Company__r.RecordType.Name;
            mip.uniqueDigitalID = wo.SVMXC__Component__r.UniqueSEIdentification__c;
            //mip.installedAtRecordTypeName = 'hari test';
            

             woresult.mainInstalledProduct =mip;
             woresult.parentWObFOID = wo.Parent_Work_Order__c;
             woresult.projectNumber = String.valueOf(wo.Project__c);
             //woresult.serviceContractBOReference =  wo.SVMXC__Service_Contract__r.BackOfficeReference__c;
             woresult.serviceContractBOReference =  wo.ServiceLine__r.BackOfficeReference__c;
             //woresult.serviceLineBOReference = wo.ServiceLine__r.BackOfficeReference__c;
             woresult.serviceLineBOReference = wo.SVMXC__Service_Contract__r.BackOfficeReference__c;

             woresult.salesOrderNumber = wo.Sales_Order_Number__c;
             woresult.salesOrderLineNumber = wo.salesOrderLineNumber__c;
             
              woresult.PONumber = wo.PONumber__c;
             //woresult.PONumber = wo.Customer_Reference_Number__c;
             woresult.serviceCenterTerritoryName = wo.SVMXC__Primary_Territory__r.Name;
             //woresult.customerReferenceNumber =wo.CustomerReferenceNumber__c;
             woresult.customerReferenceNumber =wo.Customer_Reference_Number__c;
            //woresult.ownerSESAID
           
             woresult.soldToAccountbFOID = wo.SoldToAccount__c;
            //woresult.mainInstalledProduct = String.valueOf(wo.SVMXC__Component__c);
             woresult.productbFOID = String.valueOf(wo.SVMXC__Product__c);
             // QC 11658
             //woresult.parentWOBackOfficeReference = wo.Parent_Work_Order__r.BackOfficeReference__c;
             woresult.parentWOBackOfficeReference = wo.Parent_Work_Order__r.TECH_WOBackOfficeRecordID__c;
             woresult.caseNumber = wo.SVMXC__Case__r.CaseNumber;

             woresult.WOBackOfficeReference = wo.BackOfficeReference__c;
             woresult.plantName = wo.SVMXC__Primary_Territory__r.Plant__r.Name; //Yassine.B 18/03/2015
             woresult.TECH_WOBackOfficeRecordID = wo.TECH_WOBackOfficeRecordID__c;
             
             woresult.WOGBackOfficeReference =  wo.WorkOrderGroup__r.BackOfficeReference__c;
             if(wo.LastModifiedDate != null )
             {
                woresult.TECH_FOLastUpdateTimestamp = (wo.LastModifiedDate).formatGMT('yyyy-MM-dd HH:mm:ss') ;
             }
             //woresult.TECH_FOLastUpdateTimestamp = (wo.TECH_FOLastUpdate_Timestamp__c).formatGMT('yyyy-MM-dd HH:mm:ss');
             //woresult.closedOn =  wo.SVMXC__Closed_On__c;
             if(wo.SVMXC__Closed_On__c != null){
                woresult.closedOn =  (wo.SVMXC__Closed_On__c).formatGMT('yyyy-MM-dd HH:mm:ss');
             }
             woresult.plannedDuration =  wo.PlannedServiceDuration__c;
    }
    
    public static SVMXC__Service_Order__c getWorkOrder(WorkOrder wou ){
        
        SVMXC__Service_Order__c  wo = new SVMXC__Service_Order__c();
        wo.WorkOrderName__c =  wou.workOrderName;
        wo.CustomerRequestedTime__c = wou.customerRequestedTime;
        wo.BusinessUnit__c = wou.serviceBusinessUnit ;
        wo.SVMXC__Priority__c = wou.priority;
        wo.Comments_to_Planner__c = wou.commentToPlanner;
        wo.CountryOfBackOffice__c = wou.countryOfBackOffice;
        wo.BackOfficeSystem__c = wou.backOfficeSystem;
        wo.SVMXC__Order_Status__c = wou.workOrderStatus;
        wo.SubStatus__c = wou.workOrderSubStatus;
        wo.Work_Order_Category__c = wou.workOrderCategory;
        wo.SVMXC__Order_Type__c = wou.workOrderType;
        wo.WorkOrderSubType__c = wou.workOrderSubType;
        wo.IsBillable__c =  wou.isBillable;
        wo.SVMXC__Billing_Type__c =  wou.billingType;   
        wo.CustomerRequestedDate__c = wou.customerRequestedDate;
        wo.SVMXC__Problem_Description__c =wou.workOrderReason;      
        //wo.TECH_FOLastUpdate_Timestamp__c =wou.TECH_FOLastUpdateTimestamp;
        wo.PONumber__c  = wou.PONumber;
        wo.salesOrderLineNumber__c = wou.salesOrderLineNumber;
        wo.Customer_Reference_Number__c = wou.customerReferenceNumber;
        wo.SVMXC__Company__c   = wou.installedAtAccountbFOID ;     
        wo.Sales_Order_Number__c = wou.salesOrderNumber;
       
        wo.EstimatedExpenseCost__c = wou.estimatedExpenseCost;
        wo.EstimatedMaterialCost__c = wou.estimatedMaterialCost;
        //wo.estimatedLaborCost
        
        wo.QuotationNumber__c = wou.quotationNumber;
        wo.BillToAccount__c = wou.billToAccountbFOID;
        wo.SVMXC__Product__c = wou.productbFOID;
        wo.Estimated_Labor_Cost__c = wou.estimatedLaborCost;
        wo.Project__c = wou.projectNumber;
        wo.salesOrderLineNumber__c =wou.salesOrderLineNumber;
        wo.Sales_Order_Number__c =wou.salesOrderNumber;
        wo.Service_Business_Unit__c  = wou.serviceBusinessUnit;
        //wo.SVMXC__Service_Contract__c  = wou.serviceContractbFOID;
        //wo.ServiceLine__c =wou.serviceLinebFOID;
        wo.SVMXC__Service_Contract__c = wou.serviceLinebFOID; 
        wo.ServiceLine__c =wou.serviceContractbFOID;
        wo.SoldToAccount__c  = wou.soldToAccountbFOID;
        wo.BackOfficeReference__c = wou.WOBackOfficeReference;
        wo.CurrencyIsoCode =wou.WOcurrencyIsCode;
        wo.TECH_IsBoundToBackOffice__c =  true;//Added for RecoredType Switch 18/02/2015
        if(wou.WOGBackOfficeReference != null )
        wo.TECH_WOGBackOfficeReference__c = wou.WOGBackOfficeReference;
        else{
            wo.TECH_WOGBackOfficeReference__c =wou.WOBackOfficeReference;
        }
        
        wo.Back_Office_Bill__c = wou.BackOfficeBillToValid; // Yassine. B 13/03/2015 
        wo.TECH_WOBackOfficeRecordID__c = wou.TECH_WOBackOfficeRecordID;
        
        

        
           // webservice String  serviceContractBOReference;
           // webservice String  serviceLineBOReference;
           // webservice String  salesOrderNumber;
           
           // webservice String  PONumber;
           // webservice String  serviceCenterTerritoryName;
           
            
            
            //webservice Id   serviceLinebFOID;
            //webservice String   WOBackOfficeReference;
            //webservice String   TECH_WOBackOfficeRecordID;
            
            
            //webservice Decimal   estimatedLaborCost;
            
    
        return wo;
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
                emailAddressset.add(con.emailAddress);
            if(con.mobilePhone != null && con.mobilePhone!='')
                mobilePhoneset.add(con.mobilePhone);
            if(con.workPhone != null && con.workPhone!='')
                workPhoneset.add(con.workPhone);                    
        }

    } 


    public static  void getInstalledProductFields(InstalledProduct ipu){
    
        if(ipu != null ){
        
            if(ipu.GoldenID != null && ipu.GoldenID !='')
             {   
                IPGoldenIDset.add(ipu.GoldenID );
                //spObj.GoldenID = ipu.GoldenID;
             }
            if(ipu.Name != null && ipu.Name !='')
             {
                Nameset.add(ipu.Name );
                //spObj.IPName = ipu.Name;
             }
            if(ipu.InstalledAtGoldenID != null && ipu.InstalledAtGoldenID !='')
              {
                InstalledAtGoldenIDset.add(ipu.InstalledAtGoldenID );
                //spObj.InstalledAtGoldenID = ipu.InstalledAtGoldenID;
              }
            if(ipu.SerialNumber != null && ipu.SerialNumber !='')
              {  
                SerialNumberset.add(ipu.SerialNumber );
                //spObj.IPSerialNumber = ipu.SerialNumber;
              }
            if(ipu.SECommercialRef != null && ipu.SECommercialRef !='')
             {
                SECommercialRefset.add(ipu.SECommercialRef );
                //spObj.IPSECommercialRef = ipu.SECommercialRef;
             }
            if(ipu.installedAtCountryCode != null && ipu.installedAtCountryCode !='')
             {
                installedAtCountryCodeset.add(ipu.installedAtCountryCode );
                //spObj.IpinstalledAtCountryCode = ipu.installedAtCountryCode;
             }
        
        }
    
    }
    public Static String getIPQuery(){
        
                String Query=' select id, name ,GoldenAssetId__c,SVMXC__Company__c,SVMXC__Company__r.SEAccountID__c,CustomerSerialNumber__c, SchneiderCommercialReference__c,SVMXC__Company__r.Country__r.CountryCode__c,UniqueSEIdentification__c from SVMXC__Installed_Product__c ';
        
                String QueryString ='';
                String WhereClause ='';
        
        if(IPGoldenIDset != null && IPGoldenIDset.size()>0)
        {
                WhereClause =' GoldenAssetId__c in  ('+ SOQLListFormat(IPGoldenIDset) +') ';
        
        }
        if(Nameset != null && Nameset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  Name in  ('+ SOQLListFormat(Nameset) +') ';
            else
            WhereClause +=  '  Name in  ('+ SOQLListFormat(Nameset) +') ';
        }
        if(InstalledAtGoldenIDset != null && InstalledAtGoldenIDset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(InstalledAtGoldenIDset) +') ';
            else
            WhereClause +=  '  SVMXC__Company__r.SEAccountID__c in  ('+ SOQLListFormat(InstalledAtGoldenIDset) +') ';
        }
        if(SerialNumberset != null && SerialNumberset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  CustomerSerialNumber__c in  ('+ SOQLListFormat(SerialNumberset) +') ';
            else
            WhereClause +=  '  CustomerSerialNumber__c in  ('+ SOQLListFormat(SerialNumberset) +') ';
        }
        if(SECommercialRefset != null && SECommercialRefset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  SchneiderCommercialReference__c in  ('+ SOQLListFormat(SECommercialRefset) +') ';
            else
            WhereClause +=  '  SchneiderCommercialReference__c in  ('+ SOQLListFormat(SECommercialRefset) +') ';
        }
        if(installedAtCountryCodeset != null && installedAtCountryCodeset.size()>0)
        {
            if(WhereClause.length()>0)
            WhereClause +=  ' OR  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(installedAtCountryCodeset) +') ';
            else
            WhereClause +=  '  SVMXC__Company__r.Country__r.CountryCode__c in  ('+ SOQLListFormat(installedAtCountryCodeset) +') ';
        }

        if(WhereClause.length()>0)
        QueryString = Query +' Where '+ WhereClause;
        else{
            QueryString ='';
        }
        System.debug('\n Log WWS : ip query '+QueryString);
        return QueryString;
    
    }
    
    
    
    
    public static String getContactQuery(){
        
                String Query='';
        //if(request.soldToAccount != null)
                    //AccntIDSet.add(request.soldToAccount);
        
                String QueryString ='';
                String WhereClause ='';
        String AccountFilter ='';
                //QueryString = ' Select id,SEContactID__c,FirstName,LocalFirstName__c,MidInit__c,LocalMidInit__c,LastName,LocalLastName__c,Email,MobilePhone,WorkPhone__c from Contact ';
        QueryString = ' Select id,SEContactID__c,FirstName,LocalFirstName__c,MidInit__c,LocalMidInit__c,LastName,LocalLastName__c,Email,MobilePhone,WorkPhone__c,AccountId from Contact ';
        
        if(AccntIDSet != null && AccntIDSet.size()>0)
                {                   
                    AccountFilter +=  ' AccountId in ('+ SOQLListFormat(AccntIDSet) +') ';                    
                }
                
                if(GoldenIDset != null && GoldenIDset.size()>0)
                {
                    WhereClause +=  ' SEContactID__c in  ('+ SOQLListFormat(GoldenIDset) +') ';
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
                Query =  QueryString +' where '+WhereClause+' limit 10000';
                System.debug('\n scLog :'+Query);
                return Query;
        
    }
  //public static Id getMatchedContact(Contact ucon , List<Sobject> conList){
    public static Id getMatchedContact(Contact ucon , List<Sobject> conList,Id AccountId){
           
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

     webservice static PartsOrdersResults bulkUpdatePartsOrderAndPartsOrderLines(PartsOrders request){

        PartsOrdersResults response = new PartsOrdersResults();
        Map<id,PartsOrder> porderMap = new  Map<id,PartsOrder>();
        Map<id,PartsOrderLines> porderLineMap = new Map<id,PartsOrderLines>();
        Map<id,id> polpomap = new Map<id,id>();
        Map<id, PartsOrderLinesResult> plineResultMap = new Map<id, PartsOrderLinesResult>();
        Map<id,List<PartsOrderLinesResult>> pidPlineResults = new Map<id,List<PartsOrderLinesResult>>();
        Map<id,PartsOrderResult> pidporderResultmap = new Map<id,PartsOrderResult>();
        Set<String> calculatedPlantSet = new Set<String>();
        
        
        for(PartsOrder punit: request.PartsOrders){
            
                if(punit.partOrderbFOID != null )
                {
                    porderMap.put(punit.partOrderbFOID, punit);
                }
                if(punit.PartsOrderLines != null ){
                    for(PartsOrderLines plUnit:punit.PartsOrderLines){                  
                        if(plUnit.partOrderLinebFOID != null){                            
                            porderLineMap.put(plUnit.partOrderLinebFOID, plUnit);
                            polpomap.put(plUnit.partOrderLinebFOID,punit.partOrderbFOID);
                            
                        }
                        if(plUnit.calculatedPlant != null && plUnit.calculatedPlant !=''){
                                calculatedPlantSet.add(plUnit.calculatedPlant);
                        }
                        
                    }
                }
        }
        System.debug('\n cLog: '+porderMap);
        List<PartsOrderResult> PartsOrderUnitList = new List<PartsOrderResult>();
        if(porderMap!= null && porderMap.size()>0){
            //Yassine.B 11/06/2015 - Last_Synchronization__c added in the query (DEF-7348)
            List<SVMXC__RMA_Shipment_Order__c> poList =[ select id, name ,TECH_BOPartsOrderRecordId__c,TECH_BOLastUpdateTimestamp__c,SVMXC__Order_Status__c,Synchronization_log__c, BackOfficeReference__c, Last_Synchronization__c FROM  SVMXC__RMA_Shipment_Order__c where id in :porderMap.keySet()  ];
            if(poList != null && poList.size()>0){
                for(SVMXC__RMA_Shipment_Order__c poObj: poList){
                
                    if(porderMap.containskey(poObj.id))
                    {                   
                        PartsOrder punit  = porderMap.get(poObj.id);
                        if(punit.partOrderbFONumber != null && punit.partOrderbFONumber !='')
                        {
                            //poObj.name = punit.partOrderbFONumber;                        
                        }
                        if(punit.partOrderStatus != null && punit.partOrderStatus !='')
                        {
                            poObj.SVMXC__Order_Status__c = punit.partOrderStatus;                       
                        }
                        if(punit.partOrderBOReference != null && punit.partOrderBOReference !='')
                        {
                            poObj.BackOfficeReference__c = punit.partOrderBOReference;                      
                        }
                        if(punit.TECH_BOPartsOrderRecordId != null && punit.TECH_BOPartsOrderRecordId !='')
                        {
                            poObj.TECH_BOPartsOrderRecordId__c = punit.TECH_BOPartsOrderRecordId;                       
                        }
                        if(punit.TECH_BOLastUpdateTimestamp != null )
                        {
                            poObj.TECH_BOLastUpdateTimestamp__c = punit.TECH_BOLastUpdateTimestamp;                       
                        }
                        if(punit.synchronizationLog != null && punit.synchronizationLog !='')
                        {
                            poObj.Synchronization_log__c = punit.synchronizationLog; 
                            poObj.Last_Synchronization__c = System.now(); // Yassine.B 11/06/2015 (DEF-7348) put the last sync date/time when we got a log update from BO
                        }
                    }
                }
                Database.SaveResult[] Po_results  = CreateOrUpdateServices((List<Sobject>)poList,'UPDATE');
                
                for(Integer k=0;k<Po_results.size();k++ )
                {
                    Database.SaveResult sr = Po_results[k];
                    PartsOrderResult pr = new PartsOrderResult();
                    List<PartsOrderLinesResult> PartsOrderLinesResults= new List<PartsOrderLinesResult>();
                    pr.PartsOrderLinesResults = PartsOrderLinesResults;
                    
                    //pr.type = 'UPDATE';
                    
                    pr.partOrderbFOID =poList[k].id;
                    pr.partOrderbFONumber = poList[k].name;
                    pr.partOrderBOReference = poList[k].BackOfficeReference__c;
                    pr.TECH_BOPartsOrderRecordId = poList[k].TECH_BOPartsOrderRecordId__c;
                    
                    if(!sr.isSuccess())
                    {
                        pr.success = false;
                        
                        String Message ='';
                        for(Database.Error err : sr.getErrors()) {
                            Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                        }                            
                        pr.errorMessage = Message;
                    }
                    else{
                        pr.success = true;              
                    }
                    
                    PartsOrderUnitList.add(pr);
                }
                
                
            }
            
        }
        if(porderLineMap != null && porderLineMap.size()>0){
        
            List<SVMXC__RMA_Shipment_Line__c> porderLineList =[select id,SVMXC__RMA_Shipment_Order__c, name,SVMXC__Expected_Quantity2__c ,Shipped_Qty__c ,ShippingStatus__c ,Calculated_plant__c ,SVMXC__Expected_Ship_Date__c ,BackOfficeReference__c ,Carrier__c ,Tracking_number__c, TECH_BOPartsOrderLineRecordId__c,TECH_BOLastUpdateTimestamp__c, BOMaterialReference__c  from SVMXC__RMA_Shipment_Line__c where id in :porderLineMap.keySet() ]; //Yassine.B 09/04/2015
            Map<String,Plant__c> plantMap = new Map<String,Plant__c>();
            
            if(calculatedPlantSet != null && calculatedPlantSet.size()>0){
                for(Plant__c obj:  [select id,Name from Plant__c where name in :calculatedPlantSet ])
                {
                    plantMap.put(obj.name,obj);
                }
            }
            
            if(porderLineList != null && porderLineList.size()>0){
                for(SVMXC__RMA_Shipment_Line__c polObj:porderLineList){
                
                    if(porderLineMap.containskey(polObj.id))
                    {
                        PartsOrderLines opluint =porderLineMap.get(polObj.id);
                        if(opluint.expectedQuantity != null)
                        {
                            polObj.SVMXC__Expected_Quantity2__c = opluint.expectedQuantity ;
                        }
                        if(opluint.shippedQuantity != null)
                        {
                            polObj.Shipped_Qty__c = opluint.shippedQuantity ;
                        }
                        if(opluint.shippingStatus != null && opluint.shippingStatus  !='')
                        {
                            if(opluint.shippingStatus == 'Shipped' && opluint.shippedQuantity >0 && opluint.shippedQuantity < polObj.SVMXC__Expected_Quantity2__c) //Yassine.B 09/04/2015
                            {
                                polObj.ShippingStatus__c ='Partially Shipped'; //Yassine.B 09/04/2015
                            }else if(opluint.shippingStatus == 'Received' && opluint.shippedQuantity >0 && opluint.shippedQuantity < polObj.SVMXC__Expected_Quantity2__c) //Yassine.B 16/04/2015
                            {
                                polObj.ShippingStatus__c ='Partially Received'; //Yassine.B 16/04/2015
                            }
                            else{
                                polObj.ShippingStatus__c = opluint.shippingStatus; //Yassine.B 09/04/2015
                            }
                        }
                        if(opluint.calculatedPlant != null &&  opluint.calculatedPlant !='' && plantMap.containskey(opluint.calculatedPlant))
                        {
                            polObj.Calculated_plant__c = plantMap.get(opluint.calculatedPlant).id ;
                        }
                        if(opluint.expectedShipDate != null)
                        {
                            polObj.SVMXC__Expected_Ship_Date__c = Date.valueOf(opluint.expectedShipDate );
                        }
                        if(opluint.partOrderLineBOReference != null && opluint.partOrderLineBOReference != '')
                        {   
                            if(polObj.BackOfficeReference__c == null)
                            polObj.BackOfficeReference__c = opluint.partOrderLineBOReference ;
                        }
                        if(opluint.carrier != null && opluint.carrier != '')
                        {
                            polObj.Carrier__c = opluint.carrier  ;
                        }
                        if(opluint.trackingNumber != null && opluint.trackingNumber != '')
                        {
                            polObj.Tracking_number__c = opluint.trackingNumber  ;
                        }
                        if(opluint.TECH_BOPartsOrderLineRecordId != null && opluint.TECH_BOPartsOrderLineRecordId != '')
                        {
                            System.debug('***************'+opluint.TECH_BOPartsOrderLineRecordId);
                            polObj.TECH_BOPartsOrderLineRecordId__c = opluint.TECH_BOPartsOrderLineRecordId  ;
                        }
                        if(opluint.TECH_BOLastUpdateTimestamp != null && opluint.TECH_BOLastUpdateTimestamp != '')
                        {
                           polObj.TECH_BOLastUpdateTimestamp__c = opluint.TECH_BOLastUpdateTimestamp  ;
                        }
                        
                        if(opluint.BOMaterialReference != null && opluint.BOMaterialReference != '') //Yassine.B 09/04/2015
                        {
                           if(polObj.BOMaterialReference__c  == null)                                //Yassine.B 09/04/2015
                            polObj.BOMaterialReference__c = opluint.BOMaterialReference;             //Yassine.B 09/04/2015
                        }                        
                    }
                }
                Database.SaveResult[] Pol_results  = CreateOrUpdateServices((List<Sobject>)porderLineList,'UPDATE');
                for(Integer k=0;k<Pol_results.size();k++ )
                {
                    Database.SaveResult sr = Pol_results[k];
                    PartsOrderLinesResult polr = new PartsOrderLinesResult();
                    //pr.type = 'UPDATE';
                    
                    
                    
                    polr.partOrderLinebFOID =porderLineList[k].id;
                    polr.partOrderLinebFONumber = porderLineList[k].name;
                    polr.partOrderLineBOReference = porderLineList[k].BackOfficeReference__c;
                    polr.TECH_BOPartsOrderLineRecordId = porderLineList[k].TECH_BOPartsOrderLineRecordId__c;
                    
                    if(!sr.isSuccess())
                    {
                        polr.success = false;
                        
                        String Message ='';
                        for(Database.Error err : sr.getErrors()) {
                            Message= ' '+err.getFields()+' Error : '+err.getMessage();                              
                        }                            
                        polr.errorMessage = Message;
                    }
                    else{
                        polr.success = true;                
                    }
                    
                    if(pidPlineResults.containskey(porderLineList[k].SVMXC__RMA_Shipment_Order__c))
                    {
                        pidPlineResults.get(porderLineList[k].SVMXC__RMA_Shipment_Order__c).add(polr);
                    }
                    else{
                        
                        pidPlineResults.put(porderLineList[k].SVMXC__RMA_Shipment_Order__c, new List<PartsOrderLinesResult>{polr});
                    }
                    
                    plineResultMap.put(polr.partOrderLinebFOID, polr);
                    /*
                    for(PartsOrderResult pr: PartsOrderUnitList){
                    
                        if(pr.partOrderbFOID == porderLineList[k].SVMXC__RMA_Shipment_Order__c )
                        pr.PartsOrderLinesResults.add(polr);
                    
                    }*/
                    
                    
                }
                
            }
        
        }
        
        if(PartsOrderUnitList!= null && PartsOrderUnitList.size()>0){
            
            for(PartsOrderResult pr: PartsOrderUnitList){ 
                
                if(pidPlineResults.containskey(pr.partOrderbFOID))
                {
                    
                    List<PartsOrderLinesResult> plineResultsList = pidPlineResults.get(pr.partOrderbFOID);
                     pr.PartsOrderLinesResults.addAll(plineResultsList);
                }                              
                
                    
            }
            response.PartsOrderResults =PartsOrderUnitList;
        }
        else if(pidPlineResults != null && pidPlineResults.size()>0){
                List<SVMXC__RMA_Shipment_Order__c> poList =[ select id, name ,TECH_BOPartsOrderRecordId__c,TECH_BOLastUpdateTimestamp__c,SVMXC__Order_Status__c,Synchronization_log__c, BackOfficeReference__c FROM  SVMXC__RMA_Shipment_Order__c where id in :pidPlineResults.keySet()  ];
                    
                for(SVMXC__RMA_Shipment_Order__c poobj: poList){
                    PartsOrderResult pr = new PartsOrderResult();
                    List<PartsOrderLinesResult> PartsOrderLinesResults= new List<PartsOrderLinesResult>();
                    pr.PartsOrderLinesResults = pidPlineResults.get(poobj.id); 
                    //pr.type = 'UPDATE';                    
                    pr.partOrderbFOID =poobj.id;
                    pr.partOrderbFONumber = poobj.name;
                    pr.partOrderBOReference =poobj.BackOfficeReference__c;
                    pr.TECH_BOPartsOrderRecordId = poobj.TECH_BOPartsOrderRecordId__c;
                    PartsOrderUnitList.add(pr);
                }
            response.PartsOrderResults =PartsOrderUnitList;
        }
        
        
        

        return response;
     }

}