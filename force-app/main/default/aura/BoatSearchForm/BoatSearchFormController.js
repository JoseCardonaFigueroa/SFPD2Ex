({
	doInit : function(component, event, helper) {
        helper.enableNewBoatBtn(component,event);
        helper.loadBoatTypes(component,event);
	},
    
    selectChanged : function(component, event, helper){
        // Se obtiene el boatType a traves de nuestra seleccion
		var selectedBoatType = component.find("boatTypes").get("v.value");  
        
        // Se guarda el boattype en el atributo de selectedBoatType
        component.set("v.selectedBoatType", selectedBoatType);
    },
    
    onClickNewBoat : function(component, event, helper){
        
        // Obtenemos el selectedBoatType que esta guardado en el atributo
        var selectedBoatType = component.get("v.selectedBoatType");
        
        // Esto es para poder disparar el evento de creacion de record.
        // Un modal window se lanzara para la creacion del registro
        // con los parametros que pasemos
        var createNewBoatEvent = $A.get("e.force:createRecord");
        createNewBoatEvent.setParams({
            "entityApiName" : "Boat__c",
            "defaultFieldValues": {
                "BoatType__c" : selectedBoatType
            }
        });
        
        // Fires the event
        createNewBoatEvent.fire();
    },
})