Adding the suffix YR1 to all variable names using Teds and then Barts tools                                                            
                                                                                                                                       
github                                                                                                                                 
https://tinyurl.com/yxpvkyt6                                                                                                           
https://github.com/rogerjdeangelis/utl-adding-a-suffix-YR1-to-all-variable-names-using-Teds-abd-then-Barts-array-tools-                
                                                                                                                                       
SAS Forum                                                                                                                              
https://communities.sas.com/t5/SAS-Programming/Rename-all-variables/m-p/500828#M133408                                                 
                                                                                                                                       
                                                                                                                                       
 ProbleM: Add suffix '_yr1' to the end of all variable names                                                                           
                                                                                                                                       
                                                                                                                                       
   Two Solutions (These are very powerful tools)                                                                                       
                                                                                                                                       
       a. Using Ted                                                                                                                    
          Ted Clay tclay@ashlandhome.net                                                                                               
                                                                                                                                       
       b. Using Bart's Package                                                                                                         
          Expands on Ted's tool. Adding datastep functionality more easily                                                             
          Bartosz Jablonski                                                                                                            
          yabwon@gmail.com                                                                                                             
                                                                                                                                       
       Both packages have many applications.                                                                                           
                                                                                                                                       
*                _                                                                                                                     
_)_ __  _ __  _   _| |_                                                                                                                
 | `_ \| `_ \| | | | __|                                                                                                               
 | | | | |_) | |_| | |_                                                                                                                
_|_| |_| .__/ \__,_|\__|                                                                                                               
       |_|                                                                                                                             
/                                                                                                                                      
                                                                                                                                       
                                                                                                                                       
ata cars;                                                                                                                              
set sashelp.cars;                                                                                                                      
un;quit;                                                                                                                               
                                                                                                                                       
                                                                                                                                       
Variable       Type    Len                                                                                                             
                                                                                                                                       
MAKE           Char     13                                                                                                             
MODEL          Char     40                                                                                                             
TYPE           Char      8                                                                                                             
ORIGIN         Char      6                                                                                                             
DRIVETRAIN     Char      5                                                                                                             
MSRP           Num       8                                                                                                             
INVOICE        Num       8                                                                                                             
ENGINESIZE     Num       8                                                                                                             
CYLINDERS      Num       8                                                                                                             
HORSEPOWER     Num       8                                                                                                             
MPG_CITY       Num       8                                                                                                             
MPG_HIGHWAY    Num       8                                                                                                             
WEIGHT         Num       8                                                                                                             
WHEELBASE      Num       8                                                                                                             
LENGTH         Num       8                                                                                                             
                                                                                                                                       
*           _               _                                                                                                          
 ___  _   _| |_ _ __  _   _| |_                                                                                                        
/ _ \| | | | __| `_ \| | | | __|                                                                                                       
 (_) | |_| | |_| |_) | |_| | |_                                                                                                        
\___/ \__,_|\__| .__/ \__,_|\__|                                                                                                       
               |_|                                                                                                                     
/                                                                                                                                      
                                                                                                                                       
ariable           Type    Len                                                                                                          
                                                                                                                                       
YLINDERS_YR1      Num       8                                                                                                          
RIVETRAIN_YR1     Char      5                                                                                                          
NGINESIZE_YR1     Num       8                                                                                                          
ORSEPOWER_YR1     Num       8                                                                                                          
NVOICE_YR1        Num       8                                                                                                          
ENGTH_YR1         Num       8                                                                                                          
AKE_YR1           Char     13                                                                                                          
ODEL_YR1          Char     40                                                                                                          
PG_CITY_YR1       Num       8                                                                                                          
PG_HIGHWAY_YR1    Num       8                                                                                                          
SRP_YR1           Num       8                                                                                                          
RIGIN_YR1         Char      6                                                                                                          
YPE_YR1           Char      8                                                                                                          
EIGHT_YR1         Num       8                                                                                                          
HEELBASE_YR1      Num       8                                                                                                          
                                                                                                                                       
*         _       _   _                                                                                                                
___  ___ | |_   _| |_(_) ___  _ __  ___                                                                                                
 __|/ _ \| | | | | __| |/ _ \| `_ \/ __|                                                                                               
