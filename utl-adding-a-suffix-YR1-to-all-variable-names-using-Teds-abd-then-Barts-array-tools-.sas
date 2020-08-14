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
                                                                                                                                
/*                _                                                                                                             
(_)_ __  _ __  _   _| |_                                                                                                        
| | `_ \| `_ \| | | | __|                                                                                                       
| | | | | |_) | |_| | |_                                                                                                        
|_|_| |_| .__/ \__,_|\__|                                                                                                       
        |_|                                                                                                                     
*/                                                                                                                              
                                                                                                                                
                                                                                                                                
data cars;                                                                                                                      
 set sashelp.cars;                                                                                                              
run;quit;                                                                                                                       
                                                                                                                                
                                                                                                                                
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
                                                                                                                                
/*           _               _                                                                                                  
  ___  _   _| |_ _ __  _   _| |_                                                                                                
 / _ \| | | | __| `_ \| | | | __|                                                                                               
| (_) | |_| | |_| |_) | |_| | |_                                                                                                
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                               
                |_|                                                                                                             
*/                                                                                                                              
                                                                                                                                
Variable           Type    Len                                                                                                  
                                                                                                                                
CYLINDERS_YR1      Num       8                                                                                                  
DRIVETRAIN_YR1     Char      5                                                                                                  
ENGINESIZE_YR1     Num       8                                                                                                  
HORSEPOWER_YR1     Num       8                                                                                                  
INVOICE_YR1        Num       8                                                                                                  
LENGTH_YR1         Num       8                                                                                                  
MAKE_YR1           Char     13                                                                                                  
MODEL_YR1          Char     40                                                                                                  
MPG_CITY_YR1       Num       8                                                                                                  
MPG_HIGHWAY_YR1    Num       8                                                                                                  
MSRP_YR1           Num       8                                                                                                  
ORIGIN_YR1         Char      6                                                                                                  
TYPE_YR1           Char      8                                                                                                  
WEIGHT_YR1         Num       8                                                                                                  
WHEELBASE_YR1      Num       8                                                                                                  
                                                                                                                                
/*         _       _   _                                                                                                        
 ___  ___ | |_   _| |_(_) ___  _ __  ___                                                                                        
/ __|/ _ \| | | | | __| |/ _ \| `_ \/ __|                                                                                       
\__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                                       
|___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                                       
 _____        _                                                                                                                 
|_   _|__  __| |                                                                                                                
  | |/ _ \/ _` |                                                                                                                
  | |  __/ (_| |                                                                                                                
  |_|\___|\__,_|                                                                                                                
                                                                                                                                
*/                                                                                                                              
                                                                                                                                
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
                                                                                                                                
/*___             _                                                                                                             
| __ )  __ _ _ __| |_                                                                                                           
|  _ \ / _` | `__| __|                                                                                                          
| |_) | (_| | |  | |_                                                                                                           
|____/ \__,_|_|   \__|                                                                                                          
                                                                                                                                
*/                                                                                                                              
                                                                                                                                
options sasautos=("c:/temp");                                                                                                   
                                                                                                                                
/* code */                                                                                                                      
filename packages "%sysfunc(pathname(work))"; /* setup temporary directory for packages in the WORK */                          
filename SPFinit url "https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/SPF/SPFinit.sas";                            
%include SPFinit;                                                                                                               
                                                                                                                                
%installPackage(macroArray)                                                                                                     
%installPackage(BasePlus)                                                                                                       
                                                                                                                                
%listPackages()                                                                                                                 
                                                                                                                                
%loadPackage(macroArray)                                                                                                        
%loadPackage(BasePlus)                                                                                                          
                                                                                                                                
/*                                                                                                                              
%helpPackage(BasePlus, getVars());                                                                                              
%helpPackage(macroArray, array());                                                                                              
%helpPackage(macroArray, do_over());                                                                                            
*/                                                                                                                              
                                                                                                                                
data cars;                                                                                                                      
  set sashelp.cars;                                                                                                             
run;                                                                                                                            
                                                                                                                                
%array(Rename[*] %getVars(cars), macarray=y, vnames=y);                                                                         
                                                                                                                                
                                                                                                                                
proc datasets lib=work;                                                                                                         
  modify cars;                                                                                                                  
  rename                                                                                                                        
     %do_over(Rename,phrase=%nrstr(                                                                                             
            %Rename(&_I_.) = %Rename(&_I_.)_YR1                                                                                 
     ));                                                                                                                        
