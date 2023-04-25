#PROBLEM 1 (6)
msg_srv1 = .40
msg_srv2 = .25
msg_srv3 = .35

msg_err_srv1 = .01
msg_err_srv2 = .02
msg_err_srv3 = .015

#what  is the probability of receiving an email containing an error?
print ("prob_err:")
prob_err = ((msg_srv1*msg_err_srv1)+ (msg_srv2*msg_err_srv2)+(msg_srv3*msg_err_srv3))
prob_err

# What is the probability that a message will arrive without error
print ("prob_WithOut_err:")
prob_WithOut_err= (1-(prob_err))
prob_WithOut_err

# If a message arrives without error, what is the probability that it was sent through server 1?
print ("prob_WithOut_err_srv1:")
prob_WithOut_err_srv1 = (((msg_srv1)*(1-(msg_err_srv1)))/prob_WithOut_err)
prob_WithOut_err_srv1


#PROBLEM 2 (9)
#A: would not buy package
A_pckge= .20

#would buy package: 70
B_pckge= .70
#undecided: undc= ((100)-(70+20))
C_pckge= ((1)-(A_pckge+B_pckge))


#upgrd would not buy: 10
upgrd_A_pckge=.10
#upgrd would buy: 40
upgrd_B_pckge=.40
#upgrd undecided:20
upgrd_C_pckge=.20

#calculate the probability that a manager chosen at random will not upgrade the computer hardware (P(G)).
print ("prob_will_updgrd:")
prob_will_updgrd = ((A_pckge)*(upgrd_A_pckge))+((B_pckge)*(upgrd_B_pckge))+((C_pckge)*(upgrd_C_pckge))
prob_will_updgrd

#WILL NOT BE UPGRADED
print ("prob_willnot_updgrd:")
prob_willnot_updgrd = (1- (prob_will_updgrd))
prob_willnot_updgrd


# Explain what is meant by the posterior probability of B given G, P(B|G).
#If a package will be upgraded, what is the probability that it was intended of buying?
print ("postr_prob_bg:")
postr_prob_bg=  (B_pckge)*(upgrd_B_pckge) /prob_will_updgrd
postr_prob_bg


#PROBLEM 3 (13)
#Spyware to Internet
spyware_int= .70


#Spyware to Email
spyware_eml= .30


#AntiVirus_Internet
antiv_int= 0.6

#AntiVirus_Email
antiv_eml= 0.8

#What is the probability that this spyware infects the system
print ("prob_spyware_sytm:")
prob_spyware_sytm = ((spyware_int*antiv_int)+ (spyware_eml*antiv_eml))
prob_spyware_sytm

#If the spyware is detected, what is the probability that it came through the Internet?
print ("prob_int:")
prob_int = (spyware_int)*(antiv_int)/(prob_spyware_sytm)
prob_int
