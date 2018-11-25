$(document).ready(function() 
                     { 
                          $("#clsqna,#prdtqna").hide();
                          
                         
                          $("#btn-menu4-1").click(function() 
                                  { 
                                   
                                      $("#clsqna,#prdtqna").hide();
                                      
                                  }); 
                              $("#2ndswitch").click(function() 
                          
                                  { 
                                      $("#clsqna").show();
                                      $("#prdtqna").hide();
                                      
                                  }); 
                              
                              $("#3rdswitch").click(function() 
                                      
                                      { 
                                          $("#prdtqna").show();
                                          $("#clsqna").hide();
                                          
                                      }); 

                              
                              $("#clsqna,#prdtqna").click(function()
                                      {
                                  $("#clsqna,#prdtqna").hide();
                                      });
                       
                              
                      
                     });