img_sup1 = .15
img_sup2 = .20
img_sup3 = .25
img_sup4 = .40


rel_img1 = .50
rel_img2 = .60
rel_img3 = .80
rel_img4 = .85


overall_prob= ((img_sup1*rel_img1)+ (img_sup2*rel_img2)+(img_sup3*rel_img3)+(img_sup4*rel_img4))
overall_prob

percentage_overall_prob= overall_prob*100
percentage_overall_prob






#------------------------------------------------------------------------------------------------------







S <-list("HH", "TT","TH", "HT")

E1<-list("HH", "TT")
E1

E2<-list("HH", "HT")
E2

E3<-list("TH", "HH")
E3


P_E1 =  length(E1)/length(S)
P_E1
  
P_E2 = length(E2)/length(S)
P_E2
  
P_E3 = length(E3)/length(S)
P_E3
  
#Intersections  
P_E1_intersec_E2 =  (P_E1)*(P_E2)
P_E1_intersec_E2

P_E2_intersec_E3 = (P_E2)*(P_E3)
P_E2_intersec_E3
  
P_E3_intersec_E1 = (P_E3)*(P_E1)
P_E3_intersec_E1

  


if ((P_E1_intersec_E2)==(P_E1_intersec_E2) & (P_E3_intersec_E1)==(P_E1_intersec_E2) & (P_E3_intersec_E1)==(P_E1_intersec_E2)){ 

  print (" P(E1 ∩ E2 ), P(E2 ∩ E3 ) and P(E3 ∩ E1 ) are pairwise independent.")
} else { #The median of odd 
  print (" NOT PAIRWISE")
}

#P (E1 ∩ E2 ∩ E3) =(n(E1 ∩ E2 ∩ E3))/(n(S))= 
probability_intersections = length(Reduce(intersect,list(E1,E2,E3))) / length(S) 
probability_intersections


#P(E1) P(E2) P(E3) 
probability_products = (P_E1)*(P_E2)*(P_E3)
probability_products  
  
if ((probability_intersections)==(probability_products)){ 
  
  print (" mutually independent")
} else { #The median of odd 
  print (" We conclude that P (E1∩ E2 ∩ E3) ≠ P(E1) P(E2) P(E3). Therefore, three events are not mutually independent.")
}

  
