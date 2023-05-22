/*
DELETE FROM EL_APP   WHERE APP_ID = 'ElService';

DELETE FROM EL_SVC_MENU WHERE APP_ID = 'ElService';

DELETE FROM EL_APP_CMT_DEPL   WHERE APP_ID = 'ElService';

DELETE FROM EL_APP_CMT_DEPL_PARAM   WHERE APP_ID = 'ElService';

DELETE FROM EL_RSC   WHERE APP_ID = 'ElService';

DELETE FROM EL_NOTIFY WHERE APP_ID = 'ElService';

DELETE FROM EL_SVC_AUTH WHERE APP_ID = 'ElService';

DELETE FROM EL_SVC_CTR WHERE APP_ID = 'ElService';

DELETE FROM EL_SVC_GROUP_TREE WHERE APP_ID = 'ElService';

DELETE FROM EL_SVC_GROUP WHERE APP_ID = 'ElService';

DELETE FROM EL_SVC WHERE APP_ID = 'ElService';

DELETE FROM EL_SYS_PROP WHERE APP_ID = 'ElService';

DELETE FROM EL_MENU_AUTH WHERE APP_ID = 'ElService';

DELETE FROM EL_USER WHERE APP_ID = 'ElService';

DELETE FROM EL_USER_GROUP WHERE APP_ID = 'ElService';

DELETE FROM EL_MENU WHERE APP_ID = 'ElService';

DELETE FROM EL_MENU_GROUP WHERE APP_ID = 'ElService';

COMMIT;
*/


/* EL_APP information below needs to be modified according to the system situation */  
Insert into EL_APP
   (APP_ID, APP_NAME, APP_ORDER, JAVA_HOME, JAVAC_OPTION, 
    APP_JAR_DIR, APP_CLASS_PATH)
 Values
   ('ElService', 'ElService_WebApplication', 100, '/opt/jdk-11.0.15-ojdkbuild-linux-x64', '-encoding UTF-8 -g', 
    '/home/proworks/context/ElService/WEB-INF/lib:/home/proworks/context/ElService/WEB-INF/lib-provided', '/home/proworks/context/ElService/WEB-INF/classes');
   
/* EL_APP_CMT_DEEPL information below needs to be modified to suit the system situation - at least one basic copy distribution is required */
Insert into EL_APP_CMT_DEPL
   (APP_ID, APP_DEPL_ID, APP_DEPL_GBN, APP_DEPL_NAME, APP_DEPL_CLASS, 
    APP_DEPL_YN, DEPL_SRC_PATH, DEPL_RES_PATH, DEPL_CLS_PATH, DEPL_WEB_PATH)
 Values
   ('ElService', 'ElService_node1', 'DEV', 'ElService_WebApplication_BasicNode', 'com.inswave.elfw.deploy.DefaultDeployCopyAdapter', 
    'Y', '/home/proworks/resources/ElService', '/home/proworks/context/ElService/WEB-INF/classes', '/home/proworks/context/ElService/WEB-INF/classes', '/home/proworks/context/ElService');
    
   
COMMIT;

