package ACME {
	
	public import 'SACM Base new'::*;
	public import 'SACM Assurancecase new'::*;
	public import 'SACM Artifact new'::*;
	public import 'SACM Argumentation new'::*;
	public import 'GSN new'::*;
	
	private import ScalarValues::*;
	
	part assurancecasepackage_1 : AssuranceCasePackage {
		
		part artifactpackage_1 : ArtifactPackage {		
		
			
			part artifact_1 : Artifact {
				
			}
			
	    }		
		
		part module_1 : Module {
					
			
			
			part goal_1 : Goal {					
			}
			
			part goal_2 : Goal {
				
			}
			
			part context_1 : Context {
				
			}
			
			part strategy_1 : Strategy {		
			}
			
			part goal_3 : Goal {
				
			}
			
			part goal_4 : Goal {
				
			}
			
			part goal_5 : Goal {
				
			}
			
			part goal_6 : Goal {
				
			}
			
			part context_2 : Context {
				
			}
			

			part supportedby_1 : SupportedBy {
				ref redefines source = goal_1;
				ref redefines target = goal_2;			
			}
			
			part incontextof_1 : InContextOf {
				ref redefines source = goal_1;
				ref redefines target = context_1;				 			
			}
			
			part supportedby_2 : SupportedBy {
				ref redefines source = goal_2;
				ref redefines target = strategy_1;			
			}
			
			part incontextof_2 : InContextOf {
				ref redefines source = strategy_1;
				ref redefines target = context_2;
				
			}
			
			part supportedby_3 : SupportedBy {
				ref redefines source = strategy_1;
				ref redefines target = goal_3;
			}

			part supportedby_4 : SupportedBy {
				ref redefines source = strategy_1;
				ref redefines target = goal_4;				
			}
						
			part supportedby_5 : SupportedBy {
				ref redefines source = strategy_1;
				ref redefines target = goal_5;				
			}
			
			part supportedby_6 : SupportedBy {
				ref redefines source = strategy_1;
				ref redefines target = goal_6;				
			}
			
			part goal_7 : Goal {
				
			}
			
			part awaygoal_1 : AwayGoal {
				
			}
			
			part supportedby_7 : SupportedBy {
				ref redefines source = goal_4;
				ref redefines target = goal_7;
			}	
					
			part supportedby_8 : SupportedBy {
				ref redefines source = goal_4;
				ref redefines target = awaygoal_1;
			}
			
			part solution_1 : Solution {
				
			}
			
			part supportedby_9 : SupportedBy {
				ref redefines source = goal_7;
				ref redefines target = solution_1;
			}			
		}

    }
}	
