package ACME2 {
	
	public import 'SACM Base new'::*;
	public import 'SACM Assurancecase new'::*;
	public import 'SACM Artifact new'::*;
	public import 'SACM Argumentation new'::*;
	public import 'GSN new'::*;
	
	private import ScalarValues::*;
	
	part testAssuranceCase : AssuranceCasePackage{
		
		part artifactpackage_1 : ArtifactPackage{		
		
			part name:LangString{
				attribute redefines content = "name";
				attribute redefines lang = "english";
			}//name
			
			part description:Description{
				part content:MultiLangString{
					part value_1:LangString{
						attribute redefines content = "Description";
						attribute redefines lang = "language";
					}
				}
			}//description
			
			part implementationConstraint:ImplementationConstraint{
				
				part content:MultiLangString{
						
					
					part value_1:LangString{
						attribute redefines content = "null";
						attribute redefines lang = "language";
					}
					
					part value_2:LangString{
						attribute redefines content = "result";
						attribute redefines lang = "language";
					}
				
				
				}
			}//implementationconstraint
			
			part artifact_1 : Artifact{
				
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}
				
				part description:Description{
					
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "Description";
							attribute redefines lang = "language";
						}
					}
				}				
				part implementationConstraint:ImplementationConstraint{
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				}

				part artifactProperty:Property{
					part name:LangString{
						attribute redefines content = "URI";
					    attribute redefines lang = "lang";
				    }
				
				    part description:Description{
					
					    part content:MultiLangString{
						    part value_1:LangString{
							    attribute redefines content = "Description";
							    attribute redefines lang = "language";
						    }
					    }
				    }				
			    	part implementationConstraint_1:ImplementationConstraint{
				    	part content:MultiLangString{
			    			part value_1:LangString{
						    	attribute redefines content = "null";
							    attribute redefines lang = "language";
					    	}
					    }
				    }
				    part implementationConstraint_2:ImplementationConstraint{
				    	part content:MultiLangString{
			    			part value_1:LangString{
						    	attribute redefines content = "null";
							    attribute redefines lang = "language";
					    	}
					    }
				    }
				    
				}
			}
			
		
		
		part module_1 : Module {
			
			part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}				
			part description:Description{
					
				part content:MultiLangString{
					part value_1:LangString{
						attribute redefines content = "Description";
						attribute redefines lang = "language";
				    }
				}
			}				
			part implementationConstraint:ImplementationConstraint{
				part content:MultiLangString{
					part value_1:LangString{
						attribute redefines content = "null";
						attribute redefines lang = "language";
					}
					part value_2:LangString{
						attribute redefines content = "result";
						attribute redefines lang = "language";
					}
				}
			}			
			
			
			part goal_1 : Goal {
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				}										
			}
			
			part strategy_1 : Strategy {
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{	
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				
				}			
			}
			
			part solution_1 : Solution {
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{	
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				
				}				
			}
			
			part assumption_1 : Assumption {
				
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{	
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				
				}					
			}
			
			part supportedby_1 : SupportedBy {
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{	
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				
				}				
			}
			
			part supportedby_2 : SupportedBy {
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{	
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				
				}				
			}
			
			part incontextof_1 : InContextOf {
				part name:LangString{
					attribute redefines content = "name";
					attribute redefines lang = "lang";
				}	
				part description:Description{
					
				    part content:MultiLangString{
				    	part value_1:LangString{
					    	attribute redefines content = "Description";
						    attribute redefines lang = "language";
		    		    }
					}
				}
				part implementationConstraint:ImplementationConstraint{	
					part content:MultiLangString{
						part value_1:LangString{
							attribute redefines content = "null";
							attribute redefines lang = "language";
						}
						part value_2:LangString{
							attribute redefines content = "result";
							attribute redefines lang = "language";
						}
					}
				
				}
				ref redefines source = goal_1;
				ref redefines target = assumption_1;
				 			
			}
		}
	}
}
}	