Insert into EL_NOTIFY
   (APP_ID, SERVER_NO, NOTIFY_BASE_URL, USED_YN, SERVER_ID)
 Values
   ('ElService', 1, 'http://192.168.56.101:8280/ElService', 'Y', 'ElService');



Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'SERVER_MODE', 'Server mode', 'DEV', 'Server mode (DEV, RUN) - In the case of development mode, the validator is reflected in real time', 100);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'CONTROLLER_VALIDATOR_USE_YN', 'Validator Enabled Status', 'Y', 'Validator Enabled Status (Y/N)', 300);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_FACTORY_IMPL', 'App Log Implementation Class', 'com.inswave.elfw.log.DefaultApplicationLogFactoryImpl', 'Log Factory Implementation (customizable)');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_DIR', 'Save App Log to', '/home/proworks/logs/ElService', 'Location of log files', 210);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_SEND_TARGET_LOGGER_NAME', 'Name to send outside App log', 'elfw.appLogger', 'Name to send AppLog to external Appender - Do not send when it does not exist');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_APPEND_LOGGERS', 'External logger name to add to APP log', 'External logger to be imported (separated by,) - specifies the level after the logger if the setting of the external logger is forced to be changed. ex) java.sql:ERROR');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'LOG4J_LOADING_BASE_FILE', 'Log4j file name to load', 'log4j.xml', 'Log4xml to load - Must be immediately in class path');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'USER_HEADER_CLASS_NAME', 'User Header Implementation Class Name', 'com.inswave.elservice.cmmn.ElserviceUserHeader', 'User Header Class Name');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'LOGIN_ADAPTER_CLASS_NAME', 'Login Adapter Implementation Class Name', 'com.inswave.elservice.cmmn.ElserviceLoginAdapter', 'Login Adapter Class Name');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SESSION_ADAPTER_CLASS_NAME', 'Session Adapter Implementation Class Name', 'com.inswave.elfw.session.HttpSessionAdapter', 'Storage adapter class name for session');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SESSION_DATA_ADAPTER_CLASS_NAME', 'Session data adapter implementation class name', 'com.inswave.elservice.cmmn.ElserviceSessionDataAdapter', 'Data adapter class name to save to session');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'HEADER_SET_ADAPTER_CLASS_NAME', 'Header setting adapter implementation class name', 'com.inswave.elservice.cmmn.ElserviceUserHeaderSetAdapter', 'Header Settings Adapter Class Name');
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'OUTPUT_XML_DATA_SERVICE_YN', 'XML I/O Enabled Status', 'Y', 'XML Output Service Full Preferences', 330);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'OUTPUT_JSON_DATA_SERVICE_YN', 'JSON I/O use status', 'Y', 'JSON Output Service Full Preferences', 340);

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'OUTPUT_FLD_DATA_SERVICE_YN', 'FLD I/O use status', 'Y', 'FLD I/O use status', 350);
   
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'INPUT_XML_RESOLVER_ADAPTER_CLASS_NAME', 'XML I/O Implementer Class Name', 'com.inswave.elfw.resolver.DefaultXmlAgumentResolverAdapter', 'If it exists, input is received as xml data instead of Http Request during XML OUT service (Receive as text in the data field of the requst parameter.)');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'INPUT_JSON_RESOLVER_ADAPTER_CLASS_NAME', 'JSON I/O Implementer Class Name', 'com.inswave.elfw.resolver.DefaultJsonAgumentResolverAdapter', 'If it exists, input is received as json data instead of Http Request during JSON OUT service (Receive as text in the data field of the requst parameter.)');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'AUTH_CHECK_YN', 'Full authority check use status', 'N', 'Check the authority of the entire controller', 310);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'SESSION_CHECK_YN', 'Full session check enabled status', 'Y', 'Check the entire controller session', 320);

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'FRAMEWORK_FORCE_SESSION_CHECK_YN', 'Framework Forced Session Check Status', 'Y', 'Framework Forced Session Check Status', 321);
    
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'AUTH_ADAPTER_CLASS_NAME', 'Authority Check Implementation Class Name', 'com.inswave.elfw.auth.DefaultAuthAdapter', 'Adapter class name responsible for authority');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SCRN_AUTH_ADAPTER_CLASS_NAME', 'Screen authority check implementation class name', 'com.inswave.elfw.auth.DefaultScrnAuthAdapter', 'Adapter class name responsible for screen authority');
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SCRN_ID_ADAPTER_CLASS_NAME', 'Screen ID Implementer Class Name', 'com.inswave.elfw.auth.DefaultScrnIdAdapter', 'Screen ID Name of adapter class responsible for');
   
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_LEVEL', 'App log level', 'DEBUG', 'Log level (set app log only) - For external loggers, follow the settings of external loggers', 230);

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SPRING_CONFIG_BASE_CLASSPATH', 'Spring settings file location', 'inswave/spring', 'Location of spring setting file (used by Validator Manager)');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'SQL_LOG_LINE_FEED_YN', 'SQL Log Wrap use Status', 'Y', 'SQL Log Wrap Status', 250);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'SQL_WRITE_LOG_LEVEL', 'Log level at which to write SQL', 'DEBUG', 'Log level to log SQL statements (DEBUG, OFF) - Default is DEBUG', 240);
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_WRITE_YN', 'Log logging status', 'Y', 
    'Log History Status (Y/N) - Default is Y', 235);   
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SYSTEM_HANDLE_CLASS_NAME', 'System pre/post implementation class name', 'com.inswave.elservice.cmmn.ElserviceSystemHandleAdapter', 'Adapter class name for system pre/post');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'SERVICE_USER_CONTROL_CLASS_NAME', 'Service Control Implementation Class Name', 'com.inswave.elfw.intercept.service.DefaultElServiceUserControlAdapter', 'Custom Service Control Adapter Class Name');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'TEST_SERVICE_RUN_YN', 'Test service operational status for testing', 'Y', 'Test service operation status for testing (Y/N)');
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'INPUT_XFORM_RESOLVER_ADAPTER_CLASS_NAME', 'XFORM input implementation class name', 'X-Internet Input Adapter');
   
    
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'SCM_CLIENT_CLASS_NAME', 'SCM Link Implementation Class Name', 'com.inswave.elfw.scm.SvnClientHandleAdapter', 'SCM Associated Adapters', 410);
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'PROJECT_SOURCE_SVN_URL', 'SCM SVN URL', '', 'SCM SVN URL (specified to the location where the corresponding Java source is located), and the file is saved to the specified location, which is used as the project source location for source analysis', 420);
   
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'PROJECT_SOURCE_SVN_USER', 'SCM SVN USER', '', 'SCM SVN USER',430);
   

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'PROJECT_SOURCE_SVN_PASS', 'SCM SVN Password', '', 'SCM SVN Password', 440);
   

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC,SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'APPLICATION_LOG_SIZE', 'App log size', '100M', 'Log File Size',245);

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'SCRN_AUTH_CACHE_SIZE', 'Screen authority information cache size', '10000', 'Screen authority information cache size', 300);
   
     
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'DEFAULT_LOG_FORMATTER_NAME', 'Log formatter implementation class name', 'com.inswave.elfw.log.DefaultAppFormatter', 
    'Log Formatter Implementation Class Name - AppLogFormatter Extended Implementation');

    
