*there must be  a space between each variable
*$set matout "'matsol.gdx', M, CCLB, Mstm ";

$setglobal type MINLP
$setglobal write 0

options

limrow = 0
limcol = 0
reslim = 2000
optcr  = 0.01
SYSOUT = ON
IterLim=2100000000
MINLP = BARON
;


$onecho > data.txt

set=Chem_prop    rng=Chem_Props!B2:Y2    values=NoData        cdim= 1               
set=dkS_Targets    rng=Outlet_Spec!B1:C1    values=NoData        cdim= 1               
set=dkO_Targets    rng=Outlet_Spec!G1:H1    values=NoData        cdim= 1               
set=ADS_tech    rng=ADS!A2:A7    values=NoData             rdim= 1          
set=SDM_tech    rng=SDM!A2:A7    values=NoData             rdim= 1          
set=PRC_tech    rng=PRC!A2:A7    values=NoData             rdim= 1          
set=CNF_tech    rng=CNF!A2:A7    values=NoData             rdim= 1          
set=DST_tech    rng=DST!A2:A7    values=NoData             rdim= 1          
set=FLT_tech    rng=FLT!A2:A7    values=NoData             rdim= 1          
set=PVP_tech    rng=PVP!A2:A7    values=NoData             rdim= 1          
set=MF_tech    rng=MF!A2:A7    values=NoData             rdim= 1          
set=UF_tech    rng=UF!A2:A7    values=NoData             rdim= 1          
set=NF_tech    rng=NF!A2:A7    values=NoData             rdim= 1          
set=ADS_prop    rng=ADS!B1:Z1    values=NoData        cdim= 1               
set=SDM_prop    rng=SDM!B1:Z1    values=NoData        cdim= 1               
set=PRC_prop    rng=PRC!B1:Z1    values=NoData        cdim= 1               
set=CNF_prop    rng=CNF!B1:Z1    values=NoData        cdim= 1               
set=DST_prop    rng=DST!B1:Z1    values=NoData        cdim= 1               
set=FLT_prop    rng=FLT!B1:Z1    values=NoData        cdim= 1               
set=PVP_prop    rng=PVP!B1:Z1    values=NoData        cdim= 1               
set=MF_prop    rng=MF!B1:Z1    values=NoData        cdim= 1               
set=UF_prop    rng=UF!B1:Z1    values=NoData        cdim= 1               
set=NF_prop    rng=NF!B1:Z1    values=NoData        cdim= 1               
set=CF_bounds    rng=ConFac_Units!B1:C1    values=NoData        cdim= 1               
par=P1    rng=mat_data!a1:b80                 rdim= 1     ignoreRows= 1     
par=ADS_T    rng=ADS!A1:I3        dim=2    cdim= 1     rdim= 1          
par=SDM_T    rng=SDM!A1:H2        dim=2    cdim= 1     rdim= 1          
par=PRC_T    rng=PRC!A1:D2        dim=2    cdim= 1     rdim= 1          
par=CNF_T    rng=CNF!A1:D2        dim=2    cdim= 1     rdim= 1          
par=DST_T    rng=DST!A1:K2        dim=2    cdim= 1     rdim= 1          
par=FLT_T    rng=FLT!A1:D2        dim=2    cdim= 1     rdim= 1          
par=PVP_T    rng=PVP!A1:C4        dim=2    cdim= 1     rdim= 1          
par=MF_T    rng=MF!A1:C3        dim=2    cdim= 1     rdim= 1          
par=UF_T    rng=UF!A1:C3        dim=2    cdim= 1     rdim= 1          
par=NF_T    rng=NF!A1:D2        dim=2    cdim= 1     rdim= 1          
par=Chem_T    rng=Chem_Props!A2:Y6        dim=2    cdim= 1     rdim= 1          ignoreColumns= H,J
par=Chem_T_sld    rng=Solid_Props!A2:W6        dim=2    cdim= 1     rdim= 1          ignoreColumns= H,J
par=Chem_T_sol    rng=Sol_Props!A2:W6        dim=2    cdim= 1     rdim= 1          ignoreColumns= H,J        
par=dkS_Constr_T    rng=Outlet_Spec!A1:C5        dim=2    cdim= 1     rdim= 1          
par=dkO_Constr_T    rng=Outlet_Spec!F1:H7                           
par=CF_T_bounds    rng=ConFac_Units!A1:C12        dim=2    cdim= 1     rdim= 1          
par=Flow    rng=Chem_Props!A1:B1                 rdim= 1          
par=Lbr    rng=Lbr_data!a1:f40                           
par=Con_mat    rng=Con_mat!a1:aq80        dim=2    cdim= 1     rdim= 1          
par=CMSTR    rng=CMSTR_mat!a1:bq80        dim=2    cdim= 1     rdim= 1          
par=CMUNT    rng=CMUNT_mat!a1:bq80        dim=2    cdim= 1     rdim= 1          
set=i    rng=Con_mat!B1:AC1    values=NoData        cdim= 1               
set=i1    rng=Con_mat!B1:AC1    values=NoData        cdim= 1               ignoreColumns= B,G,I,J,N,P,Q,U,V,W,Z,AB,AC
set=i2    rng=Con_mat!B1:AC1    values=NoData        cdim= 1               ignoreColumns= B,C,E,F,G,H,I,J,K,M,N,P,Q,U,V,W,Z,AB,AC
set=i3    rng=Con_mat!B1:AC1    values=NoData        cdim= 1               ignoreColumns= C,D,E,F,H,K,L,M,O,R,S,T,X,Y,AA
set=i4    rng=Con_mat!B1:AC1    values=NoData        cdim= 1               ignoreColumns= B,C,F,G,H,I,J,K,N,P,Q,U,V,W,Z,AB,AC
set=i5    rng=Con_mat!B1:AC1    values=NoData        cdim= 1               ignoreColumns= B,C,D,E,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,AA,AB,AC
set=i6    rng=ConFac_Units!A2:A12    values=NoData             rdim= 1          
set=ibv    rng=Con_mat!B1:AB1    values=NoData        cdim= 1               ignoreColumns= B,I,J,P,Q,V,W,AB,AC
set=Nstg    rng=mat_data!J1:M1    values=NoData        cdim= 1               
set=istg1    rng=Con_mat!C1:H1    values=NoData        cdim= 1               ignoreColumns= G
set=istg2    rng=Con_mat!K1:O1    values=NoData        cdim= 1               ignoreColumns= N
set=istg3    rng=Con_mat!R1:T1    values=NoData        cdim= 1               
set=istg4    rng=Con_mat!X1:AA1    values=NoData        cdim= 1               ignoreColumns= Z
set=j    rng=Con_mat!A2:A60    values=NoData             rdim= 1          
set=jsplit1    rng=Con_mat!A2:A15    values=NoData             rdim= 1     ignoreRows= 4,5,7,8,10,11,13,14     
set=jsplit1F    rng=Con_mat!A2:A2    values=NoData             rdim= 1          
set=jsplit1E    rng=Con_mat!A3:A15    values=NoData             rdim= 1     ignoreRows= 4,5,7,8,10,11,13,14     
set=jSDM    rng=Con_mat!A3:A5    values=NoData             rdim= 1          
set=jSDMF    rng=Con_mat!A3:A3    values=NoData             rdim= 1          
set=jSDME    rng=Con_mat!A4:A4    values=NoData             rdim= 1          
set=jSDMS    rng=Con_mat!A5:A5    values=NoData             rdim= 1          
set=jFLT1    rng=Con_mat!A6:A8    values=NoData             rdim= 1          
set=jFLT1F    rng=Con_mat!A6:A6    values=NoData             rdim= 1          
set=jFLT1E    rng=Con_mat!A7:A7    values=NoData             rdim= 1          
set=jFLT1S    rng=Con_mat!A8:A8    values=NoData             rdim= 1          
set=jADS1    rng=Con_mat!A9:A11    values=NoData             rdim= 1          
set=jADS1F    rng=Con_mat!A9:A9    values=NoData             rdim= 1          
set=jADS1E    rng=Con_mat!A10:A10    values=NoData             rdim= 1          
set=JADS1S    rng=Con_mat!A11:A11    values=NoData             rdim= 1          
set=jPRC    rng=Con_mat!A12:A14    values=NoData             rdim= 1          
set=jPRCF    rng=Con_mat!A12:A12    values=NoData             rdim= 1          
set=jPRCE    rng=Con_mat!A13:A13    values=NoData             rdim= 1          
set=jPRCS     rng=Con_mat!A14:A14    values=NoData             rdim= 1          
set=jCNF    rng=Con_mat!A15:A17    values=NoData             rdim= 1          
set=jCNFF    rng=Con_mat!A15:A15    values=NoData             rdim= 1          
set=jCNFE     rng=Con_mat!A16:A16    values=NoData             rdim= 1          
set=jCNFS     rng=Con_mat!A17:A17    values=NoData             rdim= 1          
set=jmix1    rng=Con_mat!A5:A18    values=NoData             rdim= 1     ignoreRows= 6,7,9,10,12,13,15,16     
set=jmix1F    rng=Con_mat!A5:A17    values=NoData             rdim= 1     ignoreRows= 6,7,9,10,12,13,15,17     
set=jmix1E    rng=Con_mat!A18:A18    values=NoData             rdim= 1          
set=jsplit2    rng=Con_mat!A18:A28    values=NoData             rdim= 1     ignoreRows= 20,21,23,24,26,27     
set=jsplit2F    rng=Con_mat!A18:A18    values=NoData             rdim= 1          
set=jsplit2E    rng=Con_mat!A19:A28    values=NoData             rdim= 1     ignoreRows= 20,21,23,24,26,27     
set=jDST    rng=Con_mat!A19:A21    values=NoData             rdim= 1          
set=jDSTF    rng=Con_mat!A19:A19    values=NoData             rdim= 1          
set=jDSTE     rng=Con_mat!A20:A20    values=NoData             rdim= 1          
set=jDSTS     rng=Con_mat!A21:A21    values=NoData             rdim= 1          
set=jPVP1    rng=Con_mat!A22:A24    values=NoData             rdim= 1          
set=jPVP1F    rng=Con_mat!A22:A22    values=NoData             rdim= 1          
set=jPVP1E    rng=Con_mat!A23:A23    values=NoData             rdim= 1          
set=jPVP1S     rng=Con_mat!A24:A24    values=NoData             rdim= 1          
set=jADS2    rng=Con_mat!A25:A27    values=NoData             rdim= 1          
set=jADS2F    rng=Con_mat!A25:A25    values=NoData             rdim= 1          
set=jADS2E    rng=Con_mat!A26:A26    values=NoData             rdim= 1          
set=JADS2S    rng=Con_mat!A27:A27    values=NoData             rdim= 1          
set=jMF1    rng=Con_mat!A28:A30    values=NoData             rdim= 1          
set=jMF1F    rng=Con_mat!A28:A28    values=NoData             rdim= 1          
set=jMF1E    rng=Con_mat!A29:A29    values=NoData             rdim= 1          
set=jMF1S    rng=Con_mat!A30:A30    values=NoData             rdim= 1          
set=jmix2    rng=Con_mat!A21:A31    values=NoData             rdim= 1     ignoreRows= 22,23,25,26,28,29     
set=jmix2F    rng=Con_mat!A21:A30    values=NoData             rdim= 1     ignoreRows= 22,23,25,26,28,30     
set=jmix2E    rng=Con_mat!A31:A31    values=NoData             rdim= 1          
set=jsplit3    rng=Con_mat!A31:A38    values=NoData             rdim= 1     ignoreRows= 33,34,36,37     
set=jsplit3F    rng=Con_mat!A31:A31    values=NoData             rdim= 1          
set=jsplit3E    rng=Con_mat!A32:A38    values=NoData             rdim= 1     ignoreRows= 33,34,36,37     
set=jMF2    rng=Con_mat!A32:A34    values=NoData             rdim= 1          
set=jMF2F    rng=Con_mat!A32:A32    values=NoData             rdim= 1          
set=jMF2E    rng=Con_mat!A33:A33    values=NoData             rdim= 1          
set=jMF2S    rng=Con_mat!A34:A34    values=NoData             rdim= 1          
set=jUF1    rng=Con_mat!A35:A37    values=NoData             rdim= 1          
set=jUF1F    rng=Con_mat!A35:A35    values=NoData             rdim= 1          
set=jUF1E    rng=Con_mat!A36:A36    values=NoData             rdim= 1          
set=jUF1S    rng=Con_mat!A37:A37    values=NoData             rdim= 1          
set=jPVP2    rng=Con_mat!A38:A40    values=NoData             rdim= 1          
set=jPVP2F    rng=Con_mat!A38:A38    values=NoData             rdim= 1          
set=jPVP2E     rng=Con_mat!A39:A39    values=NoData             rdim= 1          
set=jPVP2S    rng=Con_mat!A40:A40    values=NoData             rdim= 1          
set=jmix3    rng=Con_mat!A34:A41    values=NoData             rdim= 1     ignoreRows= 35,36,38,39     
set=jmix3F    rng=Con_mat!A31:A40    values=NoData             rdim= 1     ignoreRows= 35,36,38,40     
set=jmix3E    rng=Con_mat!A41:A41    values=NoData             rdim= 1          
set=jsplit4    rng=Con_mat!A41:A48    values=NoData             rdim= 1     ignoreRows= 43,44,46,47     
set=jsplit4F    rng=Con_mat!A41:A41    values=NoData             rdim= 1          
set=jsplit4E    rng=Con_mat!A22:A48    values=NoData             rdim= 1     ignoreRows= 43,44,46,47     
set=jUF2    rng=Con_mat!A42:A44    values=NoData             rdim= 1          
set=jUF2F    rng=Con_mat!A42:A42    values=NoData             rdim= 1          
set=jUF2E    rng=Con_mat!A43:A43    values=NoData             rdim= 1          
set=jUF2S    rng=Con_mat!A44:A44    values=NoData             rdim= 1          
set=jNF    rng=Con_mat!A45:A47    values=NoData             rdim= 1          
set=jNFF    rng=Con_mat!A45:A45    values=NoData             rdim= 1          
set=jNFE    rng=Con_mat!A46:A46    values=NoData             rdim= 1          
set=jNFS    rng=Con_mat!A47:A47    values=NoData             rdim= 1          
set=jPVP3    rng=Con_mat!A48:A50    values=NoData             rdim= 1          
set=jPVP3F    rng=Con_mat!A48:A48    values=NoData             rdim= 1          
set=jPVP3E    rng=Con_mat!A49:A49    values=NoData             rdim= 1          
set=jPVP3S    rng=Con_mat!A50:A50    values=NoData             rdim= 1          
set=jBYP1    rng=Con_mat!A51:A52    values=NoData             rdim= 1          
set=jBYP1F    rng=Con_mat!A51:A51    values=NoData             rdim= 1          
set=jBYP1E    rng=Con_mat!A52:A52    values=NoData             rdim= 1          
set=jBYP2    rng=Con_mat!A53:A54    values=NoData             rdim= 1          
set=jBYP2F    rng=Con_mat!A53:A53    values=NoData             rdim= 1          
set=jBYP2E    rng=Con_mat!A54:A54    values=NoData             rdim= 1          
set=jBYP3    rng=Con_mat!A55:A56    values=NoData             rdim= 1          
set=jBYP3F    rng=Con_mat!A55:A55    values=NoData             rdim= 1          
set=jBYP3E    rng=Con_mat!A56:A56    values=NoData             rdim= 1          
set=jBYP4    rng=Con_mat!A57:A58    values=NoData             rdim= 1          
set=jBYP4F    rng=Con_mat!A57:A57    values=NoData             rdim= 1          
set=jBYP4E    rng=Con_mat!A58:A58    values=NoData             rdim= 1          
set=jmix5    rng=Con_mat!A2:A60    values=NoData             rdim= 1     ignoreRows= 2,3,5,6,8,9,11,12,14,15,17,18,19,21,22,24,25,27,28,30,31,32,34,35,37,38,40,41,42,44,45,47,48,50,51,52,53,54,55,56,57,58,59     
set=jmix5F    rng=Con_mat!A2:A60    values=NoData             rdim= 1     ignoreRows= 2,3,5,6,8,9,11,12,14,15,17,18,19,21,22,24,25,27,28,30,31,32,34,35,37,38,40,41,42,44,45,47,48,50,51,52,53,54,55,56,57,58,59,60     
set=jmix5E    rng=Con_mat!A60:A60    values=NoData             rdim= 1          
set=k    rng=Chem_Props!A3:A10    values=NoData             rdim= 1          
set=k1    rng=Chem_Props!A3:A10    values=NoData             rdim= 1          
set=kSld    rng=Solid_Props!A3:A10    values=NoData             rdim= 1          
set=kSol    rng=Sol_Props!A3:A10    values=NoData             rdim= 1          
set=dkS    rng=Outlet_Spec!A2:A10    values=NoData             rdim= 1          
set=dkO    rng=Outlet_Spec!F2:F5    values=NoData             rdim= 1          
        
 

           

