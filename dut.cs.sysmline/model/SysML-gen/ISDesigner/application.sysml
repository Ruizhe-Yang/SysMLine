package application {
	private import ecore::*;
	public import environment::*;
	public import org.eclipse.emf::*;
	public import cinematic::*;
	public import ecorebinding::*;
	public import metadatadef::*;
	public import flow::*;
	public import view::*;
	public import toolkits::*;
	public import technicalid::*;
	item def Configuration :> Identifiable{
		item bindingRegistries : BindingRegistry [*];
		ref item ecoreModel : EPackage [1];
		ref item cinematicModel : CinematicRoot [1];
		ref item ecoreBindingModel : BModel [1];
	}
}