COMMIT;

/* Add 20190608 */
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOG_USE_YN', 'Image Log Use Status', 'N', 
    'Image Log Use Status', 300);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOG_QUEUE_SIZE', 'Image Log Queue Size', '10', 
    'Image Log Queue Size', 301);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOG_TIMER_SEC', 'Image Log Timer time in seconds', '30', 
    'Image Log Timer time in seconds', 302);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOG_QUEUE_WARN_SIZE', 'Image Log Queue Warning Size', '0', 
    'Image Log Queue Warning Size - 0 Does Not Work', 303);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOG_QUEUE_ERROR_SIZE', 'Image Log Queue Error Size', '0', 
    'Image Log Queue error Size - 0 does not work', 304);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOG_PROCESS_CLS_NAME', 'Image Log Implementation Class', 'com.inswave.elfw.log.img.DefaultDBImageLogProcess', 
    'Image Log Implementation Class', 305);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'IMAGE_LOGGER_CLS_NAME', 'Image logger implementation class', 'com.inswave.elfw.log.img.DefaultDBImageLogger', 
    'Image logger implementation class - ElAbstractDBIimageLogger must be extended and implemented', 306);

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'CONTROLLER_TIME_OUT', 'Controller timeout global setting ms', '0', 
    'Controller timeout global setting unit: ms (does not work if -1)', 260);
       