$offEcho
$call gdxxrw Input=Automated_Excel.xlsx Output=Auto_GDX @data.txt




Sets

         i                       unit operations
         i1(i)                   unit ops with cost
         i2(i)                   unit ops with membranes
         i3(i)                   unit ops with no cost
         i4(i)                   unit ops with consumables
         i5(i)                   units with raw material cost
         i6(i)                   units with concentration factor
         ibv(i)                  units with binary variables

         Nstg                    number of stages
         istg1(i1)               all units in stage-1
         istg2(i1)               all units in stage-2
         istg3(i1)               all units in stage-3
         istg4(i1)               all units in stage-4

         j                       streams
         jsplit1(j)              Splitter 1 streams
         jsplit1F(j)             Splitter 1 feed stream
         jsplit1E(j)             Splitter 1 effluent stream

         jSDM(j)                 Sedimentation streams
         jSDMF(j)                Sedimentation feed stream
         jSDMS(j)                Sedimentation solvent stream (product of intrest)
         jSDME(j)                Sedimentation effluent stream (waste product)

         jFLT1(j)                Filtration streams
         jFLT1F(j)               Filtration feed stream
         jFLT1S(j)               Filtration solvent stream (product of intrest)
         jFLT1E(j)               Filtration effluent stream (waste product)

         jADS1(j)                Adsorption 1 streams
         jADS1F(j)               Adsorption 1 feed streams
         jADS1S(j)               Adsorption 1 solvent stream (product of intrest) 
         jADS1E(j)               Adsorption 1 effluent streams (waste product)

         jPRC(j)                 Precipitation streams
         jPRCF(j)                Precipitation feed streams
         jPRCS(j)                Precipitation solvent streams (product of intrest)
         jPRCE(j)                Precipitation effluent streams (waste product)

         jCNF(j)                 Centrifugation streams
         jCNFF(j)                Centrifugation feed stream
         jCNFS(j)                Centrifugation solvent stream (product of intrest)
         jCNFE(j)                Centrifugation effluent stream (waste product)

         jmix1(j)                Mixing Point 1 streams
         jmix1F(j)               Mixing Point 1 feed stream
         jmix1E(j)               Mixing Point 1 effluent stream

         jsplit2(j)              Splitter 2 streams
         jsplit2F(j)             Splitter 2 feed streams
         jsplit2E(j)             Splitter 2 effluent streams

         jDST(j)                 Distillation streams
         jDSTF(j)                Distillation feed stream
         jDSTS(j)                Distillation solvent stream (product of intrest)
         jDSTE(j)                Distillation effluent stream (waste product)

         jPVP1(j)                Pervaporation 1 streams
         jPVP1F(j)               Pervaporation 1 feed stream
         jPVP1S(j)               Pervaporation 1 solvent stream (product of intrest)
         jPVP1E(j)               Pervaporation 1 effluent stream (waste product)

         jADS2(j)                Adsorption 2 streams
         jADS2F(j)               Adsorption 2 feed stream
         jADS2S(j)               Adsorption 2 solvent stream (product of intrest)
         jADS2E(j)               Adsorption 2 effluent stream (waste product)

         jMF1(j)                 Microfiltration 1 streams
         jMF1F(j)                Microfiltration 1 feed streams
         jMF1S(j)                Microfiltration 1 solvent stream (product of intrest)
         jMF1E(j)                Microfiltration 1 effluent stream (waste product)

         jmix2(j)                Mixing Point 2 streams
         jmix2F(j)               Mixing Point 2 feed streams
         jmix2E(j)               Mixing Point 2 effluent stream

         jsplit3(j)              Splitter 3 streams
         jsplit3F(j)             Splitter 3 feed stream
         jsplit3E(j)             Splitter 3 effluent streams

         jMF2(j)                 Microfiltration 2 streams
         jMF2F(j)                Microfiltration 2 feed streams
         jMF2S(j)                Microfiltration 2 Solvent Streams (product of intrest)
         jMF2E(j)                Microfiltration 2 effluent streams (waste product)

         jUF1(j)                 Ultrafiltration 1 streams
         jUF1F(j)                Ultrafiltration 1 feed streams
         jUF1S(j)                Ultrafiltratoin 1 solvent streams (product of intrest)
         jUF1E(j)                Ultrafiltration 1 effluent streams (waste product)

         jPVP2(j)                Pervaporation 2 streams
         jPVP2F(j)               Pervaporation 2 feed streams
         jPVP2S(j)               Pervaporation 2 solvent streams (product of intrest)
         jPVP2E(j)               Pervaporation 2 effluent streams (waste product)

         jmix3(j)                Mixing point 3 streams
         jmix3F(j)               Mixing Point 3 feed streams
         jmix3E(j)               Mixing point 3 effluent streams

         jsplit4(j)              Splitter 4 streams
         jsplit4F(j)             Splitter 4 feed streams
         jsplit4E(j)             Splitter 4 effluent streams

         jUF2(j)                 Ultrafiltration 2 streams
         jUF2F(j)                Ultrafiltration 2 feed streams
         jUF2S(j)                Ultrafiltration 2 solvent streams (product of intrest)
         jUF2E(j)                Ultrafiltration 2 effluent streams (waste product)

         jNF(j)                  Nanofiltration streams
         jNFF(j)                 Nanofiltration feed streams
         jNFS(j)                 Nanofiltration solvent streams (product of intrest)
         jNFE(j)                 Nanofiltration effluent streams (waste product)

         jPVP3(j)                Pervaporation 3 streams
         jPVP3F(j)               Pervaporation 3 feed streams
         jPVP3S(j)               Pervaporatoin 3 Solvent streams (product of intrest)
         jPVP3E(j)               Pervaporatoin 3 effluent streams (waste product)

         jBYP1(j)                Bypass 1 stream
         jBYP1F(j)               feed to bypass 1
         jBYP1E(j)               exit from bypass 1

         jBYP2(j)                Bypass 2 stream
         jBYP2F(j)               feed to bypass 2
         jBYP2E(j)               exit from bypass 2

         jBYP3(j)                Bypass 3 stream
         jBYP3F(j)               feed to bypass 3
         jBYP3E(j)               exit from bypass 3

         jBYP4(j)                Bypass 4 stream
         jBYP4F(j)               feed to bypass 4
         jBYP4E(j)               exit from bypass 4
         
         jmix5(j)                Mixing point for all waste streams from previous stages
         jmix5F(j)               feed to mixing point 5
         jmix5E(j)               exit from mixing point 5

         k                       components
         k1(k)                   components in stream flows
         kSld(k)                 Solid components
         kSol(k)                 liquid components
         dkS(k)                  desired recovery components (solvent)
         dkO(k)                  desired recovery components (other components)

         Chem_prop               Input Chemical properties
         dkS_Targets             Recovery Targets (solvent)
         dkO_Targets             Recovery Targets (others)
         ADS_tech                All ADS Units
         SDM_tech                All SDM Units
         PRC_tech                All PRC Units
         CNF_tech                All CNF Units
         DST_tech                All DST Units
         FLT_tech                All FLT Units
         PVP_tech                All PVP Units
         MF_tech                 All MF Units
         UF_tech                 All UF Units
         NF_tech                 All NF Units

         ADS_prop                All ADS Parameters
         SDM_prop                All SDM Parameters
         PRC_prop                All PRC Parameters
         CNF_prop                All CNF Parameters
         DST_prop                All DST Parameters
         FLT_prop                All FLT Parameters
         PVP_prop                All PVP Parameters
         MF_prop                 All MF Parameters
         UF_prop                 All UF Parameters
         NF_prop                 All NF Parameters
         CF_bounds               All CF bounds


         jI
         jIin
         jIout
         kI
         kJ ;


