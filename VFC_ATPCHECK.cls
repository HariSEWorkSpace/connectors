public with sharing class VFC_ATPCHECK {

        public final SVMXC__Service_Order__c wo {get; set;}
        public list<PartsOrderLine> plist{get;set;}
        public List<string> spare_part_category= new List<string>(); 
        public Date latestAvailabilityDate {get; set;}
        public list<String> spc= new list<string>{'Stock','Non stock'};
        public final integer Count = 1; // System.label
        public Boolean isSuccess;
        Public Boolean isactive{get;set;}
        public Map<id,SVMXC__RMA_Shipment_Line__c> lineMap = new Map<id,SVMXC__RMA_Shipment_Line__c>();
    public String Referencesparepart = system.label.CLMAY15SRV03;
    public String NonReferencesparepart = system.label.CLMAY15SRV04;
    
        public Class PartsOrderLine{
        
            public Boolean checked {get; set;}
            public Id plid{get;set;}
            public Id pid{get;set;} 
            public String Message{get;set;}
            public String CalculatedplantName{get;set;} 
            public boolean isshow{get;set;}
            public Boolean isactive{get;set;}
            public id recordtypeid{get;set;}
            public string cstyle{get;set;}
           // public Date SVMXC__Expected_Ship_Date__c {get; set;}          
            public SVMXC__RMA_Shipment_Line__c pline{get; set;}
        
        }

    public VFC_ATPCHECK(ApexPages.StandardController controller) {
        List<Date> dlist = new List<Date>();
    
    Schema.DescribeSObjectResult dSobjres = Schema.SObjectType.SVMXC__RMA_Shipment_Order__c; 
        Map<String,Schema.RecordTypeInfo> PartOrderRecordTypeInfo = dSobjres.getRecordTypeInfosByName(); 
    String LineType ='';
            
        
        plist = new List<PartsOrderLine>();
       if(!Test.isRunningTest())
        controller.addFields(new List<String>{'BackOfficeReference__c','BackOfficeSystem__c','CountryOfBackOffice__c', 'EarliestAvailabilityDate__c','SVMXC__Order_Status__c'});
        this.wo = (SVMXC__Service_Order__c)controller.getRecord();
        this.latestAvailabilityDate = wo.EarliestAvailabilityDate__c;
        this.isSuccess = false;
    Id partsorderrtId ;
    Set<String> rtset = new Set<String>();
    
    rtset.add(Referencesparepart);
    rtset.add(NonReferencesparepart);
    /*
    if(wo.SVMXC__Order_Status__c =='Unscheduled' || wo.SVMXC__Order_Status__c =='Scheduled' || wo.SVMXC__Order_Status__c =='Customer Confirmed' || wo.SVMXC__Order_Status__c =='Acknowledge FSE' ||  wo.SVMXC__Order_Status__c =='WIP' )
    {    
      partsorderrtId = PartOrderRecordTypeInfo.get('Shipment').getRecordTypeId();
      LineType = 'Shipment';
    }
    else if(wo.SVMXC__Order_Status__c =='Service Complete'){
      partsorderrtId = PartOrderRecordTypeInfo.get('RMA').getRecordTypeId();
      LineType = 'RMA';
    }*/
    
        for(SVMXC__RMA_Shipment_Line__c line: [SELECT name,BOMaterialReference__c,SVMXC__Line_Type__c,Spare_part_category__c,SKU__c,SVMXC__Expected_Quantity2__c,SVMXC__RMA_Shipment_Order__c ,SVMXC__RMA_Shipment_Order__r.SVMXC__Order_Status__c,SVMXC__RMA_Shipment_Order__r.id,recordtypeid,
                                               SVMXC__RMA_Shipment_Order__r.Ship_to__r.Name, //Yassine B 19/05/2015 BR-7676
                                               SVMXC__Expected_Receipt_Date__c,Spare_part_description__c,Product_Reference__c,Storage_Location__c,UnitofMeasure__c,SVMXC__Product__r.SKU__c,
                                               SVMXC__Product__r.Description,SVMXC__Product__r.Name, SVMXC__Product__c,RequestedDate__c,Ship__r.name,plant_name__c,Spare_part_name__r.name,
                                               plant_name__r.id,plant_name__r.name,Lead_Date__c,SVMXC__Expected_Ship_Date__c,BackOfficeReference__c, Available_stock__c, Plant__c,calculated_plant__c,calculated_plant__r.Name,searchForRefurbished__c, Reason_For_New__c,Free_text_reference__c,Generic_reference__c FROM SVMXC__RMA_Shipment_Line__c WHERE SVMXC__Service_Order__c =: wo.Id and recordtypeid in :rtset and SVMXC__RMA_Shipment_Order__r.SVMXC__Order_Status__c='Open'  ]){
                                               
                                               
                dlist.add(line.SVMXC__Expected_Ship_Date__c);
                dlist.add(line.Lead_Date__c);                               
                                               
               PartsOrderLine pline = new PartsOrderLine();
               pline.checked  = false;
               if(line.recordtypeid == NonReferencesparepart){
               pline.isshow=false;
               pline.isactive=false;
               pline.cstyle ='mystyle';
               }
               else{
                pline.isshow=true;
                pline.cstyle ='tt';
               }
               pline.plid = line.id;
              // pline.recordtypeid='012A0000000nphY';
               pline.pid = line.SVMXC__RMA_Shipment_Order__c ;
               pline.pline = line;
               plist.add(pline);
               lineMap.put(line.id,line);
         
        
        }
            dlist.sort();
            if(dlist!=null&& dlist.size()>0)
            latestAvailabilityDate =dlist[dlist.size()-1];
            
    }
     List<WS_ATPCheck_MW.PartsOrderLineResult> response= new List<WS_ATPCheck_MW.PartsOrderLineResult>();
     public PageReference checkBackOffice() {
         List<Date> dlist = new List<Date>();
          Set<id> plidSet = new Set<id>();
        Set<id> pidSet = new Set<id>();
        List<WS_ATPCheck_MW.PartsOrder> porderList = new List<WS_ATPCheck_MW.PartsOrder>();
        Map<id,Set<id>> porderplineMap = new Map<id,Set<id>>();
        
        Boolean isValid = false;
        
        for(PartsOrderLine pl: plist){
            if(pl.checked  )
            {
                isValid  = true;
                
            }
        }
    
        if(isValid  ){
            for(PartsOrderLine pl: plist){
            
                if(pl.checked )
                {
                    //dlist.add(pl.pline.SVMXC__Expected_Ship_Date__c);
                    //dlist.add(pl.pline.Lead_Date__c);
                    if(porderplineMap.containskey(Pl.pid) )
                    {
                        porderplineMap.get(Pl.pid).add(Pl.plid);
                        
                    }
                    else{
                        Set<id> plineidSet = new Set<id>();
                        plineidSet.add(Pl.plid);
                        porderplineMap.put(Pl.pid,plineidSet);
                        
                    }
                    plidSet.add(Pl.plid );
                    pidSet.add(Pl.pid );
                }
            
            }
            //dlist.sort();
            //latestAvailabilityDate =dlist[dlist.size()-1];
            System.debug('\n Hari Log:'+plidSet);
            System.debug('\n Hari Log:'+pidSet);
            // Yassine B 19/05/2015 BR-7677 : Added more fields in QUERY
            List<SVMXC__RMA_Shipment_Order__c> parlist=[select  name,Ship_to__c,Ship_to__r.name, To_Name__c, Ship_to__r.Street__c, SVMXC__Destination_Street__c, Ship_to__r.ZipCode__c, SVMXC__Destination_Zip__c, Ship_to__r.City__c, SVMXC__Destination_City__c, Ship_to__r.Country__r.CountryCode__c, To_Country__r.CountryCode__c, Ship_to__r.StateProvince__r.StateProvinceCode__c, To_State__r.StateProvinceCode__c, Ship_to__r.LocalCity__c,Ship_to__r.AdditionalAddress__c,Ship_to__r.LocalAdditionalAddress__c,Ship_to__r.StreetLocalLang__c,Ship_to__r.AccountLocalName__c, SVMXC__Service_Order__c, SVMXC__Service_Order__r.BackOfficeReference__c from SVMXC__RMA_Shipment_Order__c where id in:pidSet];
            map<id,SVMXC__RMA_Shipment_Order__c> partsordermap= new map<id,SVMXC__RMA_Shipment_Order__c>();
            partsordermap.putall(parlist);
            
            System.debug('\n Hari Log:'+porderplineMap);
            for(Id pid: porderplineMap.keyset()){
                WS_ATPCheck_MW.Account  acc= new WS_ATPCheck_MW.Account();
                SVMXC__RMA_Shipment_Order__c prec = partsordermap.get(pid);
                       // Yassine B 19/05/2015 BR-7677   -- START
                      if(prec.Ship_to__c != null){ 
                           acc.name=prec.Ship_to__r.name;
                           //acc.bFOID = String.valueOf(prec.Ship_to__c);
                           acc.NameLocal=prec.Ship_to__r.AccountLocalName__c;
                           acc.Street=prec.Ship_to__r.Street__c;
                           acc.StreetLocal=prec.Ship_to__r.StreetLocalLang__c;
                           acc.AddAddressInfo=prec.Ship_to__r.AdditionalAddress__c;
                           acc.AddAddressInfoLocal=prec.Ship_to__r.LocalAdditionalAddress__c;
                           acc.ZipCode=prec.Ship_to__r.ZipCode__c;
                           acc.City=prec.Ship_to__r.City__c;
                           acc.LocalCity=prec.Ship_to__r.LocalCity__c;
                           acc.CountryCode=prec.Ship_to__r.Country__r.CountryCode__c;
                           acc.StateProvinceCode=prec.Ship_to__r.StateProvince__r.StateProvinceCode__c;
                           System.debug('\n Hari Log : Account '+acc);
                       }else{
                           acc.name=prec.To_Name__c;
                           acc.Street=prec.SVMXC__Destination_Street__c;
                           acc.ZipCode=prec.SVMXC__Destination_Zip__c;
                           acc.City=prec.SVMXC__Destination_Zip__c;
                           acc.CountryCode=prec.To_Country__r.CountryCode__c;
                           acc.StateProvinceCode=prec.To_State__r.StateProvinceCode__c;
                       }
                       // Yassine B 19/05/2015 BR-7677   -- END
                       WS_ATPCheck_MW.PartsOrder porder = new  WS_ATPCheck_MW.PartsOrder();
                        porder.partOrderbFOID =  String.valueOf(pid);
                        porder.shipToAccount = acc;
                        porder.WOBackOfficeReference = prec.SVMXC__Service_Order__r.BackOfficeReference__c;
                        System.debug('\n Hari Log : Parts Order '+porder );
                        List<WS_ATPCheck_MW.PartsOrderLine> PartsOrderLines = new List<WS_ATPCheck_MW.PartsOrderLine>();
                    for(id plid: porderplineMap.get(pid) ){
                    
                        WS_ATPCheck_MW.PartsOrderLine pline = new WS_ATPCheck_MW.PartsOrderLine();                
                        SVMXC__RMA_Shipment_Line__c sl = lineMap.get(plid);
                        
                        pline.partOrderLinebFOID = String.valueOf(sl.id);
                        pline.partOrderLinebFONumber=sl.name;
                        pline.partOrderLineType=sl.SVMXC__Line_Type__c;
                        pline.partOrderbFOID=String.valueOf(sl.SVMXC__RMA_Shipment_Order__c);
                        pline.sparePartbFOID=String.valueOf(sl.SVMXC__Product__c);
                        pline.FOSKUReference=sl.SKU__c;
                        pline.plantName=sl.Plant_Name__r.name;
                        
                        pline.expectedQuantity=Integer.valueOf(sl.SVMXC__Expected_Quantity2__c);
                        pline.unitOfMeasure=sl.UnitofMeasure__c;                    
                        pline.requestedDate= String.valueOf(sl.RequestedDate__c);
                        //pline.BOMaterialReference= sl.BOMaterialReference__c;
                        pline.searchForRefurbished = sl.searchForRefurbished__c;
                        PartsOrderLines.add(pline);                  
                        
                    }
                    porder.PartsOrderLine = PartsOrderLines ;
                    System.debug('\n Hari Log: parts order'+porder);
                porderList.add(porder);          
            }
           
            for(integer i=1;i<=Count; i++){
                
                if(!isSuccess)
                {
                    System.debug('\n ************************ Started *********************');
                    doProcess(porderList );
                }
                else{
                    break;
                }
                
            }
            
            System.debug('************'+response );
            if(isSuccess){
            
                Set<String> calculatedPlantSet = new Set<String>();
                
                If(response!=null){
          /*
          for(WS_ATPCheck_MW.PartsOrderLineResult res:response){
            
            for(PartsOrderLine pobj: plist){
              
               if(res.partOrderLinebFOID == String.valueOf(pobj.plid)){
                 if(res.calculatedPlant != null && res.calculatedPlant !='')
                calculatedPlantSet.add(res.calculatedPlant);
                // pobj.pline.calculated_plant__c = getPlantIDFromName(res.calculatedPlant);//TODO: query to be changed to have the query outside the for loop
                 pobj.pline.Available_stock__c = res.stockQuantity;
                 pobj.pline.Spare_part_category__c = res.sparePartCategory;
                 if(res.expectedShipDate!=null){
                  pobj.pline.SVMXC__Expected_Ship_Date__c = Date.valueOf(res.expectedShipDate);
                 }
                 if(res.LeadDate!=null && res.LeadDate != 0){
                  pobj.pline.Lead_Date__c = (pobj.pline.RequestedDate__c).addDays(res.LeadDate);                       
                 }else{
                   pobj.pline.Lead_Date__c = null;
                 }
                 pobj.pline.BOMaterialReference__c= res.BOMaterialReference;
                 pobj.Message = res.BOMessage;
                
                 //Adding dates to the list to be sorted later
                dlist.add(pobj.pline.SVMXC__Expected_Ship_Date__c);
                dlist.add(pobj.pline.Lead_Date__c);
              }
              
            }
          }*/
          for(PartsOrderLine pobj: plist){
            for(WS_ATPCheck_MW.PartsOrderLineResult res:response){
              if(res.partOrderLinebFOID == String.valueOf(pobj.plid)){
                System.debug('@@@@@@@@@@@@@@@@@@@@@@@@@@');
                
                 if(res.calculatedPlant != null && res.calculatedPlant !='')
                calculatedPlantSet.add(res.calculatedPlant);
                // pobj.pline.calculated_plant__c = getPlantIDFromName(res.calculatedPlant);//TODO: query to be changed to have the query outside the for loop
                 pobj.pline.Available_stock__c = res.stockQuantity;
                 pobj.pline.Spare_part_category__c = res.sparePartCategory;
                 if(res.expectedShipDate!=null){
                  pobj.pline.SVMXC__Expected_Ship_Date__c = Date.valueOf(res.expectedShipDate);
                 }
                 if(res.LeadDate!=null && res.LeadDate != 0){
                  pobj.pline.Lead_Date__c = (pobj.pline.RequestedDate__c).addDays(res.LeadDate);                       
                 }else{
                   pobj.pline.Lead_Date__c = null;
                 }
                 pobj.pline.BOMaterialReference__c= res.BOMaterialReference;
                 pobj.Message = res.BOMessage;
                
                 //Adding dates to the list to be sorted later
                System.debug('||||||||||||||||||||||||');
              }
            
            }  
            dlist.add(pobj.pline.SVMXC__Expected_Ship_Date__c);
            dlist.add(pobj.pline.Lead_Date__c);            
          
          }
        
        
              }
                
                if(calculatedPlantSet != null && calculatedPlantSet.size()>0)
                {
                    List<Plant__c>  plantList = [SELECT Id, name FROM Plant__c WHERE Name in : calculatedPlantSet ];
                    Map<String, Plant__c> plantMap = new Map<String,Plant__c>();
                    Map<id,Plant__c> ipPlantMap = new Map<id,Plant__c>();
                    for(Plant__c obj: plantList){
                        plantMap.put(obj.name,obj);
                        ipPlantMap.put(obj.id, obj);
                    }
                    
                    
                    for(WS_ATPCheck_MW.PartsOrderLineResult res:response){
                        
                        for(PartsOrderLine pobj: plist){
                            
                           if(res.partOrderLinebFOID == String.valueOf(pobj.plid)){
                                
                                if( res.calculatedPlant != null && res.calculatedPlant !='' && plantMap.containskey(res.calculatedPlant)){
                                    // pobj.pline.calculated_plant__c = getPlantIDFromName(res.calculatedPlant);//TODO: query to be changed to have the query outside the for loop
                                    pobj.pline.calculated_plant__c = plantMap.get(res.calculatedPlant).id;
                                    pobj.CalculatedplantName = plantMap.get(res.calculatedPlant).name;
                                }
                                
                            }
                            
                        }
                    }
                
                }
                //Yassine.B 10/04/2015 - Refresh the LastetAvailabilty Date 
                dlist.sort();
                latestAvailabilityDate =dlist[dlist.size()-1];
                System.debug('Dates list'+dlist);
                System.debug('Latest date'+latestAvailabilityDate);
                isSuccess = false;
            }
        }
        else{
        
             ApexPages.addMessage(new ApexPages.message(ApexPages.severity.error,'Please select at least one Parts Order Line'));
        }
        return null ;
     
     
     
     }
     public void doProcess(List<WS_ATPCheck_MW.PartsOrder> porder){
        try{            
                WS_ATPCheck_MW.WS_ATPCheck  service = new WS_ATPCheck_MW.WS_ATPCheck();
                    Utils_SDF_Methodology.startTimer();
                    Utils_SDF_Methodology.log('Request: ', porder+'');
                    System.debug('************'+porder);
                    response =  service.checkPartsAvailability(this.wo.CountryOfBackOffice__c,this.wo.BackOfficeSystem__c,porder);
                    System.debug('************'+response );
                    Utils_SDF_Methodology.log('Response : ', response+'');
                    Utils_SDF_Methodology.stopTimer();
                    if(response != null)
                        isSuccess  = true;
                    else
                        isSuccess = false;
            
            }
            catch(Exception ex){
                isSuccess = false;
                if(ex.getMessage() == 'IO Exception: Read timed out'){
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.error,'Timed out request, please try again...'));
                }
                else{
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.error, ex.getMessage()));
                }
                
            }
        
    }
    
    Public Plant__c  getPlantIDFromName(String aPlantName){
        Plant__c  result = null;
        if(aPlantName != null){ 
            Plant__c p = [SELECT Id, name FROM Plant__c WHERE Name = :aPlantName LIMIT 1];
            if (p != null) {
                result = p;
            }
        }
        return result;      
    }  
    
    public Boolean getIsOracleSystem(){
        return this.wo.BackOfficeSystem__c == Label.CLAPR15SRV54;
    }
    
    public PageReference save(){
    
        
        List<SVMXC__RMA_Shipment_Line__c> plinelist = new List<SVMXC__RMA_Shipment_Line__c>();
        for(PartsOrderLine pobj: plist){
            if(pobj.checked){
                plinelist.add(pobj.pline);
            }
            
                    
        }
        try{
            //Updating Part Order Lines
            update plinelist;
            
            //Updating WO (Earliest Availbality Date)
            wo.EarliestAvailabilityDate__c = latestAvailabilityDate;
            update wo;
            
            PageReference scPage = new PageReference('/' + wo.Id);
            scPage.setRedirect(true);
            return scPage;
        }
        catch(Exception ex){
        
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.error,ex.getMessage()));        
            return null;
        
        }
    
      
    }
    
     public PageReference cancel()
     {
     
     PageReference scPage = new PageReference('/' + wo.Id);
        scPage.setRedirect(true);
        return scPage; 
     }

}