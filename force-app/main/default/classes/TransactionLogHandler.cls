public class TransactionLogHandler {
    public static void doHandleException(System.Exception ex , String processname){
        //TransactionLogHandler.doHandleException()
        Error_Log__c transactionLog = new Error_Log__c(
        Log_Details__c = ex.getStackTraceString() + '<br/> <strong> Message is </strong>' + ex.getMessage() + '<br/>' 
                       + ex.getCause() + '<br/>' + ex.getTypeName() + '<br/>' + ex.getLineNumber(),
        Lod_DateTime__c = System.now(),
        Process_Name__c = processname
        );
        insert transactionLog;
    }
    public static void doHandleExceptionWithError(String errors, String processname){
        Error_Log__c transactionLog = new Error_Log__c(
        Log_Details__c = errors,
        Lod_DateTime__c = System.now(),
        Process_Name__c = processname
        );
        insert transactionLog;
    }
}
/*
 try{
    integer i = 10/0;
}
catch(System.Exception ex ){
    TransactionLogHandler.doHandleException(ex,'Developer Console');
}
 */