Alias(i,ii,iii); Alias(j,jj,jjj);Alias(k,kk,kkk);Alias (Nstg,Nstg1);

Parameters
ADS_T (ADS_tech, ADS_prop)
SDM_T (SDM_tech, SDM_prop)
PRC_T (PRC_tech, PRC_prop)
CNF_T (CNF_tech, CNF_prop)
DST_T (DST_tech, DST_prop)
FLT_T (FLT_tech, FLT_prop)
PVP_T (PVP_tech, PVP_prop)
MF_T (MF_tech, MF_prop)
UF_T (UF_tech, UF_prop)
NF_T (NF_tech, NF_prop)
Chem_T (k, Chem_prop)
Chem_T_sld (kSld, Chem_prop)
Chem_T_sol (kSol, Chem_prop)
CF_T_bounds
dkS_Constr_T
dkO_Constr_T
P1
Flow
Lbr
Con_mat(j,i)
CMSTR(j,k)
CMUNT(k,i);

$gdxIn Auto_GDX.gdx

$Load         i i1 i2 i3 i4 i5 i6 ibv
$Load         Nstg istg1 istg2 istg3 istg4
$Load         j jsplit1 jsplit1F jsplit1E
$Load         jSDM jSDMF jSDMS jSDME
$Load         jFLT1 jFLT1F jFLT1S jFLT1E
$Load         jADS1 jADS1F jADS1S jADS1E
$Load         jPRC jPRCF jPRCS jPRCE
$Load         jCNF jCNFF jCNFS jCNFE
$Load         jmix1 jmix1F jmix1E
$Load         jsplit2 jsplit2F jsplit2E
$Load         jDST jDSTF jDSTS jDSTE
$Load         jPVP1 jPVP1F jPVP1S jPVP1E
$Load         jADS2 jADS2F jADS2S jADS2E
$Load         jMF1 jMF1F jMF1S jMF1E
$Load         jmix2 jmix2F jmix2E
$Load         jsplit3 jsplit3F jsplit3E
$Load         jMF2 jMF2F jMF2S jMF2E
$Load         jUF1 jUF1F jUF1S jUF1E
$Load         jPVP2 jPVP2F jPVP2S jPVP2E
$Load         jmix3 jmix3F jmix3E
$Load         jsplit4 jsplit4F jsplit4E
$Load         jUF2 jUF2F jUF2S jUF2E
$Load         jNF jNFF jNFS jNFE
$Load         jPVP3 jPVP3F jPVP3S jPVP3E
$Load         jBYP1 jBYP1F jBYP1E
$Load         jBYP2 jBYP2F jBYP2E
$Load         jBYP3 jBYP3F jBYP3E
$Load         jBYP4 jBYP4F jBYP4E
$Load         jmix5 jmix5F jmix5E
$Load         k k1 kSld kSol dkS dkO
$Load         Chem_prop dkS_Targets dkO_Targets
$Load         ADS_tech SDM_tech PRC_tech CNF_tech DST_tech FLT_tech PVP_tech MF_tech UF_tech NF_tech
$Load         ADS_prop SDM_prop PRC_prop CNF_prop DST_prop FLT_prop PVP_prop MF_prop UF_prop NF_prop CF_bounds
$Load         ADS_T SDM_T PRC_T CNF_T DST_T FLT_T PVP_T MF_T UF_T NF_T CF_T_bounds   
$Load         Chem_T Chem_T_sld Chem_T_sol dkS_Constr_T dkO_Constr_T
$Load         P1 Flow Lbr Con_mat CMSTR CMUNT


$gdxIn

display   dkS_Constr_T, dkO_Constr_T;
display i1,i2,i3,i4,i5,i6,ibv;


$ontext
Parameter CON(j,i),CMP1(k,i),CMP2(k,j),CMP22(j,k);

CON(j,i)=CON_mat(j,i);
CMP1(k,i)=CMUNT(k,i);
CMP22(j,k)=CMSTR(j,k);

*all stream for technology i, for when corresponding parameter is in CON(j,i) is not equal to 0.
*So whenever these streams have a value of either +1 or -1, that should be assigned to a particular technology i.

jI(j,i)$[CON(j,i)<>0]=Yes;
jIin(j,i)$[CON(j,i)=+1]=Yes;

*element -1 is out.
jIout(j,i)$[CON(j,i)=-1]=Yes;

kI(i,k)$[CMP1(k,i)<>0]=Yes;
CMP2(k,j)=CMP22(j,k);
kJ(k,j)$[CMP2(k,j)<>0]=Yes;
$offtext

Parameter CON(j,i),CMP1(k,i),CMP2(k,j),CMP22(j,k);

CON(j,i)=CON_mat(j,i);
CMP1(k,i)=CMUNT(k,i);
CMP22(j,k)=CMSTR(j,k);

*all stream for technology i, for when corresponding parameter is in CON(j,i) is not equal to 0.
*So whenever these streams have a value of either +1 or -1, that should be assigned to a particular technology i.

jI(j,i)$[CON(j,i)<>0]=Yes;
jIin(j,i)$[CON(j,i)=+1]=Yes;

*element -1 is out.
jIout(j,i)$[CON(j,i)=-1]=Yes;

kI(i,k)$[CMP1(k,i)<>0]=Yes;
CMP2(k,j)=CMP22(j,k);
kJ(k,j)$[CMP2(k,j)<>0]=Yes;

Parameters

 Qf,g,pi,C_lbr,Rep_time,
 Cp_water,C_stm,C_cwt,C_elec,C_water,Tcw_in,Tcw_out,LH_stm,
 Den(k),MW(k),H_vap(k),Cp(k),BP(k),MP(k),Frac(k),
 pur(dkS),rec(dkS),pur2(dkO),rec2(dkO);
 


Qf=Flow('Qf');
g=P1('g');
pi=P1('pi' );
C_lbr=P1('C_lbr' );
Rep_time=P1('Rep_time' );

Cp_water=P1('Cp_water' );
C_stm=P1('C_stm' );
C_cwt=P1('C_cwt' );
C_elec=P1('C_elec' );
C_water=P1('C_water' );
Tcw_in=P1('Tcw_in' );
Tcw_out=P1('Tcw_out' );
LH_stm=P1('LH_stm' );

Den(k)=Chem_T(k,'Density [kg/m3]');
MW(k)=Chem_T(k,'Molecular Weight [g/mol]');
H_vap(k)=Chem_T(k,'Heat of Vaporization [KJ/Kg]');
Cp(k)=Chem_T(k,'Heat Capacity [KJ/Kg*C]');
BP(k)=Chem_T(k,'Boiling Point [oC]');
MP(k)=Chem_T(k,'Melting Point [oC]');
Frac(k)=Chem_T(k,'Mass Fraction');

pur(dkS)=dkS_Constr_T(dkS,'Pur');
rec(dkS)=dkS_Constr_T(dkS,'Rec');
pur2(dkO)=dkO_Constr_T(dkO,'Pur');
rec2(dkO)=dkO_Constr_T(dkO,'Rec');


Parameter CRF,Tann,C_lbr,BMC_mult;

CRF=P1('CRF');
Tann=P1('Tann');
C_lbr=P1('C_lbr');
BMC_mult=P1('BMC_mult');

Parameters Q0(i1),Nlabr(i1),C0(i1),nc(i1),Wsp(i1);

Q0(i1)=Lbr(i1,'Q0');
Nlabr(i1)=Lbr(i1,'Nlabr');
C0(i1)=Lbr(i1,'C0');
nc(i1)=Lbr(i1,'nc');
Wsp(i1)=Lbr(i1,'Wsp');

Parameters
*Stage 1 parameters(Solid Removal Step)
*SDM
tT_SDM,Eff_SDM,Pur_SDM,DpS_SDM,muL_SDM,rho_sld,rho_liq,
*FLT
Zeta_FLT1,CPM_FLT1,RFLT1(k),Rep_time_FLT1,
*ADS1
Eff_ADS1,Res_time_ADS1,Rep_time_ADS1,GAC_con_ADS1,Bind_ADS1(k),void_ADS1,Den_GAC_ADS1,EBCT_ADS1,bth_ADS1,
*PRC
Den_ASOL,phi_ASOL,Eff_PRC(k),pi_ASOL,
*CNF
Eff_CNF,Tcw_in_CNF,Tcw_out_CNF,
*DST
qf_DST,u_vap_DST,Eff_stg_DST,H_stg_DST,Ref_ct_DST,Hvap_W_DST,MW_St_DST,Cpw_DST,Tsat_DST,Tamb_DST,alpha(k),
*PVP1
Zeta_pvp1,RCpvp1(k),CP_pvp1,
*ADS2
Eff_ADS2,Rep_time_ADS2,Res_time_ADS2,GAC_con_ADS2,Bind_ADS2(k),void_ADS2,Den_GAC_ADS2,EBCT_ADS2,bth_ADS2,
*MF1
Zeta_mf1,RCmf1(k),CP_mf1
*MF2
Zeta_mf2,RCmf2(k),CP_mf2
*UF1
Zeta_uf1,RCuf1(k),CP_uf1
*PVP2
Zeta_pvp2,RCpvp2(k),CP_pvp2
*UF2
Zeta_uf2,RCuf2(k),CP_uf2
*NF
Zeta_nf,RCnf(k),Rep_Time_nf,CP_nf
*PVP3
Zeta_pvp3,RCpvp3(k),CP_pvp3
;

*SDM
tT_SDM=SDM_T('SDM','tT_SDM');
Eff_SDM=SDM_T('SDM','Eff_SDM');
Pur_SDM=SDM_T('SDM','Pur_SDM');
DpS_SDM=SDM_T('SDM','DpS_SDM');
muL_SDM=SDM_T('SDM','muL_SDM');
rho_sld=SDM_T('SDM','rho_s');
rho_liq=SDM_T('SDM','rho_l');

