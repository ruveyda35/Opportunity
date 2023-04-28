  public static void deleteWonOpp(List<Opportunity> newList){
        for(Opportunity opp:newList){
            if(opp.StageName =='Closed Won' ){
              opp.addError('Lardes hazır opp kazanmışsın neden silinyon ki');  
            }   
        }
        for(Opportunity opp:newList){
            opp.Description ='Bu Account '+ UserInfo.getName()+ ' tarafından '+system.today()+ ' de geri yuklendi'
                 ;
        }}
    
    public static void changeStageOpp(List<Opportunity> newList, Map<id, Opportunity> mpOpp){
     //perevent users to change the stageName if stageName ='Closed Won ||
//Closed Lost'
/*Map<id, Opportunity> opList = trigger.oldMap;
 for(Opportunity op: trigger.new){
 boolean newStg = (op.StageName =='Closed Won' || op.StageName =='Closed Lost');
 boolean oldStg = (opList.get(op.id).StageName =='Closed Won' || opList.get(op.id).StageName =='Closed Lost');
                   if(!newStg && oldStg){
                   op.StageName.addError('Degitirilemez');    
                   } } */
        //2.Way
   /* for(Opportunity op: newList){
        for(Opportunity opr:mpOpp){
            if(op.id== opr.id){
            if( (opr.StageName=='Closed Won' || opr.StageName=='Closed Won')){
                if(opr.StageName!=op.StageName){
                    op.StageName.addError('Degistiremezsin');
               } }  } 
          } */    
           
    }   
    