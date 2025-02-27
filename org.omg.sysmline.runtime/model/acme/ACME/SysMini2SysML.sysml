package ACME {
	public import SACM%20Base2::SACM Base new;
	public import SACM%20AssuranceCase2::SACM Assurancecase new;
	public import SACM%20Artifact2::SACM Artifact new;
	public import SACM%20Argument2::SACM Argumentation new;
	public import GSN2::GSN new;
	part assuranceCasePackage : SACM%20AssuranceCase2::AssuranceCasePackage {
		part artifactpackage_1 : SACM%20Artifact2::ArtifactPackage {
			part name : SACM%20Base2::LangString {
				attribute :>> SACM%20Base2::content;
				attribute :>> SACM%20Base2::lang;
			}
			part description : SACM%20Base2::Description {
				part content : SACM%20Base2::MultiLangString {
					part value : SACM%20Base2::LangString {
						attribute :>> SACM%20Base2::content;
						attribute :>> SACM%20Base2::lang;
					}
				}
			}
			part implementationConstraint : SACM%20Base2::ImplementationConstraint {
				part content : SACM%20Base2::MultiLangString {
					part value_1 : SACM%20Base2::LangString {
						attribute :>> SACM%20Base2::content;
						attribute :>> SACM%20Base2::lang;
					}
					part value_2 : SACM%20Base2::LangString {
						attribute :>> SACM%20Base2::content;
						attribute :>> SACM%20Base2::lang;
					}
				}
			}
			part artifact_1 : SACM%20Artifact2::Artifact {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
		}
		part module_1 : SACM%20AssuranceCase2::Module {
			part name : SACM%20Base2::LangString {
				attribute :>> SACM%20Base2::content;
				attribute :>> SACM%20Base2::lang;
			}
			part description : SACM%20Base2::Description {
				part content : SACM%20Base2::MultiLangString {
					part value : SACM%20Base2::LangString {
						attribute :>> SACM%20Base2::content;
						attribute :>> SACM%20Base2::lang;
					}
				}
			}
			part implementationConstraint : SACM%20Base2::ImplementationConstraint {
				part content : SACM%20Base2::MultiLangString {
					part value_1 : SACM%20Base2::LangString {
						attribute :>> SACM%20Base2::content;
						attribute :>> SACM%20Base2::lang;
					}
					part value_2 : SACM%20Base2::LangString {
						attribute :>> SACM%20Base2::content;
						attribute :>> SACM%20Base2::lang;
					}
				}
			}
			part goal_1 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part goal_2 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part context_1 : SACM%20AssuranceCase2::Context {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part strategy_1 : SACM%20AssuranceCase2::Strategy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part context_2 : SACM%20AssuranceCase2::Context {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part goal_3 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part goal_4 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part goal_5 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part goal_6 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part goal_7 : SACM%20AssuranceCase2::Goal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part awaygoal_1 : SACM%20AssuranceCase2::AwayGoal {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part solution_1 : SACM%20AssuranceCase2::Solution {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_1 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_2 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_3 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_4 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_5 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_6 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_7 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_8 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part supportedby_9 : SACM%20AssuranceCase2::SupportedBy {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part incontextof_1 : SACM%20AssuranceCase2::InContextOf {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
			part incontextof_2 : SACM%20AssuranceCase2::InContextOf {
				part name : SACM%20Base2::LangString {
					attribute :>> SACM%20Base2::content;
					attribute :>> SACM%20Base2::lang;
				}
				part description : SACM%20Base2::Description {
					part content : SACM%20Base2::MultiLangString {
						part value : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
				part implementationConstraint : SACM%20Base2::ImplementationConstraint {
					part content : SACM%20Base2::MultiLangString {
						part value_1 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
						part value_2 : SACM%20Base2::LangString {
							attribute :>> SACM%20Base2::content;
							attribute :>> SACM%20Base2::lang;
						}
					}
				}
			}
		}
	}
}