run;quit;                                                                                                                       
                                                                                                                                
                                                                                                                                
%deleteMacArray(Rename)                                                                                                         
/********/                                                                                                                      
                                                                                                                                
/*___             _     _                                                                                                       
| __ )  __ _ _ __| |_  | |    ___   __ _                                                                                        
|  _ \ / _` | `__| __| | |   / _ \ / _` |                                                                                       
| |_) | (_| | |  | |_  | |__| (_) | (_| |                                                                                       
|____/ \__,_|_|   \__| |_____\___/ \__, |                                                                                       
                                   |___/                                                                                        
*/                                                                                                                              
                                                                                                                                
1                                                                                                                               
2      /* code */                                                                                                               
3    filename packages "%sysfunc(pathname(work))"; /* setup temporary directory for packages in the WORK */                     
4    filename SPFinit url "https://raw.githubusercontent.com/yabwon/SAS_PACKAGES/master/SPF/SPFinit.sas";                       
5    %include SPFinit;                                                                                                          
2592                                                                                                                            
2593  %installPackage(macroArray)                                                                                               
                                                                                                                                
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
2594  %installPackage(BasePlus)                                                                                                 
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
2595                                                                                                                            
2596  %listPackages()                                                                                                           
                                                                                                                                
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++                          
                                                                                                                                
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
                                                                                                                                
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/                          
2597                                                                                                                            
2598  %loadPackage(macroArray)                                                                                                  
                                                                                                                                
NOTE: Fileref= P7B224D3                                                                                                         
      Physical Name= C:\Users\Roger\AppData\Local\Temp\SAS Temporary Files\_TD11348_T7610_\macroarray.zip                       
                                                                                                                                
NOTE: Loading package macroArray, version 0.3, license MIT                                                                      
NOTE: *** Macroarrays for macro codes ***                                                                                       
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
                                                                                                                                
NOTE: SYSloadedPackages = macroArray(0.3)                                                                                       
NOTE: There were 0 observations read from the data set SASHELP.VMACRO.                                                          
      WHERE (scope='GLOBAL') and (name='SYSLOADEDPACKAGES');                                                                    
                                                                                                                                
                                                                                                                                
NOTE: Loading package macroArray, version 0.3, license MIT                                                                      
      *** END ***                                                                                                               
NOTE: Fileref P7B224D3 has been deassigned.                                                                                     
4355  %loadPackage(BasePlus)                                                                                                    
ERROR: The encryption provider libraries cannot be found.                                                                       
NOTE: Fileref= PC5C9E00                                                                                                         
      Physical Name= C:\Users\Roger\AppData\Local\Temp\SAS Temporary Files\_TD11348_T7610_\baseplus.zip                         
                                                                                                                                
NOTE: Loading package BasePlus, version 0.53, license MIT                                                                       
NOTE: *** The BASE SAS plus a bunch of functionalities I am missing in BASE SAS ***                                             
      Generated:    12AUG2020:14:34:03                                                                                          
      Author(s): Bartosz Jablonski (yabwon@gmail.com)                                                                           
      Maintainer(s): Bartosz Jablonski (yabwon@gmail.com)                                                                       
                                                                                                                                
      Write %helpPackage(BasePlus) for the description                                                                          
                                                                                                                                
      *** START ***                                                                                                             
                                                                                                                                
                                                                                                                                
                                                                                                                                
      Element of type macro from the file "getvars.sas" will be included                                                        
                                                                                                                                
      Element of type macro from the file "qgetvars.sas" will be included                                                       
                                                                                                                                
      Element of type format from the file "bool.sas" will be included                                                          
NOTE: Format BOOL has been written to WORK.BASEPLUSFORMAT.                                                                      
                                                                                                                                
                                                                                                                                
                                                                                                                                
NOTE:[FMTSEARCH] (WORK.BASEPLUSFORMAT WORK LIBRARY)                                                                             
                                                                                                                                
      Element of type format from the file "boolz.sas" will be included                                                         
NOTE: Format BOOLZ has been written to WORK.BASEPLUSFORMAT.                                                                     
                                                                                                                                
                                                                                                                                
                                                                                                                                
      Element of type format from the file "ceil.sas" will be included                                                          
NOTE: Format CEIL has been written to WORK.BASEPLUSFORMAT.                                                                      
                                                                                                                                
                                                                                                                                
                                                                                                                                
      Element of type format from the file "floor.sas" will be included                                                         
