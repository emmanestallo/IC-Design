from math import pi as pi, sqrt as sqrt 

def L_match(q,r1,r2,dcpass,freq): 
    if dcpass == False:
        if r2 > r1: 
            l_load = r2/q 
            L = l_load/(2*pi*freq)   
            c_source = r1*q 
            C = 1/(2*pi*freq*c_source)  
        else: 
            c_load = r2*q 
            C = c_load/(2*pi*freq*c_load)
            l_source = r1/q 
            L = l_source/(2*pi*freq)   
    
    if dcpass == True: 
        if r2 > r1: 
            c_load = r2/q 
            C = 1/(2*pi*freq*c_load)
            l_source = r1*q 
            L = l_source/(2*pi*freq) 
        else: 
            l_load = r2*q 
            L = l_load/(2*pi*freq)
            c_source = r1/q 
            C = 1/(2*pi*freq*c_source)
    return L, C 

rLoad = float(input("Enter load resistance (in ohms): "))
rSource = float(input("Enter source resistance (in ohms): "))
centerFreq = float(input("Enter center frequency (in hz): "))
BW = float(input("Enter bandwidth (in hz): "))

#get q desired
q_des = centerFreq/BW 

#get rv
rv = max(rLoad,rSource)/(q_des**2 + 1) 

#get q_min 
q_min = sqrt(min(rLoad,rSource)/rv - 1) 

##### for dc pass ##### 
if rSource < rLoad: 
    L1, C1 = L_match(q_min,rSource,rv,True,centerFreq) 
    L2, C2 = L_match(q_des,rv,rLoad,True,centerFreq) 
    L_tot = L1 + L2  

else: 
    L1, C1 = L_match(q_des,rSource,rv,True,centerFreq) 
    L2, C2 = L_match(q_min,rv,rLoad,True,centerFreq) 
    L_tot = L1 + L2  

print("**************DC PASS VALUES**************")
print(f"source cap: {C1}")
print(f"load cap: {C2}")
print(f"middle ind: {L_tot}") 

##### for dc block ##### 
if rSource < rLoad: 
    L1, C1 = L_match(q_min,rSource,rv,False,centerFreq) 
    L2, C2 = L_match(q_des,rv,rLoad,False,centerFreq) 
    C_tot = 1/(1/C1 + 1/C2)

else: 
    L1, C1 = L_match(q_des,rSource,rv,False,centerFreq) 
    L2, C2 = L_match(q_min,rv,rLoad,False,centerFreq) 
    C_tot = 1/(1/C1 + 1/C2) 

print("**************DC BLOCK VALUES**************")
print(f"source ind: {L1}")
print(f"load ind: {L2}")
print(f"middle cap: {C_tot}") 


print(f"At Q = {q_des}") 
print("\n")