*FLT1
Zeta_FLT1=FLT_T('FLT1','Zeta_FLT');
RFLT1(k)=Chem_T(k,'RFLT1');
CPM_FLT1=FLT_T('FLT1','CPM_FLT');
Rep_Time_FLT1=FLT_T('FLT1','Rep_time_FLT');

*ADS1
Eff_ADS1=ADS_T('ADS1','Eff_ADS');
Bind_ADS1(k)=Chem_T(k,'Bind_ADS1');
Res_time_ADS1=ADS_T('ADS1','Res_time');
Rep_time_ADS1=ADS_T('ADS1','Rep_time_ADS');
GAC_con_ADS1=ADS_T('ADS1','GAC_con');
void_ADS1=ADS_T('ADS1','void');
Den_GAC_ADS1=ADS_T('ADS1','Den_GAC');
EBCT_ADS1=ADS_T('ADS1','EBCT');
bth_ADS1=ADS_T('ADS1','bth');

*PRC
Den_ASOL=PRC_T('PRC','Den_ASOL_PRC');
phi_ASOL=PRC_T('PRC','phi_ASOL_PRC');
pi_ASOL=PRC_T('PRC','pi_ASOL_PRC');
Eff_PRC(k)=Chem_T(k,'Eff_PRC');

*CNF
Eff_CNF=CNF_T('CNF','Eff_CNF');
Tcw_in_CNF=CNF_T('CNF','Tcw_in_CNF');
Tcw_out_CNF=CNF_T('CNF','Tcw_out_CNF');

*DST
alpha(k)=Chem_T(k,'alpha');
qf_DST=DST_T('DST','qf_DST');
u_vap_DST=DST_T('DST','u_vap_DST' );
Eff_stg_DST=DST_T('DST','Eff_stg_DST' );
H_stg_DST=DST_T('DST','H_stg_DST' );
Ref_ct_DST=DST_T('DST','Ref_ct_DST' );
Hvap_W_DST=DST_T('DST','Hvap_W_DST' );
MW_St_DST=DST_T('DST','MW_St_DST' );
Cpw_DST=DST_T('DST','Cpw_DST' );
Tsat_DST=DST_T('DST','Tsat_DST' );
Tamb_DST=DST_T('DST','Tamb_DST' );

*PVP1
Zeta_pvp1=PVP_T('PVP1','Zeta_PVP');
RCpvp1(k)=Chem_T(k,'RCpvp1');
CP_pvp1=PVP_T('PVP1','CP_PVP');

*ADS2
Eff_ADS2=ADS_T('ADS2','Eff_ADS');
Bind_ADS2(k)=Chem_T(k,'Bind_ADS2');
Res_time_ADS2=ADS_T('ADS2','Res_time');
Rep_time_ADS2=ADS_T('ADS2','Rep_time_ADS');
GAC_con_ADS2=ADS_T('ADS2','GAC_con');
void_ADS2=ADS_T('ADS2','void');
Den_GAC_ADS2=ADS_T('ADS2','Den_GAC');
EBCT_ADS2=ADS_T('ADS2','EBCT');
bth_ADS2=ADS_T('ADS2','bth');

*MF1
Zeta_mf1=MF_T('MF1','Zeta_MF');
RCmf1(k)=Chem_T(k,'RCmf1');
CP_mf1=MF_T('MF1','CP_MF');

*MF2
Zeta_mf2=MF_T('MF2','Zeta_MF');
RCmf2(k)=Chem_T(k,'RCmf2');
CP_mf2=MF_T('MF2','CP_MF');

*UF1
Zeta_uf1=UF_T('UF1','Zeta_UF');
RCuf1(k)=Chem_T(k,'RCuf1');
CP_uf1=UF_T('UF1','CP_UF');

*PVP2
Zeta_pvp2=PVP_T('PVP2','Zeta_PVP');
RCpvp2(k)=Chem_T(k,'RCpvp2');
CP_pvp2=PVP_T('PVP2','CP_PVP');

*UF2
Zeta_uf2=UF_T('UF2','Zeta_UF');
RCuf2(k)=Chem_T(k,'RCuf2');
CP_uf2=UF_T('UF2','CP_UF');

*NF
Zeta_nf=NF_T('NF','Zeta_NF');
Rep_Time_nf=NF_T('NF','Rep_time_NF');
RCnf(k)=Chem_T(k,'RCnf' );
CP_nf=NF_T('NF','CP_NF');


*PVP3
Zeta_pvp3=PVP_T('PVP3','Zeta_PVP');
RCpvp3(k)=Chem_T(k,'RCpvp3');
CP_pvp3=PVP_T('PVP3','CP_PVP');


Parameters
M1(k),M2(k),M3(k),M4(k);

*Big M for logic constraints for stage 1
M1(k)=5000;
*Big M for logic constraints for stage 2
M2(k)=5000;
*Big M for logic constraints for stage 3
M3(k)=5000;
*Big M for logic constraints for stage 4
M4(k)=5000;

Positive Variables
         M(j,k)                  mass flowrate of component k in streams j
         CF(i1)                  concentration factor of unit i
         A(i1)                   area of unit i
         V(i1)                   volume of unit i
         Qc(i1)                  standard for cost estimation of unit i
         Cc(i1)                  purchase cost of unit i
         PW(i1)                  power required in unit i
         Mcw(i1)                 cooling water required
         Mstm(i1)                steam required for heating
         Nlbr(i1)                number of laborers for unit i
         Cpr(k)                  cost of added components
         Cons(i4)                consumable cost for membrane units
         U(i1)                   sigma factor of technolohy
         Vb(i)                   Volume of adsorbent bed for unit i
         Vf(i)                   Volume fed to unit i
         MAC_ADS1                Mass of Activated Carbon ADS1
         MAC_ADS2                Mass of Activated Carbon ADS2
         Masolv                  mass of anti-solvent
         RM_Cost(i5)             Raw material cost ;

Binary variables
         y(ibv)                  binary variable corresponding to the unit ibv;


Equations
Initial_mass(k)                  flow assignment
CMB(i,k)                         component mass balance in all units
Cost_units(i1)                   cost of units
Nlabr_units(i1)                  labors required in units;

Initial_mass(k)..                M('1',k) =e= Qf*Frac(k);
CMB(i,k)$(kI(i,k))..             sum(j$jIin(j,i),M(j,k))=e=sum(j$jIout(j,i),M(j,k));
Cost_units(i1)..                 Cc(i1)/C0(i1)=e=((Qc(i1)/Q0(i1))**nc(i1));
Nlabr_units(i1)..                Nlbr(i1)=e=Nlabr(i1)*(Qc(i1)/Q0(i1));


***********************************************************************************
******************************STAGE 1**********************************************

Equations
logSDM(j,k)                      logical eqn-SDM
logFLT1(j,k)                     logical eqn-FLT1
logADS1(j,k)                     logical eqn-ADS1
logPRC(j,k)                      logical eqn-PRC
logCNF(j,k)                      logical eqn-CNF
logBYP1(j,k)                     logical eqn-CNF
select1                          selection of units for stage 1;


*unit selection

logSDM(j,k)$(jI(j,'SDM') and (CMP2(k,j)$(jI(j,'SDM'))<>0))..     M(j,k)-M1(k)*y('SDM')=l=0;
logFLT1(j,k)$(jI(j,'FLT1') and (CMP2(k,j)$(jI(j,'FLT1'))<>0))..  M(j,k)-M1(k)*y('FLT1')=l=0;
logADS1(j,k)$(jI(j,'ADS1') and (CMP2(k,j)$(jI(j,'ADS1'))<>0))..  M(j,k)-M1(k)*y('ADS1')=l=0;
logPRC(j,k)$(jI(j,'PRC') and (CMP2(k,j)$(jI(j,'PRC'))<>0))..     M(j,k)-M1(k)*y('PRC')=l=0;
logCNF(j,k)$(jI(j,'CNF') and (CMP2(k,j)$(jI(j,'CNF'))<>0))..     M(j,k)-M1(k)*y('CNF')=l=0;
logBYP1(j,k)$(jI(j,'BYP1') and (CMP2(k,j)$(jI(j,'BYP1'))<>0))..  M(j,k)-M1(k)*y('BYP1')=l=0;
select1..                                                        y('SDM')+y('FLT1')+y('ADS1')+y('PRC')+y('CNF')+y('BYP1')=e=1;
y.fx('SDM')=0;
*y.fx('FLT1')=0;
y.fx('ADS1')=0;
*y.fx('PRC')=0;
*y.fx('CNF')=0;
y.fx('BYP1')=1;

******************Sedimentation********************
**F=2, E=3, S=4

Parameters Ug_SDM, SOR_SDM;
Ug_SDM=(g*(DpS_SDM**2)*(rho_sld-rho_liq))/(18*muL_SDM);
**THIS IS WRONG its ===> Ug/Eff
SOR_SDM=Ug_SDM/Eff_SDM;

Equations
effeqn_SDM_S(jSDMF,jSDME,kSld)         efficiency of solid removal
effeqn_SDM_W(jSDMF,jSDMS,kSol)         solvent retention efficiency
Confac_SDM(jSDMS,jSDMF)                CF equation for sdm
Area_SDM(jSDMF)                        equation for area
SCap_SDM                               standard capacity of sedimentation tank;

effeqn_SDM_S(jSDMF,jSDME,kSld)..       Eff_SDM*M(jSDMF,kSld)=e=M(jSDME,kSld);
effeqn_SDM_W(jSDMF,jSDMS,kSol)..       Eff_SDM*M(jSDMF,kSol)=e=M(jSDMS,kSol);
Confac_SDM(jSDMS,jSDMF)..              CF('SDM')*sum(k,M(jSDMS,k)/Den(k))=e=sum(k,M(jSDMF,k)/Den(k));
CF.lo('SDM')=CF_T_bounds('SDM','LB');
CF.up('SDM')=CF_T_bounds('SDM','UB');  
Area_SDM(jSDMF)..                      SOR_SDM*3600*A('SDM')=e=sum(k,M(jSDMF,k)/Den(k));
SCap_SDM..                             Qc('SDM')=e=A('SDM');
PW.fx('SDM')=0;

********************Filtration*************************
**F=5, E=6, S=7

**look at CF equation. For PET case study CF = 1.013


*parameter Cf_lo_SDM;

*Cf_lo_SDM=1;
Equations
Retent_FLT1(jFLT1E,jFLT1F,k)            retention factor in filter
Conc_FLT1(jFLT1S,jFLT1F)                concentration factor in filter
Flux_Bal_FLT1(jFLT1F)                   flux balance around filter
Cons_eq_FLT1(i4)                        consumable cost of membrane
PW_req_FLT1                             power required;

Retent_FLT1(jFLT1E,jFLT1F,k)..          M(jFLT1E,k) =e= M(jFLT1F,k)*RFLT1(k);
Conc_FLT1(jFLT1S,jFLT1F)..              sum(k,M(jFLT1S,k)/Den(k))*CF('FLT1') =e= sum(k,M(jFLT1F,k)/Den(k));
CF.lo('FLT1')=CF_T_bounds('FLT','LB');
CF.up('FLT1')=CF_T_bounds('FLT','UB');
Flux_Bal_FLT1(jFLT1F)..                 Zeta_FLT1*Qc('FLT1')*CF('FLT1')=e= (sum(k,(M(jFLT1F,k)/Den(k))))*(CF('FLT1')-1);
Cons_eq_FLT1(i4)..                      Cons('FLT1') =e= (Tann/Rep_time_FLT1)*CPM_FLT1*Qc('FLT1');
PW_req_FLT1..                           PW('FLT1') =e= Wsp('FLT1')*Qc('FLT1');