NOTE: Format FLOOR has been written to WORK.BASEPLUSFORMAT.                                                                     
                                                                                                                                
                                                                                                                                
                                                                                                                                
      Element of type format from the file "int.sas" will be included                                                           
NOTE: Format INT has been written to WORK.BASEPLUSFORMAT.                                                                       
                                                                                                                                
                                                                                                                                
                                                                                                                                
      Element of type functions from the file "arrfill.sas" will be included                                                    
NOTE: Writing HTML Body file: sashtml.htm                                                                                       
                                                                                                                                
NOTE:[CMPLIB] work.baseplusfcmp                                                                                                 
                                                                                                                                
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
                                                                                                                                
                                                                                                                                
NOTE: Function delDataset saved to work.baseplusfcmp.package.                                                                   
NOTE: Function catXFn saved to work.baseplusfcmp.package.                                                                       
NOTE: Function catXFj saved to work.baseplusfcmp.package.                                                                       
NOTE: Function catXFi saved to work.baseplusfcmp.package.                                                                       
NOTE: Function catXFc saved to work.baseplusfcmp.package.                                                                       
NOTE: Function arrMissToRightC saved to work.baseplusfcmp.package.                                                              
NOTE: Function arrMissToRight saved to work.baseplusfcmp.package.                                                               
NOTE: Function arrMissToLeftC saved to work.baseplusfcmp.package.                                                               
NOTE: Function arrMissToLeft saved to work.baseplusfcmp.package.                                                                
NOTE: Function arrMissFillC saved to work.baseplusfcmp.package.                                                                 
NOTE: Function arrMissFill saved to work.baseplusfcmp.package.                                                                  
NOTE: Function arrFillC saved to work.baseplusfcmp.package.                                                                     
NOTE: Function arrFill saved to work.baseplusfcmp.package.                                                                      
                                                                                                                                
                                                                                                                                
NOTE: SYSloadedPackages=macroArray(0.3) BasePlus(0.53)                                                                          
NOTE: There were 1 observations read from the data set SASHELP.VMACRO.                                                          
      WHERE (scope='GLOBAL') and (name='SYSLOADEDPACKAGES');                                                                    
                                                                                                                                
                                                                                                                                
NOTE: Loading package BasePlus, version 0.53, license MIT                                                                       
      *** END ***                                                                                                               
NOTE: Fileref PC5C9E00 has been deassigned.                                                                                     
5695                                                                                                                            
5696  /*                                                                                                                        
5697  %helpPackage(BasePlus, getVars());                                                                                        
5698  %helpPackage(macroArray, array());                                                                                        
5699  %helpPackage(macroArray, do_over());                                                                                      
5700  */                                                                                                                        
5701                                                                                                                            
5702  data cars;                                                                                                                
5703    set sashelp.cars;                                                                                                       
5704  run;                                                                                                                      
                                                                                                                                
NOTE: There were 428 observations read from the data set SASHELP.CARS.                                                          
NOTE: The data set WORK.CARS has 428 observations and 15 variables.                                                             
NOTE: DATA statement used (Total process time):                                                                                 
      real time           0.01 seconds                                                                                          
      cpu time            0.00 seconds                                                                                          
                                                                                                                                
                                                                                                                                
5705                                                                                                                            
5706  %array(Rename[*] %getVars(cars), macarray=y, vnames=y);                                                                   
NOTE:[ARRAY] 15 macrovariables created                                                                                          
5707                                                                                                                            
5708                                                                                                                            
5709  proc datasets lib=work;                                                                                                   
5710    modify cars;                                                                                                            
5711    rename                                                                                                                  
5712       %do_over(Rename,phrase=%nrstr(                                                                                       
5713              %Rename(&_I_.) = %Rename(&_I_.)_YR1                                                                           
5714       ));                                                                                                                  
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
5715  run;                                                                                                                      
                                                                                                                                
NOTE: MODIFY was successful for WORK.CARS.DATA.                                                                                 
5715!     quit;                                                                                                                 
                                                                                                                                
NOTE: PROCEDURE DATASETS used (Total process time):                                                                             
      real time           0.07 seconds                                                                                          
      cpu time            0.04 seconds                                                                                          
                                                                                                                                
                                                                                                                                
5716                                                                                                                            
5717                                                                                                                            
5718  %deleteMacArray(Rename)                                                                                                   
5719  /********/                                                                                                                
                                                                                                                                