INSERT INTO EL_SYS_PROP 
  ( APP_ID ,SYS_GROUP_ID ,SYS_KEY ,SYS_SUB ,SYS_VAL ,SYS_DESC ,SORT_SEQ )  
values  
  ( 'ElService' ,'EL_CORE_PROP' ,'CRYPTO_CASS_NAME' ,'Encryption Implementation Class' ,'' ,'The encryption implementation class is used to implement the abstract class of the framework, ElAbstractCrypto, and each method of getEncrypt and getDecrypt is implemented' ,270 ) ;

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'FRAMEWORK_LOGIN_CHECK_YN', 'Framework Account ID Login Check Status', 'N', 'Framework account ID login check status (Y/N), when set to N, authority check status must be false', 310);
   
COMMIT;
/* Add 20190608 */

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_AUTH_CD', 'A', 'All authority', 'All', 'All authority', 10);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_AUTH_CD', 'P', 'Output authority', 'Output', 'Output authority', 30);
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_AUTH_CD', 'R', 'Reading authority', 'Reading', 'Reading authority', 20);
COMMIT;


/* Add 20200312 */
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_HEALTH_DB_CHECK_QUERY', 'DB Heal Check Query', '', 
    'DB Heal Check Query - Oracle : SELECT 1 as msg FROM DUAL', 500);
COMMIT;



Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'FLD_SERVICE_DB_BASE_YN', 'Default options for adding EL_SVC fields', 'Y', 
    'Option preference by adding EL_SVC table field - New site application required');
COMMIT;    

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_SERVICE_RETURN_VO_USED_YN', 'Controller Return VO Support Status', 'Y', 
    'Controller Return VO Support Status');
COMMIT;

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'OPEN_API_HANDLE_CLASS_NAME', 'Open API Handle Implementation Class', '', 
    'Open API Handle Implementation Class', 311);

Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_SERVICE_BASE_LOG_USE_YN', 'Log use Status by Service', 'N', 
    'Log use Status by Service - Apply to Development Servers Only', 236);
COMMIT;

INSERT INTO EL_SYS_PROP  ( APP_ID ,SYS_GROUP_ID ,SYS_KEY ,SYS_SUB ,SYS_VAL ,SYS_DESC ,SORT_SEQ )  
values  
( 'ElService' ,'EL_CORE_PROP' ,'SVC_INFO_BASE_URL' ,'Base Url for service entry and exit information' 
,'http://192.168.56.101:8280/ElService' ,'Base Url for service entry and exit information' ,300 ) ;
COMMIT;


Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_HTTP_BODY_ALWAYS', 'Always use HttpBody mode only', 'Y', 
    'Always use HttpBody mode only', 390);
 COMMIT;
 

 Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC)
 Values
   ('ElService', 'EL_CORE_PROP', 'QUERY_TIMEOUT_FOR_SVC_TIMEOUT', 'Query timeout setting status for service timeout', 'N', 
    'Query timeout setting status for service timeout');
 COMMIT;

/* 20210630 */
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_JSON_PROPERTY_NAMING_STRATEGY_CLASS_NAME', 'Class name implementation for applying rules for VO binding at UI request/response Json', 'com.inswave.elfw.databind.DefaultPropertyNamingStrategy', 
    'Use Json Transformation Field Name Class Name Annotation - com.inswave.elfw.databind.DefaultPropertyNamingStrategy', 350);


Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_INPUT_JSON_FAIL_ON_UNKNOWN_PROPERTIES_YN', 'Item error check status not defined in VO at UI Json request', 'N', 
    'Item error check status not defined in VO at UI Json request', 350);