********************Adsorption 1***********************
**F=8, E=9, S=10
*jADS1FES

Equations
Reten_ADS1(jADS1F,jADS1E,k)                    component retention
Bed_Volume_ADS1(jADS1F)                        volume of adsorption bed
MAC_ADS1_eqn                                   mass of activated carbon
Cons_eq_ADS1(i4)                               Consumable cost
Actual_Capacity_ADS1                           capacity of column
PowReq_ADS1                                    power required;


Reten_ADS1(jADS1F,jADS1E,k)..                  M(jADS1F,k)*Bind_ADS1(k)=e=M(jADS1E,k);
Bed_Volume_ADS1(jADS1F)..                      Vb('ADS1')=e=EBCT_ADS1*sum(k,(M(jADS1F,k)/Den(k)));
MAC_ADS1_eqn..                                 MAC_ADS1=e=(1-void_ADS1)*Vb('ADS1')*Den_GAC_ADS1;
Cons_eq_ADS1(i4)..                             Cons('ADS1')=e= (Tann/Rep_time_ADS1)*MAC_ADS1*GAC_con_ADS1;
Actual_Capacity_ADS1..                         Qc('ADS1')*bth_ADS1=e=Vb('ADS1');
PowReq_ADS1..                                  PW('ADS1')=e=Wsp('ADS1')*Qc('ADS1');

******************Precipitation************************
**F=11, E=12, S=13
*jPRCSEF

Equations
Mprc_PRC(jPRCF,jPRCE,k)                      Mass precipitated
Masolv_PRC(jPRCF)                            Mass of anti-solvent required for precipitation
RM_Cost_PRC(i5)                              raw material cost for precipitation unit
Capacity_PRC(jPRCF)                          capacity of precipitation unit
PW_PRC                                       power required to precipitation unit;

Mprc_PRC(jPRCF,jPRCE,k)..                    M(jPRCF,k)*Eff_PRC(k)=e=M(jPRCE,k);
Masolv_PRC(jPRCF)..                          Masolv=e=phi_ASOL*sum(kSld,M(jPRCF,kSld));
RM_Cost_PRC(i5)..                            RM_Cost('PRC')=e=pi_ASOL*Masolv;
*missing residence time
Capacity_PRC(jPRCF)..                        Qc('PRC')=e=sum(k,(M(jPRCF,k)/Den(k)));
PW_PRC..                                     PW('PRC')=e=Wsp('PRC')*Qc('PRC');

******************Centrifugation*************************
**F=14, E=15, S=16
*jCNFFES

Equations
Eff_solid_CNF(jCNFF,jCNFE,kSld)        solid removal efficiency
Eff_solv_CNF(jCNFF,jCNFS,kSol)         solvent retention efficiency
CF_eqn_CNF(jCNFS,jCNFF)                concentration factor equation
Sigma_eqn_CNF(jCNFF)                   sigma factor equation
PW_eqn_CNF(jCNFF)                      power equation
PW_diss_CNF                            power dissapation due to heat;

Eff_solid_CNF(jCNFF,jCNFE,kSld)..      Eff_CNF*M(jCNFF,kSld) =e= M(jCNFE,kSld);
Eff_solv_CNF(jCNFF,jCNFS,kSol)..       Eff_CNF*M(jCNFF,kSol) =e= M(jCNFS,kSol);
CF_eqn_CNF(jCNFS,jCNFF)..              CF('CNF')*sum(k,M(jCNFS,k)/Den(k)) =e= sum(k,M(jCNFF,k)/Den(k));
CF.lo('CNF')=CF_T_bounds('CNF','LB');
CF.up('CNF')=CF_T_bounds('CNF','UB');
Sigma_eqn_CNF(jCNFF)..                 Qc('CNF')*U('CNF') =e= sum(k,M(jCNFF,k)/Den(k));
U.up('CNF')=0.01;
PW_eqn_CNF(jCNFF)..                    PW('CNF') =e= Wsp('CNF')*sum(k,M(jCNFF,k)/Den(k));
PW_diss_CNF..                          Mcw('CNF')*Cp_water*(Tcw_out_CNF-Tcw_in_CNF) =e= 0.4*PW('CNF');


**********************************************************************************
************************************STAGE 2***************************************


Equations
logDST(j,k)                      logical eqn-DST
logPVP1(j,k)                     logical eqn-PVP1
logADS2(j,k)                     logical eqn-ADS2
logMF1(j,k)                      logical eqn-MF1
logBYP2(j,k)                     logical eqn-BYP1
select2                          selection of units for stage 2;


logDST(j,k)$(jI(j,'DST') and (CMP2(k,j)$(jI(j,'DST'))<>0))..     M(j,k)-M2(k)*y('DST')=l=0;
logPVP1(j,k)$(jI(j,'PVP1') and (CMP2(k,j)$(jI(j,'PVP1'))<>0))..  M(j,k)-M2(k)*y('PVP1')=l=0;
logADS2(j,k)$(jI(j,'ADS2') and (CMP2(k,j)$(jI(j,'ADS2'))<>0))..  M(j,k)-M2(k)*y('ADS2')=l=0;
logMF1(j,k)$(jI(j,'MF1') and (CMP2(k,j)$(jI(j,'MF1'))<>0))..     M(j,k)-M2(k)*y('MF1')=l=0;
logBYP2(j,k)$(jI(j,'BYP2') and (CMP2(k,j)$(jI(j,'BYP2'))<>0))..  M(j,k)-M1(k)*y('BYP2')=l=0;
select2..                                                        y('DST')+y('PVP1')+y('ADS2')+y('MF1')+y('BYP2')=e=1;

y.fx('DST')=0;
y.fx('ADS2')=0;
*y.fx('PVP1')=0;
*y.fx('MF1')=0;
*y.fx('BYP2')=0;


*************Distillation***********************
**F=18, E=19, S=20
$ontext
Positive Variables
F(j,k)                           molar flowrate of components of dist 1 in kmol h^-1
Xm(j,k)                          mole fractions of components of dist 1;

Equations
Mol_dst1(jDST,k)                 molar flow of components in dst
Molfrac_dst1(jDST,k)             molar flows of components;
*Mol_fraction_sum(jDST) mole fraction sum eqn;



Mol_dst1(jDST,k)..               F(jDST,k)*MW(k)=e=M(jDST,k);
Molfrac_dst1(jDST,k)..           Xm(jDST,k)*(sum(kk,(F(jDST,kk))))=e=F(jDST,k);
*Mol_fraction_sum(jDST).. sum(k,Xm(jDST,k))=e=1;


Equations
*Distillation component constraints:
Rec_a_constr                     LK recovery constraint
Rec_b_constr                     HK component recovery;

Rec_a_constr..                   Xm('19','PET')=g=0.0146;
Rec_b_constr..                   Xm('20','EB')=g=0.395;


Positive variables
*Design variables
         Qcst_dst                volume of column
         N_min                   minimum number of plates
*         N                       number of plates
         N_act                   actual number of plates
         R_min                   minimum reflux ratio
         R                       reflux ratio actual
         U_v2                    Underwoods variable
         Liq_dst                 liquid flowrate in column
         Vap_dst                 vapor flowrate in column
         D_dst                   diameter
         H_dst                   height of column
         Vol                     column volume;

Equations
Num_min                          minimum number of stages
Uv_eqn                           underwood variable
R_min_eqn                        minimum reflux ratio
Ract_eqn                         actual reflux
*N_eqn                            number of stages suggested by towler
N_act_eqn                        actual number of stages
H_dst_eqn                        height of column in ft
Liq_dst_eqn                      liquid flowrate within the colum  mol h^-1
Vap_dst_eqn                      Vapor flowrate within the column
D_dst_eqn                        Column diameter m
Vol_eqn                          volume of distillation column m^3
Cap_DST_eqn                      Capacity of distillation column                                 ;

*Num_min.. N_min*log10(alpha('EB')) =e= [log10(Xm('19','PET'))-(log10(1-Xm('19','PET')))] + [log10(1-Xm('20','PET'))- log10Xm('19','EB')];
Num_min..                        ((alpha('EB'))**N_min)*Xm('20','EB')*(1-Xm('19','PET')) =e= Xm('19','PET')*(1-Xm('20','EB'));
*Uv_eqn..                        sum(k,(Xm('18',k)*alpha(k))*(sum(kk$(not sameas(kk,k)),(alpha(kk)-U_v2))))=e=(1-qf_DST);
Uv_eqn..                         sum(k,(Xm('18',k)*alpha(k))/(alpha(k)-U_v2)) =e= (1-qf_DST);
*R_min_eqn..                      (R_min+1)*(prod(k,(alpha(k)-U_v2)))=e= sum(k,(Xm('19',k)*alpha(k))*(prod(kk$(not sameas(kk,k)),(alpha(kk)-U_v2))));
R_min_eqn..                      sum(k,(Xm('19',k)*alpha(k))/(alpha(k)-U_v2)) =e=(R_min+1);
Ract_eqn..                       R =e= 1.3*R_min;
*N_eqn..                          0.6*N =e= N_min;
N_act_eqn..                      N_act*Eff_stg_DST =e= N_min;
H_dst_eqn..                      H_dst =e= H_stg_DST*N_act;
*Liq_dst_eqn..                    Liq_dst =e= R*(sum(k,(M('19',k))));
Liq_dst_eqn..                    Liq_dst =e=R*(sum(k,F('19',k)));
*Vap_dst_eqn..                    Vap_dst=e= Liq_dst+(sum(k,(M('20',k))));
Vap_dst_eqn..                    Vap_dst=e= Liq_dst+ (sum(k,F('19',k)));
*D_dst_eqn..                      D_dst*sqrt(1.25*pi*u_vap_DST) =e= sqrt(4*Vap_dst);
D_dst_eqn..                      D_dst*sqrt(1.25*pi*3.419*u_vap_DST) =e= sqrt(4*Vap_dst*MW('EB'));
Vol_eqn..                        4*Vol =e= pi*(D_dst**2)*H_dst;
Cap_DST_eqn..                    Qc('DST')=e=Vol;
*Xm.fx(j,k)= 1;

**Dummy parameter for density of EB = 3.419

Positive variables
QS_dst                           initial heating of the feed to reach saturation
QH_dst                           heat duty of condenser
*QC_dst                           cooling duty
Mstm_dst                         Steam required
Mcw_dst                          Cooling water required
Q_cost(i1)                       total heat duty cost;


Equations
*utility requirements
QS_dst_eqn                       initial heating of the feed to reach saturation
QH_dst_eqn                       heat duty of reboiler
*QC_dst_eqn                       cooling duty
Mstm_dst_eqn                     Steam required
Mcw_dst_eqn                      Cooling water required
Q_tot_eqn                        total heat duty in $
PowReq_DST                       Power required;

