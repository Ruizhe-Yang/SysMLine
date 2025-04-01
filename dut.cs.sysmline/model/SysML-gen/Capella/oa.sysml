package oa {
	private import ecore::*;
	public import ctx::*;
	public import capellacommon::*;
	public import cs::*;
	public import information::*;
	public import fa::*;
	public import modellingcore::*;
	public import epbs::*;
	public import capellacore::*;
	public import la::*;
	public import emde::*;
	public import interaction::*;
	public import datavalue::*;
	public import datatype::*;
	public import communication::*;
	public import activity::*;
	public import behavior::*;
	public import pa::*;
	part def OperationalAnalysis :> BlockArchitecture{
		part ownedRolePkg : RolePkg [1];
		part ownedEntityPkg : EntityPkg [1];
		part ownedConceptPkg : ConceptPkg [1];
		ref part containedOperationalCapabilityPkg : OperationalCapabilityPkg [1];
		ref part containedOperationalActivityPkg : OperationalActivityPkg [1];
		ref part allocatingSystemAnalyses : SystemAnalysis [*];
	}
	abstract part def OperationalScenario :> NamedElement{
		attribute context : EString [1];
		attribute 'objective' : EString [1];
	}
	part def OperationalActivityPkg :> FunctionPkg{
		part ownedOperationalActivities : OperationalActivity [*];
		part ownedOperationalActivityPkgs : OperationalActivityPkg [*];
	}
	part def OperationalActivity :> AbstractFunction{
		part ownedOperationalActivityPkgs : OperationalActivityPkg [*];
		ref part activityAllocations : ActivityAllocation [*];
		ref part ownedSwimlanes : Swimlane [*];
		ref part ownedProcess : OperationalProcess [*];
		ref part allocatorEntities : Entity [*];
		ref part realizingSystemFunctions : SystemFunction [*];
		ref part allocatingRoles : Role [*];
		ref part containedOperationalActivities : OperationalActivity [*];
		ref part childrenOperationalActivities : OperationalActivity [*];
	}
	part def OperationalProcess :> FunctionalChain{
		ref part involvingOperationalCapabilities : OperationalCapability [*];
	}
	part def Swimlane :> NamedElement, ActivityPartition{
		ref part representedEntity : Entity [1];
	}
	part def OperationalCapabilityPkg :> AbstractCapabilityPkg{
		part ownedOperationalCapabilities : OperationalCapability [*];
		part ownedOperationalCapabilityPkgs : OperationalCapabilityPkg [*];
		part ownedCapabilityConfigurations : CapabilityConfiguration [*];
		part ownedConceptCompliances : ConceptCompliance [*];
	}
	part def OperationalCapability :> AbstractCapability, Namespace{
		ref part compliances : ConceptCompliance [*];
		ref part configurations : CapabilityConfiguration [*];
		part ownedEntityOperationalCapabilityInvolvements : EntityOperationalCapabilityInvolvement [*];
		ref part realizingCapabilities : Capability [*];
		ref part involvedEntities : Entity [*];
	}
	part def ActivityAllocation :> Allocation{
		ref part role : Role [1];
		ref part activity : OperationalActivity [1];
	}
	part def RolePkg :> Structure{
		part ownedRolePkgs : RolePkg [*];
		part ownedRoles : Role [*];
	}
	part def Role :> AbstractInstance{
		part ownedRoleAssemblyUsages : RoleAssemblyUsage [*];
		part ownedActivityAllocations : ActivityAllocation [*];
		ref part roleAllocations : RoleAllocation [*];
		ref part activityAllocations : ActivityAllocation [*];
		ref part allocatingEntities : Entity [*];
		ref part allocatedOperationalActivities : OperationalActivity [*];
	}
	part def RoleAssemblyUsage :> NamedElement{
		ref part child : Role [1];
	}
	part def RoleAllocation :> Allocation{
		ref part role : Role [1];
		ref part entity : Entity [1];
	}
	part def EntityPkg :> ComponentPkg{
		part ownedEntities : Entity [*];
		part ownedEntityPkgs : EntityPkg [*];
		part ownedLocations : Location [*];
		part ownedCommunicationMeans : CommunicationMean [*];
	}
	part def Entity :> AbstractConceptItem, InformationsExchanger, InvolvedElement{
		ref part roleAllocations : RoleAllocation [*];
		ref part organisationalUnitMemberships : OrganisationalUnitComposition [*];
		ref part actualLocation : Location [1];
		ref part subEntities : Entity [*];
		part ownedEntities : Entity [*];
		part ownedCommunicationMeans : CommunicationMean [*];
		part ownedRoleAllocations : RoleAllocation [*];
		ref part allocatedOperationalActivities : OperationalActivity [*];
		ref part allocatedRoles : Role [*];
		ref part involvingOperationalCapabilities : OperationalCapability [*];
		ref part realizingSystemComponents : SystemComponent [*];
	}
	part def ConceptPkg :> Structure{
		part ownedConceptPkgs : ConceptPkg [*];
		part ownedConcepts : Concept [*];
	}
	part def Concept :> NamedElement{
		ref part compliances : ConceptCompliance [*];
		part compositeLinks : ItemInConcept [*];
	}
	part def ConceptCompliance :> Relationship{
		ref part complyWithConcept : Concept [1];
		ref part compliantCapability : OperationalCapability [1];
	}
	part def ItemInConcept :> NamedElement{
		ref part concept : Concept [1];
		ref part 'item' : AbstractConceptItem [1];
	}
	abstract part def AbstractConceptItem :> Component{
		ref part composingLinks : ItemInConcept [*];
	}
	part def CommunityOfInterest :> NamedElement{
		part communityOfInterestCompositions : CommunityOfInterestComposition [*];
	}
	part def CommunityOfInterestComposition :> NamedElement{
		ref part communityOfInterest : CommunityOfInterest [1];
		ref part interestedOrganisationUnit : OrganisationalUnit [1];
	}
	part def OrganisationalUnit :> NamedElement{
		part organisationalUnitCompositions : OrganisationalUnitComposition [*];
		ref part communityOfInterestMemberships : CommunityOfInterestComposition [*];
	}
	part def OrganisationalUnitComposition :> NamedElement{
		ref part organisationalUnit : OrganisationalUnit [1];
		ref part participatingEntity : Entity [1];
	}
	part def Location :> AbstractConceptItem{
		attribute locationDescription : EString [1];
		ref part locatedEntities : Entity [*];
	}
	part def CapabilityConfiguration :> AbstractConceptItem{
		ref part configuredCapability : OperationalCapability [1];
	}
	part def CommunicationMean :> NamedRelationship, ComponentExchange{
		ref part sourceEntity : Entity [1];
		ref part targetEntity : Entity [1];
	}
	part def EntityOperationalCapabilityInvolvement :> Involvement{
		ref part entity : Entity [1];
		ref part capability : OperationalCapability [1];
	}
}

