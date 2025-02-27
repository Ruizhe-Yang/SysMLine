package ACME {

	public import 'SACM Base new'::*;
	public import 'SACM Assurancecase new'::*;
	public import 'SACM Artifact new'::*;
	public import 'SACM Argumentation new'::*;
	public import 'GSN new'::*;
	
	part assuranceCasePackage : AssuranceCasePackage {
	
	part artifactpackage_1 : ArtifactPackage{ 
part name : LangString{ 
attribute redefines content = "ArtifactPackage"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
part artifact_1 : Artifact{ 
part name : LangString{ 
attribute redefines content = "External reference files"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "This document contains the data volume and energy consumption collected by the experimental system's sensors."; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "for(e in dataResult.all){
		return e.R1.asDouble() > 500 and e.R2.asDouble() <500 ;
	}"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
} 
part module_1 : Module{ 
part name : LangString{ 
attribute redefines content = "GSN packet of autonomous systems"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "This GSN packet is for the autonomous system."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
} 
} 
part goal_1 : Goal{ 
part name : LangString{ 
attribute redefines content = "G1 : To meet the requirements"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "The data volume collected by the sensors of the autonomous system and the energy consumption requirements of the sensors are met."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part goal_2 : Goal{ 
part name : LangString{ 
attribute redefines content = "G2 : Configuration that satisfies the requirements."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Configuration that meets the requirements."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part context_1 : Context{ 
part name : LangString{ 
attribute redefines content = "C1 : The definition of configuration."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "{Configuration n}"; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = ""; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part strategy_1 : Strategy{ 
part name : LangString{ 
attribute redefines content = "S1 : Configuration parameters"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Argumentation of the parameters for the current configuration {Configuration n}."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = ""; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part context_2 : Context{ 
part name : LangString{ 
attribute redefines content = "C2 : Parameters"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Formalize the current requirements."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = ""; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part goal_3 : Goal{ 
part name : LangString{ 
attribute redefines content = "G3 : Requirement 1 is satisfied."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "By executing {Configuration n}, the data volume collected by the sensors is satisfied."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part goal_4 : Goal{ 
part name : LangString{ 
attribute redefines content = "G4 : Requirement 2 is satisfied."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "By executing {Configuration n}, the energy consumption of the sensors does not exceed a certain value."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part goal_5 : Goal{ 
part name : LangString{ 
attribute redefines content = "G5 : Requirement 3 is satisfied."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "By executing {Configuration n}, the weighted overhead of the first two requirements is minimized."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part goal_6 : Goal{ 
part name : LangString{ 
attribute redefines content = "G6 : Requirement 4 is satisfied."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "By executing {Configuration n}, the speed of the autonomous system will automatically reduce to zero."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part goal_7 : Goal{ 
part name : LangString{ 
attribute redefines content = "G7 : Validate Requirement 2."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Through {Configuration n}, Requirement 2 is validated."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part awaygoal_1 : AwayGoal{ 
part name : LangString{ 
attribute redefines content = "AG1 : The parameters of Requirement 2 are saved through the virtual machine platform."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = ""; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part solution_1 : Solution{ 
part name : LangString{ 
attribute redefines content = "So1 : The results during the execution of Requirement 2."; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "The results after validating Requirement 2 (using a randomized model for verification)."; 
attribute redefines lang = "English"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = ""; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_1 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_2 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_3 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_4 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_5 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_6 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_7 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_8 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part supportedby_9 : SupportedBy{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part incontextof_1 : InContextOf{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
part incontextof_2 : InContextOf{ 
part name : LangString{ 
attribute redefines content = "name"; 
attribute redefines lang = "lang"; 
} 
part description : Description { 
part content : MultiLangString { 
part value : LangString { 
attribute redefines content = "Description"; 
attribute redefines lang = "language"; 
} 
} 
} 
part implementationConstraint : ImplementationConstraint { 
part content : MultiLangString { 
part value_1 : LangString { 
attribute redefines content = "null"; 
attribute redefines lang = "language"; 
} 
part value_2 : LangString { 
attribute redefines content = "result"; 
attribute redefines lang = "language"; 
} 
} 
} 
} 
} 

		
}
}







