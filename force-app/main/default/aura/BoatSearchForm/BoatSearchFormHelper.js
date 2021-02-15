({
	loadBoatTypes : function(component, event) {
        
        //Apex method
		var action = component.get("c.getBoatTypes");
        
        action.setCallback(this, function(response){
            var state = response.getState();
            
            if(state === "SUCCESS"){
                component.set("v.boatTypes", response.getReturnValue());
                
            } else {
                console.error("Failed with state: " + state);
            }
        });
        
        $A.enqueueAction(action);
	},
    
    enableNewBoatBtn : function(component, event){
        var isEnabled=$A.get("e.force:createRecord");
        if(isEnabled){
            component.set("v.showNewBtn",true);
        }
    }
})