QS_dst_eqn..                     QS_dst=e=sum(k,(M('18',k)*Cp(k)*(Tsat_DST-Tamb_DST)));
*QH_dst_eqn..                    QH_dst =e= (1+R)*sum(kSol,(M('20',kSol)*H_vap(kSol)));
QH_dst_eqn..                     QH_dst =e= (1+R)*(sum(kSol,F('20',kSol)*H_vap(kSol)*MW(kSol)));
*QC_dst_eqn..                     QC_dst =e= R*sum(kSol,(M('20',kSol)*H_vap(kSol)));
*Mstm_dst_eqn..                   Mstm('DST')*LH_stm =e= QS_dst+ QH_dst;
Mstm_dst_eqn..                   Mstm('DST')*LH_stm =e= QS_dst;
*Mcw_dst_eqn..                    Mcw('DST')*Cp_water*(Tcw_out-Tcw_in) =e= QC_dst;
Mcw_dst_eqn..                    Mcw('DST')*Cp_water*(Tcw_out-Tcw_in) =e= QH_dst;
Q_tot_eqn..                      Q_cost('DST') =e= (QS_dst+QH_dst);
PowReq_DST..                     PW('DST')=e= Q_cost('DST');

$ontext

Variables
S(i,e)                           weight of equipment kg
Ce(i,e)                          Capital cost of equipment $
Cap(i)                           Total capital cost $;

Equations
*capital costs
S_eqnv                           weight of column kg
Ce_eqnv                          vessel towler equation 7.9
S_eqnp                           volume of packing m^3
Ce_eqnp                          packing towler equation 7.9
Cap_eqn                          total capital cost;

S_eqnv..                         S('DST','v')=e=5.4*D_dst*H_dst/2.204;
Ce_eqnv..                        Ce('DST','v')=e=(17400+79*S('DST','v')**0.85)*(787/532.9);
S_eqnp..                         S('DST','p')=e=Vol*(3.2808**3);
Ce_eqnp..                        Ce('DST','p')=e=S('DST','p')*8500;
Cap_eqn..                        Cc('DST')=e=sum(e,Ce('DST',e));

*$offtext



**********old code**********
$ontext
Positive Variables
F(j,k)                           molar flowrate of components of dist 1 in kmol h^-1
Xm(j,k)                          mole fractions of components of dist 1;

Equations
Mol_dst1(jDST,k)                 molar flow of components in dst
Molfrac_dst1(jDST,k)             molar flows of components;
*Mol_fraction_sum(jDST) mole fraction sum eqn;



Mol_dst1(jDST,k)..               F(jDST,k)*MW(k)=e=M(jDST,k);
Molfrac_dst1(jDST,k)..           Xm(jDST,k)*(sum(kk,(F(jDST,kk))))=e=F(jDST,k);
*Mol_fraction_sum(jDST).. sum(k,Xm(jDST,k))=e=1;


Equations
*Distillation component constraints:
Rec_a_constr                     LK recovery constraint
Rec_b_constr                     HK component recovery;

Rec_a_constr..                   Xm('19','PET')=g=0.0146;
Rec_b_constr..                   Xm('20','EB')=g=0.395;


Positive variables
*Design variables
         Qcst_dst                volume of column
         N_min                   minimum number of plates
*         N                       number of plates
         N_act                   actual number of plates
         R_min                   minimum reflux ratio
         R                       reflux ratio actual
         U_v2                    Underwoods variable
         Liq_dst                 liquid flowrate in column
         Vap_dst                 vapor flowrate in column
         D_dst                   diameter
         H_dst                   height of column
         Vol                     column volume;

Equations
Num_min                          minimum number of stages
Uv_eqn                           underwood variable
R_min_eqn                        minimum reflux ratio
Ract_eqn                         actual reflux
*N_eqn                            number of stages suggested by towler
N_act_eqn                        actual number of stages
H_dst_eqn                        height of column in ft
Liq_dst_eqn                      liquid flowrate within the colum  mol h^-1
Vap_dst_eqn                      Vapor flowrate within the column
D_dst_eqn                        Column diameter m
Vol_eqn                          volume of distillation column m^3
Cap_DST_eqn                      Capacity of distillation column                                 ;

*Num_min.. N_min*log10(alpha('EB')) =e= [log10(Xm('19','PET'))-(log10(1-Xm('19','PET')))] + [log10(1-Xm('20','PET'))- log10Xm('19','EB')];
Num_min..                        ((alpha('EB'))**N_min)*Xm('20','EB')*(1-Xm('19','PET')) =e= Xm('19','PET')*(1-Xm('20','EB'));
*Uv_eqn..                        sum(k,(Xm('18',k)*alpha(k))*(sum(kk$(not sameas(kk,k)),(alpha(kk)-U_v2))))=e=(1-qf_DST);
Uv_eqn..                         sum(k,(Xm('18',k)*alpha(k))/(alpha(k)-U_v2)) =e= (1-qf_DST);
*R_min_eqn..                      (R_min+1)*(prod(k,(alpha(k)-U_v2)))=e= sum(k,(Xm('19',k)*alpha(k))*(prod(kk$(not sameas(kk,k)),(alpha(kk)-U_v2))));
R_min_eqn..                      sum(k,(Xm('19',k)*alpha(k))/(alpha(k)-U_v2)) =e=(R_min+1);
Ract_eqn..                       R =e= 1.3*R_min;
*N_eqn..                          0.6*N =e= N_min;
N_act_eqn..                      N_act*Eff_stg_DST =e= N_min;
H_dst_eqn..                      H_dst =e= H_stg_DST*N_act;
*Liq_dst_eqn..                    Liq_dst =e= R*(sum(k,(M('19',k))));
Liq_dst_eqn..                    Liq_dst =e=R*(sum(k,F('19',k)));
*Vap_dst_eqn..                    Vap_dst=e= Liq_dst+(sum(k,(M('20',k))));
Vap_dst_eqn..                    Vap_dst=e= Liq_dst+ (sum(k,F('19',k)));
*D_dst_eqn..                      D_dst*sqrt(1.25*pi*u_vap_DST) =e= sqrt(4*Vap_dst);
D_dst_eqn..                      D_dst*sqrt(1.25*pi*3.419*u_vap_DST) =e= sqrt(4*Vap_dst*MW('EB'));
Vol_eqn..                        4*Vol =e= pi*(D_dst**2)*H_dst;
Cap_DST_eqn..                    Qc('DST')=e=Vol;
*Xm.fx(j,k)= 1;

**Dummy parameter for density of EB = 3.419

Positive variables
QS_dst                           initial heating of the feed to reach saturation
QH_dst                           heat duty of condenser
*QC_dst                           cooling duty
Mstm_dst                         Steam required
Mcw_dst                          Cooling water required
Q_cost(i1)                       total heat duty cost;


Equations
*utility requirements
QS_dst_eqn                       initial heating of the feed to reach saturation
QH_dst_eqn                       heat duty of reboiler
*QC_dst_eqn                       cooling duty
Mstm_dst_eqn                     Steam required
Mcw_dst_eqn                      Cooling water required
Q_tot_eqn                        total heat duty in $
PowReq_DST                       Power required;

QS_dst_eqn..                     QS_dst=e=sum(k,(M('18',k)*Cp(k)*(Tsat_DST-Tamb_DST)));
*QH_dst_eqn..                    QH_dst =e= (1+R)*sum(kSol,(M('20',kSol)*H_vap(kSol)));
QH_dst_eqn..                     QH_dst =e= (1+R)*(sum(kSol,F('20',kSol)*H_vap(kSol)*MW(kSol)));
*QC_dst_eqn..                     QC_dst =e= R*sum(kSol,(M('20',kSol)*H_vap(kSol)));
*Mstm_dst_eqn..                   Mstm('DST')*LH_stm =e= QS_dst+ QH_dst;
Mstm_dst_eqn..                   Mstm('DST')*LH_stm =e= QS_dst;
*Mcw_dst_eqn..                    Mcw('DST')*Cp_water*(Tcw_out-Tcw_in) =e= QC_dst;
Mcw_dst_eqn..                    Mcw('DST')*Cp_water*(Tcw_out-Tcw_in) =e= QH_dst;
Q_tot_eqn..                      Q_cost('DST') =e= (QS_dst+QH_dst);
PowReq_DST..                     PW('DST')=e= Q_cost('DST');

$ontext

Variables
S(i,e)                           weight of equipment kg
Ce(i,e)                          Capital cost of equipment $
Cap(i)                           Total capital cost $;

Equations
*capital costs
S_eqnv                           weight of column kg
Ce_eqnv                          vessel towler equation 7.9
S_eqnp                           volume of packing m^3
Ce_eqnp                          packing towler equation 7.9
Cap_eqn                          total capital cost;

S_eqnv..                         S('DST','v')=e=5.4*D_dst*H_dst/2.204;
Ce_eqnv..                        Ce('DST','v')=e=(17400+79*S('DST','v')**0.85)*(787/532.9);
S_eqnp..                         S('DST','p')=e=Vol*(3.2808**3);
Ce_eqnp..                        Ce('DST','p')=e=S('DST','p')*8500;
Cap_eqn..                        Cc('DST')=e=sum(e,Ce('DST',e));

$offtext

*************Pervaporation 1*********************
**F=21, E=22, S=23
*jPVP1FES

Equations
Retent_PVP1(jPVP1F,jPVP1E,k)                Retention factor in PVP1
Conc_PVP1(jPVP1E,jPVP1F)                    Concentration Factor in PVP1
Fluxbal_PVP1(jPVP1F)                        flux balance in PVP1
Cons_eq_PVP1(i4)                            consumable cost of pervaporation 1 unit
PowReq_PVP1                                 Power required in PVP1
HReq_PVP1(JPVP1S)                           Heat required in PVP1;

Retent_PVP1(jPVP1F,jPVP1E,k)..              M(jPVP1F,k)*RCpvp1(k)=e= M(jPVP1E,k);
Conc_PVP1(jPVP1E,jPVP1F)..                  sum(k,(M(jPVP1E,k)/Den(k)))*CF('PVP1')=e=sum(k,(M(jPVP1F,k)/Den(k)));
CF.lo('PVP1') =CF_T_bounds('PVP','LB');
CF.up('PVP1') = CF_T_bounds('PVP','UB');

Fluxbal_PVP1(jPVP1F)..                      Zeta_PVP1*Qc('PVP1') =e= (1-(1/CF('PVP1')))*(sum(k,(M(jPVP1F,k)/Den(k))));
Cons_eq_PVP1(i4)..                          Cons('PVP1') =e= (Tann/Rep_time)*CP_pvp1*Qc('PVP1');
PowReq_PVP1..                               PW('PVP1') =e= Wsp('PVP1')*Qc('PVP1');
HReq_PVP1(JPVP1S)..                         Mstm('PVP1')*LH_stm =e=sum(k,(M(JPVP1S,k)*H_vap(k)));          

*************Asorption 2************************
**F=24, E=25, S=26
*jADS2FES

Equations
Reten_ADS2(jADS2F,jADS2E,k)                     component retention
Bed_Volume_ADS2(jADS2F)                         volume of adsorption bed
MAC_ADS2_eqn                                    mass of activated carbon
Cons_eq_ADS2(i4)                                Consumable cost
Actual_Capacity_ADS2                            capacity of column
PowReq_ADS2                                     power required;


Reten_ADS2(jADS2F,jADS2E,k)..                   M(jADS2F,k)*Bind_ADS2(k)=e=M(jADS2E,k);
Bed_Volume_ADS2(jADS2F)..                       Vb('ADS2')=e=EBCT_ADS2*sum(k,(M(jADS2F,k)/Den(k)));
MAC_ADS2_eqn..                                  MAC_ADS2=e=(1-void_ADS2)*Vb('ADS2')*Den_GAC_ADS2;
Cons_eq_ADS2(i4)..                              Cons('ADS2')=e= (Tann/Rep_time_ADS2)*MAC_ADS2*GAC_con_ADS2;
Actual_Capacity_ADS2..                          Qc('ADS2')*bth_ADS2=e=Vb('ADS2');
PowReq_ADS2..                                   PW('ADS2')=e=Wsp('ADS2')*Qc('ADS2');