/* 20220224 */
Insert into EL_SYS_PROP
   (APP_ID, SYS_GROUP_ID, SYS_KEY, SYS_SUB, SYS_VAL, 
    SYS_DESC, SORT_SEQ)
 Values
   ('ElService', 'EL_CORE_PROP', 'EL_CTRL_NO_PARAM_NORMAL_DATA_YN', 'Data Status in Normal Format Without Controller Parameters', 'N', 
    'Data status in normal format if no controller parameters are present: Data part lowered if default is N - Previous site compatibility', 400);
    
COMMIT;
 
INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'CmmLogin' ,'com.inswave.elservice.emp.web.EmpController' ,
		'login(com.inswave.elservice.emp.vo.LoginVo,javax.servlet.http.HttpServletRequest)' ,
		'Login' ,'Log in' ,'N' ,
		'CmmLogin' ,'com.inswave.elservice.emp.vo.LoginVo' ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'CmmLoginFrm' ,'com.inswave.elservice.emp.web.EmpController' ,
		'loginFrm(com.inswave.elservice.emp.vo.LoginVo,javax.servlet.http.HttpServletRequest)' ,
		'Login Form' ,'Load the login form page' ,'N' ,
		'CmmLoginFrm' ,'com.inswave.elservice.emp.vo.LoginVo' ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpDel' ,'com.inswave.elservice.emp.web.EmpController' ,
		'deleteEmp(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Employee information deletion' ,'Delete employee information' ,'N' ,
		'DmoEmpDel' ,'com.inswave.elservice.emp.vo.EmpVo' ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpDown' ,'com.inswave.elservice.emp.web.EmpController' ,
		'downEmpFile(com.inswave.elservice.emp.vo.EmpVo,javax.servlet.http.HttpServletResponse)' ,
		'File Download' ,'Download the employee information file' ,'N' ,
		'DmoEmpDown' ,'com.inswave.elservice.emp.vo.EmpVo' ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpIns' ,'com.inswave.elservice.emp.web.EmpController' ,
		'addEmp(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Employee registration' ,'Register employee information' ,'N' ,
		'DmoEmpIns' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.DeptListVo' ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpList' ,'com.inswave.elservice.emp.web.EmpController' ,
		'selectEmpList(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Employee list search' ,'Search the employee list by paging' ,'N' ,
		'DmoEmpList' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.EmpListVo' ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpSelect' ,'com.inswave.elservice.emp.web.EmpController' ,
		'selectEmpView(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Detailed employee information search (for TCP internal testing)' ,'Detailed employee information search (for TCP internal testing)' ,'N' ,
		'DmoEmpSelect' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.EmpVo' ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpUpd' ,'com.inswave.elservice.emp.web.EmpController' ,
		'updateEmp(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Update employee list' ,'Update employee information' ,'N' ,
		null ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.DeptListVo' ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpUpdView' ,'com.inswave.elservice.emp.web.EmpController' ,
		'updateEmpView(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Search for Employee Information Update Form' ,'Search for employee information update form' ,'N' ,
		'DmoEmpUpdView' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.EmpListVo' ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpUpdateUploadEmpFile' ,'com.inswave.elservice.emp.web.EmpController' ,
		'updateUploadEmpFile(javax.servlet.http.HttpServletRequest,com.inswave.elservice.emp.vo.EmpVo,org.springframework.ui.Model)' ,
		'Modify File Upload' ,'Modify the file upload' ,'N' ,
		'DmoEmpUpdateUploadEmpFile' ,'com.inswave.elservice.emp.vo.EmpVo' ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpUploadEmpFile' ,'com.inswave.elservice.emp.web.EmpController' ,
		'uploadEmpFileToDb(javax.servlet.http.HttpServletRequest,com.inswave.elservice.emp.vo.EmpVo,org.springframework.ui.Model)' ,
		'Upload File' ,'Upload a file' ,'N' ,
		'DmoEmpUploadEmpFile' ,'com.inswave.elservice.emp.vo.EmpVo' ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpView' ,'com.inswave.elservice.emp.web.EmpController' ,
		'addEmpView(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Search for Employee Registration Form' ,'Search for the employee registration form' ,'N' ,
		'DmoEmpView' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.DeptListVo' ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoTcpSendTest' ,'com.inswave.elservice.emp.web.EmpController' ,
		'tcpSendTest(com.inswave.elservice.emp.vo.EmpVo)' ,
		'TCP Send Test' ,'Test TCP Send' ,'N' ,
		'DmoTcpSendTest' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.EmpVo' ) ;