__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                                               
___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                                               
_____        _                                                                                                                         
_   _|__  __| |                                                                                                                        
 | |/ _ \/ _` |                                                                                                                        
 | |  __/ (_| |                                                                                                                        
 |_|\___|\__,_|                                                                                                                        
                                                                                                                                       
/                                                                                                                                      
                                                                                                                                       
data cars;                                                                                                                             
 set sashelp.cars;                                                                                                                     
run;quit;                                                                                                                              
                                                                                                                                       
%array(cars,values=%varlist(cars));                                                                                                    
                                                                                                                                       
proc datasets lib=work;                                                                                                                
  modify cars;                                                                                                                         
  rename                                                                                                                               
     %do_over(cars,phrase=%str(                                                                                                        
            ?cars = ?cars_YR1                                                                                                          
     ));                                                                                                                               
run;quit;                                                                                                                              
                                                                                                                                       
NOTE: Renaming variable Make to Make_YR1.                                                                                              
NOTE: Renaming variable Model to Model_YR1.                                                                                            
NOTE: Renaming variable Type to Type_YR1.                                                                                              
NOTE: Renaming variable Origin to Origin_YR1.                                                                                          
NOTE: Renaming variable DriveTrain to DriveTrain_YR1.                                                                                  
NOTE: Renaming variable MSRP to MSRP_YR1.                                                                                              
NOTE: Renaming variable Invoice to Invoice_YR1.                                                                                        
NOTE: Renaming variable EngineSize to EngineSize_YR1.                                                                                  
NOTE: Renaming variable Cylinders to Cylinders_YR1.                                                                                    
NOTE: Renaming variable Horsepower to Horsepower_YR1.                                                                                  
NOTE: Renaming variable MPG_City to MPG_City_YR1.                                                                                      
NOTE: Renaming variable MPG_Highway to MPG_Highway_YR1.                                                                                
NOTE: Renaming variable Weight to Weight_YR1.                                                                                          
NOTE: Renaming variable Wheelbase to Wheelbase_YR1.                                                                                    
NOTE: Renaming variable Length to Length_YR1.                                                                                          
                                                                                                                                       
*___             _                                                                                                                     
 __ )  __ _ _ __| |_                                                                                                                   
  _ \ / _` | `__| __|                                                                                                                  
 |_) | (_| | |  | |_                                                                                                                   
____/ \__,_|_|   \__|                                                                                                                  
                                                                                                                                       
/                                                                                                                                      
                                                                                                                                       
ptions sasautos=("c:/temp");                                                                                                           
                                                                                                                                       
* code */                                                                                                                              
ilename packages "%sysfunc(pathname(work))"; /* setup temporary directory for packages in the WORK */                                  
ilename SPFinit url "https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/SPF/SPFinit.sas";                                    
include SPFinit;                                                                                                                       
                                                                                                                                       
installPackage(macroArray)                                                                                                             
installPackage(BasePlus)                                                                                                               
                                                                                                                                       
listPackages()                                                                                                                         
                                                                                                                                       
loadPackage(macroArray)                                                                                                                
loadPackage(BasePlus)                                                                                                                  
                                                                                                                                       
*                                                                                                                                      
helpPackage(BasePlus, getVars());                                                                                                      
helpPackage(macroArray, array());                                                                                                      
helpPackage(macroArray, do_over());                                                                                                    
/                                                                                                                                      
                                                                                                                                       
ata cars;                                                                                                                              
 set sashelp.cars;                                                                                                                     
un;                                                                                                                                    
                                                                                                                                       
array(Rename[*] %getVars(cars), macarray=y, vnames=y);                                                                                 
                                                                                                                                       
                                                                                                                                       
roc datasets lib=work;                                                                                                                 
 modify cars;                                                                                                                          
 rename                                                                                                                                
    %do_over(Rename,phrase=%nrstr(                                                                                                     
           %Rename(&_I_.) = %Rename(&_I_.)_YR1                                                                                         
    ));                                                                                                                                
un;quit;                                                                                                                               
                                                                                                                                       
                                                                                                                                       
deleteMacArray(Rename)                                                                                                                 
********/                                                                                                                              
                                                                                                                                       
*___             _     _                                                                                                               
 __ )  __ _ _ __| |_  | |    ___   __ _                                                                                                
  _ \ / _` | `__| __| | |   / _ \ / _` |                                                                                               
 |_) | (_| | |  | |_  | |__| (_) | (_| |                                                                                               
____/ \__,_|_|   \__| |_____\___/ \__, |                                                                                               
                                  |___/                                                                                                
/                                                                                                                                      
                                                                                                                                       
                                                                                                                                       
      /* code */                                                                                                                       
    filename packages "%sysfunc(pathname(work))"; /* setup temporary directory for packages in the WORK */                             
    filename SPFinit url "https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/SPF/SPFinit.sas";                               
    %include SPFinit;                                                                                                                  
592                                                                                                                                    
593  %installPackage(macroArray)                                                                                                       
                                                                                                                                       
Source information:                                                                                                                    
  Filename :                                                                                                                           
    https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/packages/macroarray.zip                                               
  Local Host Name :                                                                                                                    
    T7610                                                                                                                              
  Local Host IP addr :                                                                                                                 
    fe80::5454:e809:5ec7:7bd3%8                                                                                                        
  Service Hostname Name :                                                                                                              
    raw.githubusercontent.com                                                                                                          
  Service IP addr :                                                                                                                    
    151.101.0.133                                                                                                                      
  Service Name :                                                                                                                       
    N/A                                                                                                                                
  Service Portno :                                                                                                                     
    443                                                                                                                                
  Lrecl :                                                                                                                              
    1                                                                                                                                  
  Recfm :                                                                                                                              
    Stream                                                                                                                             
                                                                                                                                       
Installing the macroArray package.                                                                                                     
Done with return code rc=0                                                                                                             
594  %installPackage(BasePlus)                                                                                                         
Source information:                                                                                                                    
  Filename :                                                                                                                           
    https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/packages/baseplus.zip                                                 
  Local Host Name :                                                                                                                    
    T7610                                                                                                                              
  Local Host IP addr :                                                                                                                 
    fe80::5454:e809:5ec7:7bd3%8                                                                                                        
  Service Hostname Name :                                                                                                              
    raw.githubusercontent.com                                                                                                          
  Service IP addr :                                                                                                                    
    151.101.0.133                                                                                                                      
  Service Name :                                                                                                                       
    N/A                                                                                                                                
  Service Portno :                                                                                                                     
    443                                                                                                                                
  Lrecl :                                                                                                                              
    1                                                                                                                                  
  Recfm :                                                                                                                              
    Stream                                                                                                                             
                                                                                                                                       
Installing the BasePlus package.                                                                                                       
Done with return code rc=0                                                                                                             
595                                                                                                                                    
596  %listPackages()                                                                                                                   
                                                                                                                                       
*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++                                  
                                                                                                                                       
* C:\Users\Roger\AppData\Local\Temp\SAS Temporary Files\_TD11348_T7610_/baseplus.zip ***************                                   
                                                                                                                                       
*  Package: BasePlus                                                                                                                   
*  Title: The BASE SAS plus a bunch of functionalities I am missing in BASE SAS                                                        
*  Version: 0.53                                                                                                                       
*  Author: Bartosz Jablonski (yabwon@gmail.com)                                                                                        
*  Maintainer: Bartosz Jablonski (yabwon@gmail.com)                                                                                    
*  License: MIT                                                                                                                        
                                                                                                                                       
* C:\Users\Roger\AppData\Local\Temp\SAS Temporary Files\_TD11348_T7610_/macroarray.zip *************                                   
                                                                                                                                       
*  Package: macroArray                                                                                                                 
*  Title: Macroarrays for macro codes                                                                                                  
*  Version: 0.3                                                                                                                        
*  Author: Bartosz Jablonski (yabwon@gmail.com)                                                                                        
*  Maintainer: Bartosz Jablonski (yabwon@gmail.com)                                                                                    
*  License: MIT                                                                                                                        
                                                                                                                                       
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/                                  
597                                                                                                                                    
598  %loadPackage(macroArray)                                                                                                          
RROR: The encryption provider libraries cannot be found.                                                                               
OTE: Fileref= P7B224D3                                                                                                                 
     Physical Name= C:\Users\Roger\AppData\Local\Temp\SAS Temporary Files\_TD11348_T7610_\macroarray.zip                               
                                                                                                                                       
OTE: Loading package macroArray, version 0.3, license MIT                                                                              
OTE: *** Macroarrays for macro codes ***                                                                                               
     Generated:    12AUG2020:14:37:02                                                                                                  
     Author(s): Bartosz Jablonski (yabwon@gmail.com)                                                                                   
     Maintainer(s): Bartosz Jablonski (yabwon@gmail.com)                                                                               
                                                                                                                                       
     Write %helpPackage(macroArray) for the description                                                                                
                                                                                                                                       
     *** START ***                                                                                                                     
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     *Testing required SAS components*0*                                                                                               
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     Element of type macro from the file "appendarray.sas" will be included                                                            
                                                                                                                                       
     Element of type macro from the file "appendcell.sas" will be included                                                             
                                                                                                                                       
     Element of type macro from the file "array.sas" will be included                                                                  
                                                                                                                                       
     Element of type macro from the file "concatarrays.sas" will be included                                                           
                                                                                                                                       
     Element of type macro from the file "deletemacarray.sas" will be included                                                         
                                                                                                                                       
     Element of type macro from the file "do_over.sas" will be included                                                                
                                                                                                                                       
     Element of type macro from the file "do_over2.sas" will be included                                                               
                                                                                                                                       
     Element of type macro from the file "do_over3.sas" will be included                                                               
                                                                                                                                       
     Element of type macro from the file "make_do_over.sas" will be included                                                           
                                                                                                                                       
OTE: SYSloadedPackages = macroArray(0.3)                                                                                               
OTE: There were 0 observations read from the data set SASHELP.VMACRO.                                                                  
     WHERE (scope='GLOBAL') and (name='SYSLOADEDPACKAGES');                                                                            
                                                                                                                                       
                                                                                                                                       
OTE: Loading package macroArray, version 0.3, license MIT                                                                              
     *** END ***                                                                                                                       
OTE: Fileref P7B224D3 has been deassigned.                                                                                             
355  %loadPackage(BasePlus)                                                                                                            
RROR: The encryption provider libraries cannot be found.                                                                               
OTE: Fileref= PC5C9E00                                                                                                                 
     Physical Name= C:\Users\Roger\AppData\Local\Temp\SAS Temporary Files\_TD11348_T7610_\baseplus.zip                                 
                                                                                                                                       
OTE: Loading package BasePlus, version 0.53, license MIT                                                                               
OTE: *** The BASE SAS plus a bunch of functionalities I am missing in BASE SAS ***                                                     
     Generated:    12AUG2020:14:34:03                                                                                                  
     Author(s): Bartosz Jablonski (yabwon@gmail.com)                                                                                   
     Maintainer(s): Bartosz Jablonski (yabwon@gmail.com)                                                                               
                                                                                                                                       
     Write %helpPackage(BasePlus) for the description                                                                                  
                                                                                                                                       
     *** START ***                                                                                                                     
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     Element of type macro from the file "getvars.sas" will be included                                                                
                                                                                                                                       
     Element of type macro from the file "qgetvars.sas" will be included                                                               
                                                                                                                                       
     Element of type format from the file "bool.sas" will be included                                                                  
OTE: Format BOOL has been written to WORK.BASEPLUSFORMAT.                                                                              
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
OTE:[FMTSEARCH] (WORK.BASEPLUSFORMAT WORK LIBRARY)                                                                                     
                                                                                                                                       
     Element of type format from the file "boolz.sas" will be included                                                                 
OTE: Format BOOLZ has been written to WORK.BASEPLUSFORMAT.                                                                             
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     Element of type format from the file "ceil.sas" will be included                                                                  
OTE: Format CEIL has been written to WORK.BASEPLUSFORMAT.                                                                              
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     Element of type format from the file "floor.sas" will be included                                                                 
OTE: Format FLOOR has been written to WORK.BASEPLUSFORMAT.                                                                             
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     Element of type format from the file "int.sas" will be included                                                                   
OTE: Format INT has been written to WORK.BASEPLUSFORMAT.                                                                               
                                                                                                                                       
                                                                                                                                       
                                                                                                                                       
     Element of type functions from the file "arrfill.sas" will be included                                                            
OTE: Writing HTML Body file: sashtml.htm                                                                                               
                                                                                                                                       
OTE:[CMPLIB] work.baseplusfcmp                                                                                                         
                                                                                                                                       
     Element of type functions from the file "arrfillc.sas" will be included                                                           
                                                                                                                                       
     Element of type functions from the file "arrmissfill.sas" will be included                                                        
                                                                                                                                       
     Element of type functions from the file "arrmissfillc.sas" will be included                                                       
                                                                                                                                       
     Element of type functions from the file "arrmisstoleft.sas" will be included                                                      
                                                                                                                                       
     Element of type functions from the file "arrmisstoleftc.sas" will be included                                                     
                                                                                                                                       
     Element of type functions from the file "arrmisstoright.sas" will be included                                                     
                                                                                                                                       
     Element of type functions from the file "arrmisstorightc.sas" will be included                                                    
                                                                                                                                       
     Element of type functions from the file "catxfc.sas" will be included                                                             
                                                                                                                                       
     Element of type functions from the file "catxfi.sas" will be included                                                             
                                                                                                                                       
     Element of type functions from the file "catxfj.sas" will be included                                                             
                                                                                                                                       
     Element of type functions from the file "catxfn.sas" will be included                                                             
                                                                                                                                       
     Element of type functions from the file "deldataset.sas" will be included                                                         
                                                                                                                                       
                                                                                                                                       
OTE: Function delDataset saved to work.baseplusfcmp.package.                                                                           
OTE: Function catXFn saved to work.baseplusfcmp.package.                                                                               
OTE: Function catXFj saved to work.baseplusfcmp.package.                                                                               
OTE: Function catXFi saved to work.baseplusfcmp.package.                                                                               
OTE: Function catXFc saved to work.baseplusfcmp.package.                                                                               
OTE: Function arrMissToRightC saved to work.baseplusfcmp.package.                                                                      
OTE: Function arrMissToRight saved to work.baseplusfcmp.package.                                                                       
OTE: Function arrMissToLeftC saved to work.baseplusfcmp.package.                                                                       
OTE: Function arrMissToLeft saved to work.baseplusfcmp.package.                                                                        
OTE: Function arrMissFillC saved to work.baseplusfcmp.package.                                                                         
OTE: Function arrMissFill saved to work.baseplusfcmp.package.                                                                          
OTE: Function arrFillC saved to work.baseplusfcmp.package.                                                                             
OTE: Function arrFill saved to work.baseplusfcmp.package.                                                                              
                                                                                                                                       
                                                                                                                                       
OTE: SYSloadedPackages=macroArray(0.3) BasePlus(0.53)                                                                                  
OTE: There were 1 observations read from the data set SASHELP.VMACRO.                                                                  
     WHERE (scope='GLOBAL') and (name='SYSLOADEDPACKAGES');                                                                            
                                                                                                                                       
                                                                                                                                       
OTE: Loading package BasePlus, version 0.53, license MIT                                                                               
     *** END ***                                                                                                                       
OTE: Fileref PC5C9E00 has been deassigned.                                                                                             
695                                                                                                                                    
696  /*                                                                                                                                
697  %helpPackage(BasePlus, getVars());                                                                                                
698  %helpPackage(macroArray, array());                                                                                                
699  %helpPackage(macroArray, do_over());                                                                                              
700  */                                                                                                                                
701                                                                                                                                    
702  data cars;                                                                                                                        
703    set sashelp.cars;                                                                                                               
704  run;                                                                                                                              
                                                                                                                                       
OTE: There were 428 observations read from the data set SASHELP.CARS.                                                                  
OTE: The data set WORK.CARS has 428 observations and 15 variables.                                                                     
OTE: DATA statement used (Total process time):                                                                                         
     real time           0.01 seconds                                                                                                  
     cpu time            0.00 seconds                                                                                                  
                                                                                                                                       
                                                                                                                                       
705                                                                                                                                    
706  %array(Rename[*] %getVars(cars), macarray=y, vnames=y);                                                                           
OTE:[ARRAY] 15 macrovariables created                                                                                                  
707                                                                                                                                    
708                                                                                                                                    
709  proc datasets lib=work;                                                                                                           
710    modify cars;                                                                                                                    
711    rename                                                                                                                          
712       %do_over(Rename,phrase=%nrstr(                                                                                               
713              %Rename(&_I_.) = %Rename(&_I_.)_YR1                                                                                   
714       ));                                                                                                                          
OTE: Renaming variable Make to Make_YR1.                                                                                               
OTE: Renaming variable Model to Model_YR1.                                                                                             
OTE: Renaming variable Type to Type_YR1.                                                                                               
OTE: Renaming variable Origin to Origin_YR1.                                                                                           
OTE: Renaming variable DriveTrain to DriveTrain_YR1.                                                                                   
OTE: Renaming variable MSRP to MSRP_YR1.                                                                                               
OTE: Renaming variable Invoice to Invoice_YR1.                                                                                         
OTE: Renaming variable EngineSize to EngineSize_YR1.                                                                                   
OTE: Renaming variable Cylinders to Cylinders_YR1.                                                                                     
OTE: Renaming variable Horsepower to Horsepower_YR1.                                                                                   
OTE: Renaming variable MPG_City to MPG_City_YR1.                                                                                       
OTE: Renaming variable MPG_Highway to MPG_Highway_YR1.                                                                                 
OTE: Renaming variable Weight to Weight_YR1.                                                                                           
OTE: Renaming variable Wheelbase to Wheelbase_YR1.                                                                                     
OTE: Renaming variable Length to Length_YR1.                                                                                           
715  run;                                                                                                                              
                                                                                                                                       
OTE: MODIFY was successful for WORK.CARS.DATA.                                                                                         
715!     quit;                                                                                                                         
                                                                                                                                       
OTE: PROCEDURE DATASETS used (Total process time):                                                                                     
     real time           0.07 seconds                                                                                                  
     cpu time            0.04 seconds                                                                                                  
                                                                                                                                       
                                                                                                                                       
716                                                                                                                                    
717                                                                                                                                    
718  %deleteMacArray(Rename)                                                                                                           
719  /********/                                                                                                                        
                                                                                                                                       
                                                                                                                                       