********************Microfiltration 1****************
**F=27, E=28, S=29
*jMF1FES

Equations
Retent_mf1(jMF1F,jMF1E,k)                       Retention Factor
Conc_mf1(jMF1E,jMF1F)                           Concentration Factor
Fluxbal_mf1(jMF1F)                              Flux Balance
Cons_eq_MF1(i4)                                 consumable cost
PowReq_mf1                                      power required;

Retent_mf1(jMF1F,jMF1E,k)..                     M(jMF1F,k)*RCmf1(k)=e=M(jMF1E,k);
Conc_mf1(jMF1E,jMF1F)..                         CF('MF1')*(sum(k,((M(jMF1E,k)/Den(k)))))=e=(sum(k,((M(jMF1F,k)/Den(k)))));
CF.lo('MF1')=CF_T_bounds('MF','LB');
CF.up('MF1')=CF_T_bounds('MF','UB');
Fluxbal_mf1(jMF1F)..                            (sum(k,(M(jMF1F,k)/Den(k))))*(1-(1/CF('MF1')))=e=Zeta_mf1*Qc('MF1');
Cons_eq_MF1(i4)..                               Cons('MF1') =e= (Tann/Rep_time)*CP_mf1*Qc('MF1');
PowReq_mf1..                                    PW('MF1')=e=Wsp('MF1')*Qc('MF1');


*******************************************************************************
***************************STAGE 3*********************************************

Equations
logMF2(j,k)                      logical eqn-MF2
logUF1(j,k)                      logical eqn-UF1
logPVP2(j,k)                     logical eqn-PVP2
logBYP3(j,k)
select3                          selection of units for stage 3;


logMF2(j,k)$(jI(j,'MF2') and (CMP2(k,j)$(jI(j,'MF2'))<>0))..     M(j,k)-M3(k)*y('MF2')=l=0;
logUF1(j,k)$(jI(j,'UF1') and (CMP2(k,j)$(jI(j,'UF1'))<>0))..     M(j,k)-M3(k)*y('UF1')=l=0;
logPVP2(j,k)$(jI(j,'PVP2') and (CMP2(k,j)$(jI(j,'PVP2'))<>0))..  M(j,k)-M3(k)*y('PVP2')=l=0;
logBYP3(j,k)$(jI(j,'BYP3') and (CMP2(k,j)$(jI(j,'BYP3'))<>0))..  M(j,k)-M1(k)*y('BYP3')=l=0;
select3..                                                        y('MF2')+y('UF1')+y('PVP2')+y('BYP3')=e=1;

*y.fx('MF2')=0;
*y.fx('UF1')=0;
*y.fx('PVP2')=0;
*y.fx('BYP3')=0;


*************Microfiltration 2********************
**F=31, E=32, S=33
*jMF2FES

Equations
Retent_mf2(jMF2F,jMF2E,k)                       Retention Factor
Conc_mf2(jMF2E,jMF2F)                           Concentration Factor
Fluxbal_mf2(jMF2F)                              Flux Balance
Cons_eq_MF2(i4)                                 consumable cost
PowReq_mf2                                      power requirements;

Retent_mf2(jMF2F,jMF2E,k)..                     M(jMF2F,k)*RCmf2(k)=e=M(jMF2E,k);
Conc_mf2(jMF2E,jMF2F)..                         CF('MF2')*(sum(k,((M(jMF2E,k)/Den(k)))))=e=(sum(k,((M(jMF2F,k)/Den(k)))));
CF.lo('MF2')=CF_T_bounds('MF','LB');
CF.up('MF2')=CF_T_bounds('MF','UB');
Fluxbal_mf2(jMF2F)..                            (sum(k,(M(jMF2F,k)/Den(k))))*(1-(1/CF('MF2')))=e=Zeta_mf2*Qc('MF2');
Cons_eq_MF2(i4)..                               Cons('MF2') =e= (Tann/Rep_time)*CP_mf2*Qc('MF2');
PowReq_mf2..                                    PW('MF2')=e=Wsp('MF2')*Qc('MF2');


***************Ultrafiltration 1 *****************
**F=34, E=35, S=36
*jUF1FES

Equations
Retent_UF1(jUF1F,jUF1E,k)                       Retention Factor
Conc_UF1(jUF1E,jUF1F)                           Concentration Factor
Fluxbal_UF1(jUF1F)                              Flux Balance
Cons_eq_UF1(i4)                                 consumable cost
PowReq_UF1                                      power requirements;

Retent_UF1(jUF1F,jUF1E,k)..                     M(jUF1F,k)*RCuf1(k)=e=M(jUF1E,k);
Conc_UF1(jUF1E,jUF1F)..                         CF('UF1')*(sum(k,((M(jUF1E,k)/Den(k)))))=e=(sum(k,((M(jUF1F,k)/Den(k)))));
CF.lo('UF1')=CF_T_bounds('UF','LB');
CF.up('UF1')=CF_T_bounds('UF','UB');
Fluxbal_UF1(jUF1F)..                            (sum(k,(M(jUF1F,k)/Den(k))))*(1-(1/CF('UF1')))=e=Zeta_uf1*Qc('UF1');
Cons_eq_UF1(i4)..                               Cons('UF1') =e= (Tann/Rep_time)*CP_uf1*Qc('UF1');
PowReq_UF1..                                    PW('UF1')=e=Wsp('UF1')*Qc('UF1');


**************Pervaporation 2**********************
**F=37, E=38, S=39
*jPVP2FES

Equations
Retent_PVP2(jPVP2F,jPVP2E,k)                    Retention factor in PVP2
Conc_PVP2(jPVP2E,jPVP2F)                        Concentration Factor in PVP2
Fluxbal_PVP2(jPVP2F)                            flux balance in PVP2
Cons_eq_PVP2(i4)                                consumable cost
PowReq_PVP2                                     Power required in PVP2
HReq_PVP2(jPVP2S)                               Heat required in PVP2;


Retent_PVP2(jPVP2F,jPVP2E,k)..                  M(jPVP2F,k)*RCpvp2(k)=e= M(jPVP2E,k);
Conc_PVP2(jPVP2E,jPVP2F)..                      sum(k,(M(jPVP2E,k)/Den(k)))*(CF('PVP2'))=e=sum(k,(M(jPVP2F,k)/Den(k)));
CF.lo('PVP2') =CF_T_bounds('PVP','LB');
CF.up('PVP2') = CF_T_bounds('PVP','UB');
Fluxbal_PVP2(jPVP2F)..                          Zeta_pvp2*Qc('PVP2') =e= (1-(1/CF('PVP2')))*sum(k,(M(jPVP2F,k)/Den(k)));
Cons_eq_PVP2(i4)..                              Cons('PVP2') =e= (Tann/Rep_time)*CP_pvp2*Qc('PVP2');
PowReq_PVP2..                                   PW('PVP2') =e= Wsp('PVP2')*Qc('PVP2');
HReq_PVP2(jPVP2S)..                             Mstm('PVP2')*LH_stm =e=sum(k,(M(jPVP2S,k)*H_vap(k)));

************************************************************************************
*************************************STAGE 4****************************************

Equations
logUF2(j,k)                      logical eqn-UF2
logNF(j,k)                       logical eqn-NF
logPVP3(j,k)                     logical eqn-PVP3
logBYP4(j,k)
select4                          selection of units for stage 4;


logUF2(j,k)$(jI(j,'UF2') and (CMP2(k,j)$(jI(j,'UF2'))<>0))..     M(j,k)-M4(k)*y('UF2')=l=0;
logNF(j,k)$(jI(j,'NF') and (CMP2(k,j)$(jI(j,'NF'))<>0))..        M(j,k)-M4(k)*y('NF')=l=0;
logPVP3(j,k)$(jI(j,'PVP3') and (CMP2(k,j)$(jI(j,'PVP3'))<>0))..  M(j,k)-M4(k)*y('PVP3')=l=0;
logBYP4(j,k)$(jI(j,'BYP4') and (CMP2(k,j)$(jI(j,'BYP4'))<>0))..  M(j,k)-M1(k)*y('BYP4')=l=0;
select4..                                                        y('UF2')+y('NF')+y('PVP3')+y('BYP4')=e=1;

*y.fx('NF')=0;
*y.fx('UF2')=0;
*y.fx('PVP3')=0;
*y.fx('BYP4')=0;


**********************Ultrafiltration 2*****************
**F=41, E=42, S=43
*jUF2FES


Equations
Reten2_UF2(jUF2F,jUF2E,k)                       Retention Factor
Conc_UF2(jUF2E,jUF2F)                           Concentration Factor
Fluxbal_UF2(jUF2F)                              Flux Balance
Cons_eq_UF2(i4)                                 Consumable cost
PowReq2_UF2                                     power requirements;

Reten2_UF2(jUF2F,jUF2E,k)..                     M(jUF2F,k)*RCuf2(k)=e=M(jUF2E,k);
Conc_UF2(jUF2E,jUF2F)..                         CF('UF2')*(sum(k,((M(jUF2E,k)/Den(k)))))=e=(sum(k,((M(jUF2F,k)/Den(k)))));
CF.lo('UF2')=CF_T_bounds('UF','LB');
CF.up('UF2')=CF_T_bounds('UF','UB');
Fluxbal_UF2(jUF2F)..                            (sum(k,(M(jUF2F,k)/Den(k))))*(1-(1/CF('UF2')))=e=Zeta_uf2*Qc('UF2');
Cons_eq_UF2(i4)..                               Cons('UF2') =e= (Tann/Rep_time)*CP_uf2*Qc('UF2');
PowReq2_UF2..                                   PW('UF2')=e=Wsp('UF2')*Qc('UF2');


***************Nanofiltration*************************
**F=44, E=45, S=46
*jNFFES

Equations
Reten2_NF(jNFF,jNFE,k)                      Retention Factor for NF
Conc_NF(jNFE,jNFF)                          Concentration Factor for NF
Fluxbal_NF(jNFF)                            Flux Balance for NF
Cons_eq_NF(i4)                              Consumable cost for NF
PowReq2_NF                                  Power requirements for NF;

Reten2_NF(jNFF,jNFE,k)..                    M(jNFF,k)*RCnf(k)=e=M(jNFE,k);
Conc_NF(jNFE,jNFF)..                        CF('NF')*(sum(k,((M(jNFE,k)/Den(k)))))=e=(sum(k,((M(jNFF,k)/Den(k)))));
CF.lo('NF')=CF_T_bounds('NF','LB');
CF.up('NF')=CF_T_bounds('NF','UB');
Fluxbal_NF(jNFF)..                          (sum(k,(M(jNFF,k)/Den(k))))*(CF('NF')-1)=e=Zeta_nf*Qc('NF')*CF('NF');
Cons_eq_NF(i4)..                            Cons('NF') =e= (Tann/Rep_Time_nf)*CP_nf*Qc('NF');
PowReq2_NF..                                PW('NF')=e=Wsp('NF')*Qc('NF');

*****************Pervaporation 3*************************
**F=47, E=48, S=49
*jPVP3FES

Equations
Retent2_PVP3(jPVP3F,jPVP3E,k)                   Retention factor in PVP3
Conc2_PVP3(jPVP3E,jPVP3F)                       Concentration Factor in PVP3
Fluxbal2_PVP3(jPVP3F)                           flux balance in PVP3
PowReq_PVP3                                     Power required in PVP3
Cons_eq_PVP3(i4)                                Consumable cost
HReq_PVP3(jPVP3S)                               Heat required in PVP3;