INSERT INTO EL_SVC_CTR 
	( APP_ID ,SVC_ID ,AUTH_CHECK_YN ,SESSION_CHECK_YN ,XML_SVC_YN ,JSON_SVC_YN ,
		LOCK_YN ,ENABLE_START_TIME ,ENABLE_END_TIME ,SVC_PRE_POST_CLASS ,LOG_LEVEL ,
		FLD_SVC_YN ,SVC_TIME_OUT ,SVC_THREAD_MAX ,OPEN_API_USE_YN )  
VALUES  
	( 'ElService' ,'CmmLogin' ,null ,'N' ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ) ;

INSERT INTO EL_SVC_CTR 
	( APP_ID ,SVC_ID ,AUTH_CHECK_YN ,SESSION_CHECK_YN ,XML_SVC_YN ,JSON_SVC_YN ,
		LOCK_YN ,ENABLE_START_TIME ,ENABLE_END_TIME ,SVC_PRE_POST_CLASS ,LOG_LEVEL ,
		FLD_SVC_YN ,SVC_TIME_OUT ,SVC_THREAD_MAX ,OPEN_API_USE_YN )  
VALUES  
	( 'ElService' ,'CmmLoginFrm' ,null ,'N' ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ) ;

INSERT INTO EL_SVC_CTR 
	( APP_ID ,SVC_ID ,AUTH_CHECK_YN ,SESSION_CHECK_YN ,XML_SVC_YN ,JSON_SVC_YN ,
		LOCK_YN ,ENABLE_START_TIME ,ENABLE_END_TIME ,SVC_PRE_POST_CLASS ,LOG_LEVEL ,
		FLD_SVC_YN ,SVC_TIME_OUT ,SVC_THREAD_MAX ,OPEN_API_USE_YN )  
VALUES  
	( 'ElService' ,'DmoEmpSelect' ,null ,'N' ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ) ;

INSERT INTO EL_SVC_CTR 
	( APP_ID ,SVC_ID ,AUTH_CHECK_YN ,SESSION_CHECK_YN ,XML_SVC_YN ,JSON_SVC_YN ,
		LOCK_YN ,ENABLE_START_TIME ,ENABLE_END_TIME ,SVC_PRE_POST_CLASS ,LOG_LEVEL ,
		FLD_SVC_YN ,SVC_TIME_OUT ,SVC_THREAD_MAX ,OPEN_API_USE_YN )  
VALUES  
	( 'ElService' ,'DmoTcpSendTest' ,null ,'N' ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ,null ) ;

INSERT INTO EL_SVC 
	( APP_ID ,SVC_ID ,CLASS_NM ,METHOD_NM ,SVC_SUB ,SVC_DESC ,DEL_YN ,REQ_URL ,IN_INF_ID ,OUT_INF_ID )  
VALUES  
	( 'ElService' ,'DmoEmpUpdViewJsp' ,'com.inswave.elservice.emp.web.EmpController' ,
		'updateEmpViewJsp(com.inswave.elservice.emp.vo.EmpVo)' ,
		'Search for Employee Information Update JSP Form' ,'Search for Employee Information Update JSP form' ,'N' ,
		'DmoEmpUpdView' ,'com.inswave.elservice.emp.vo.EmpVo' ,'com.inswave.elservice.emp.vo.EmpListVo' ) ;
		
COMMIT;
