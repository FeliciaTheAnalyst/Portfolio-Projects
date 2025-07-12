
Select* from health_care_project;

						-- ========== QUESTION 1: How many Health Facilities? ==========
select count( distinct health_Facility) as health_Facility
	from health_care_project;
						-- ========== QUESTION 2: Name of the Diseases? ==========
select distinct disease from health_care_project
	order by Disease asc;
						-- ========== QUESTION 3: Patients Admitted per Health Facility and Diseases? ============
Select patients_Admitted, Disease, Health_Facility from health_care_project;

						-- ========== QUESTION 4: Patients Recovered per Health Facility and Diseases? ============
   Select Recovered, health_Facility, Disease from health_care_project
	order by Health_Facility asc;
						-- ========== QUESTION 5: How many Doctors and Nurses per Health Facility and each year ============
Select Doctors, Nurses, Health_Facility, year from health_care_project
order by year desc;
                        
                        -- ========== QUESTION 6: How many beds in each Health Facility each year? ============
   Select Total_Beds, Disease, Health_Facility, year from health_care_project
   order by Health_Facility asc;
						-- ========== QUESTION 7: Gender Male and Female of Doctors and Nurses in each Health_Facility? ============
   select Gender, Doctors, Nurses, health_Facility from health_care_project
   where gender IN ('Female', 'Male');
   
						-- ========== QUESTION 8: Age Group  ============
Select Age_Group, sum(Patients_Admitted) As Total_Admitted, sum(Patients_Treated) As Total_Treated from health_care_project
group by Age_Group;
					-- ========== QUESTION 9: Age Group 18 to 35 ============
select* from health_care_project where Age_Group = 18;           

					-- ========== QUESTION 10: Health Facilty with Higher Recovery? ============
Select health_Facility, sum(Recovered) AS Total_Recovered from health_care_project
	group by Health_Facility order by Total_Recovered desc;
                        
                        
                        
        -- Crafted with data clarity by Felicia Mabena™                
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        