Retent2_PVP3(jPVP3F,jPVP3E,k)..                 M(jPVP3F,k)*RCpvp3(k)=e= M(jPVP3E,k);
Conc2_PVP3(jPVP3E,jPVP3F)..                     sum(k,(M(jPVP3E,k)/Den(k)))*CF('PVP3')=e=sum(k,(M(jPVP3F,k)/Den(k)));
CF.lo('PVP3') =CF_T_bounds('PVP','LB');
CF.up('PVP3') = CF_T_bounds('PVP','UB');
Fluxbal2_PVP3(jPVP3F)..                         Zeta_pvp3*Qc('PVP3') =e= (1-(1/CF('PVP3')))*sum(k,(M(jPVP3F,k)/Den(k)));
Cons_eq_PVP3(i4)..                              Cons('PVP3') =e= (Tann/Rep_time)*CP_pvp3*Qc('PVP3');
PowReq_PVP3..                                   PW('PVP3') =e= Wsp('PVP3')*Qc('PVP3');
HReq_PVP3(jPVP3S)..                             Mstm('PVP3')*LH_stm =e=sum(k,(M(jPVP3S,k)*H_vap(k)));


*********************************************Outlet Specifications*************************************************************

$ontext
Equations

PET_OUT_SPEC        PET outlet specification
ACT_OUT_SPEC        Acetaldehyde outlet specification
EB_OUT_SPEC         Ethyl benzoate outlet specification
ADD_OUT_SPEC        Additive outlet specification
PET_OUT_PURITY      PET outlet purity requirement
;

**The recovery values are just proxy values
PET_OUT_SPEC..      M('58','PET') =g= 0.95*M('1','PET') ;
ACT_OUT_SPEC..      M('58','ACT') =l= 0.1*M('1','ACT') ;
EB_OUT_SPEC..       M('58','EB')  =l= 0.1*M('1','EB') ;
ADD_OUT_SPEC..      M('58','ADD') =l= 0.1*M('1','ADD') ;
PET_OUT_PURITY..    M('58','PET') =g= 0.95*sum(k,M('58',k)) ;
$offtext

**desired k (dk)==EB
**all other k (aok)==PET,ADD,ACT
**one set for desired with recovery constraint
**one set for desired with purity contraint

***possible equation      out_spec.. M('58',dk)=g=pur(dk)*sum(k,M('58',dk))
**                        out_spec.. M('58',aok)=l=pur(aok)*sum(k,M('58',aok))
*$ontext

Equations
Solv_Purity_Specs(dkS)   purity specifications
Solv_Recovery_Specs(dkS) recovery specifications
Other_Purity_Specs(dkO)   purity specifications
Other_Recovery_Specs(dkO) recovery specifications
;


Solv_Purity_Specs(dkS)..         M('58',dkS) =g= pur(dkS)*sum(k, M('58',k));
Solv_Recovery_Specs(dkS)..       M('58',dkS) =g= rec(dkS)*M('1',dkS);
Other_Purity_Specs(dkO)..        M('59',dkO) =g= pur2(dkO)*sum(k, M('59',k));
Other_Recovery_Specs(dkO)..      M('59',dkO) =g= rec2(dkO)*M('1',dkO);

M.up('58',k)=Qf*Frac(k);
M.up('59',k)=Qf*Frac(k);



*$offtext
********************************************************************************************************************************



Positive variables
CCAC(Nstg)                       Annualized capital cost in stages
CCRM(Nstg)                       Raw material costs in stages
CCCS(Nstg)                       Consumable cost in stages
CCLB(Nstg)                       Labor costs in stages
CCUT(Nstg)                       Utility costs in stages
CCTC(Nstg)                       Total cost in stages
CCOT(Nstg)                       Other costs in stages;

Equation
ACC_eq_s1                        Annualized capital cost in stage 1
ACC_eq_s2                        Annualized capital cost in stage 2
ACC_eq_s3                        Annualized capital cost in stage 3
ACC_eq_s4                        Annualized capital cost in stage 4

RMC_eq_s1                        Raw material cost in stage 1
RMC_eq_s2                        Raw material cost in stage 2
RMC_eq_s3                        Raw material cost in stage 3
RMC_eq_s4                        Raw material cost in stage 4

CSC_eq_s1                        Consumables costs in stage 1
CSC_eq_s2                        Consumables costs in stage 2
CSC_eq_s3                        Consumables costs in stage 3
CSC_eq_s4                        Consumables costs in stage 4

LBC_eq_s1                        Labor costs in stage 1
LBC_eq_s2                        Labor costs in stage 2
LBC_eq_s3                        Labor costs in stage 3
LBC_eq_s4                        Labor costs in stage 4

UTC_eq_s1                        Utility costs in stage 1
UTC_eq_s2                        Utility costs in stage 2
UTC_eq_s3                        Utility costs in stage 3
UTC_eq_s4                        Utility costs in stage 4

TC_eq(Nstg)                      Total cost in stages eqns
OTC_eq(Nstg)                     Other costs in stages eqns;

****ACC=1.66*BMC_mult*(sum(istg1,Cc(istg1)))
**CRF=CRF_value*ACC
**CCOT=CCTC(Nstg)-(CCAC(Nstg)+CCRM(Nstg)+CCCS(Nstg)+CCLB(Nstg)+CCUT(Nstg))-CRF;
ACC_eq_s1..                      CCAC('s1')=e=1.66*CRF*BMC_mult*(sum(istg1,Cc(istg1)));
ACC_eq_s2..                      CCAC('s2')=e=1.66*CRF*BMC_mult*(sum(istg2,Cc(istg2)));
ACC_eq_s3..                      CCAC('s3')=e=1.66*CRF*BMC_mult*(sum(istg3,Cc(istg3)));
ACC_eq_s4..                      CCAC('s4')=e=1.66*CRF*BMC_mult*(sum(istg4,Cc(istg4)));

RMC_eq_s1..                      CCRM('s1')=e= RM_Cost('PRC')*Tann*(10**(-6));
RMC_eq_s2..                      CCRM('s2')=e= 0;
RMC_eq_s3..                      CCRM('s3')=e= 0;
RMC_eq_s4..                      CCRM('s4')=e= 0;

CSC_eq_s1..                      CCCS('s1')=e=(Cons('FLT1')+Cons('ADS1'))*(10**(-6));
CSC_eq_s2..                      CCCS('s2')=e=(Cons('PVP1')+Cons('ADS2')+Cons('MF1'))*(10**(-6));
CSC_eq_s3..                      CCCS('s3')=e=(Cons('MF2')+Cons('UF1')+Cons('PVP2'))*(10**(-6));
CSC_eq_s4..                      CCCS('s4')=e=(Cons('UF2')+Cons('PVP3')+Cons('NF'))*(10**(-6));

LBC_eq_s1..                      CCLB('s1')=e=Tann*(10**(-6))*C_lbr*sum(istg1,Nlbr(istg1));
LBC_eq_s2..                      CCLB('s2')=e=Tann*(10**(-6))*C_lbr*sum(istg2,Nlbr(istg2));
LBC_eq_s3..                      CCLB('s3')=e=Tann*(10**(-6))*C_lbr*sum(istg3,Nlbr(istg3));
LBC_eq_s4..                      CCLB('s4')=e=Tann*(10**(-6))*C_lbr*sum(istg4,Nlbr(istg4));

UTC_eq_s1..                      CCUT('s1')=e=Tann*(10**(-6))*((C_elec*sum(istg1,PW(istg1))));
UTC_eq_s2..                      CCUT('s2')=e=Tann*(10**(-6))*((C_elec*sum(istg2,PW(istg2)))+(C_cwt*sum(istg2,Mcw(istg2)))+(C_stm*sum(istg2,Mstm(istg2))));
UTC_eq_s3..                      CCUT('s3')=e=Tann*(10**(-6))*((C_elec*sum(istg3,PW(istg3)))+(C_cwt*sum(istg3,Mcw(istg3)))+(C_stm*sum(istg3,Mstm(istg3))));
UTC_eq_s4..                      CCUT('s4')=e=Tann*(10**(-6))*((C_elec*sum(istg4,PW(istg4)))+(C_cwt*sum(istg4,Mcw(istg4)))+(C_stm*sum(istg4,Mstm(istg4))));

TC_eq(Nstg)..                    CCTC(Nstg)=e=CCAC(Nstg)+CCRM(Nstg)+CCCS(Nstg)+CCUT(Nstg)+2.78*CCLB(Nstg);
OTC_eq(Nstg)..                   CCOT(Nstg)=e=CCTC(Nstg)-(CCAC(Nstg)+CCRM(Nstg)+CCCS(Nstg)+CCLB(Nstg)+CCUT(Nstg));



Positive variables
CCTAC                            Annualized capital cost
CCTRM                            raw material cost
CCTCS                            Consumables cost
CCTUT                            utility cost
CCTLB                            labor cost
CCTOT                            Other costs;

Variable
CCTPC                            total process cost
OBJ                              Objective value;

Equation
CCTAC_eq                         Total annualized capital cost
CCTRM_eq                         Total raw material cost
CCTCS_eq                         Total consumable cost
CCTUT_eq                         Total utility cost
CCTLB_eq                         Total labor cost
CCTOT_eq                         Total other cost
TPC_fun_eq                       Total process cost equation
Ob_fun_eq                        objective function;

CCTAC_eq..                       CCTAC=e=sum(Nstg1,CCAC(Nstg1));
CCTRM_eq..                       CCTRM=e=sum(Nstg1,CCRM(Nstg1));
CCTCS_eq..                       CCTCS=e=sum(Nstg1,CCCS(Nstg1));
CCTLB_eq..                       CCTLB=e=sum(Nstg1,CCLB(Nstg1));
CCTUT_eq..                       CCTUT=e=sum(Nstg1,CCUT(Nstg1));
CCTOT_eq..                       CCTOT=e=sum(Nstg1,CCOT(Nstg1));
TPC_fun_eq..                     CCTPC=e=CCTAC+CCTRM+CCTCS+CCTLB+CCTUT+CCTOT;
Ob_fun_eq..                      OBJ=e=CCTPC;

Model PET /all/;
$onEcho > BARON.opt=1;
$offEcho
PET.optFile=1;
Solve PET minimizing OBJ using MINLP;



*execute_unload %matout%;
EXECUTE_UNLOAD 'GAMS_Results.gdx';
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=M rng=MassFlow!A1'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTAC rng=Costs!B2'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTRM rng=Costs!B3'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTCS rng=Costs!B4'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTLB rng=Costs!B5'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTUT rng=Costs!B6'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTOT rng=Costs!B7'
execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=CCTC rng=Costs!G2'

execute 'gdxxrw GAMS_Results.gdx output=results.xlsx squeeze=n var=y rng=Costs!G5'

*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=y rng=UnitSelection!a1:s15';
*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=obj rng=Objval!a1:b4';
*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=CCAC rng=StageCapCost!a1:aq80';
*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=CCLB rng=StageLbrCost!a1:aq80';
*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=CCUT rng=StageUtlCost!a1:aq80';
*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=CCCS rng=StageConCost!a1:aq80';
*EXECUTE 'gdxxrw.exe PET_CaseStudy_Results_EB_REC.gdx o=PET_CaseStudy_Results_EB_REC.xls var=CCOT rng=StageOtherCost!a1:aq80';

*$offText







