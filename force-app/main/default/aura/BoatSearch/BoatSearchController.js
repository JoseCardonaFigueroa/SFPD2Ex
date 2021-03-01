({
	onFormSubmit : function(component, event, helper) {
		let data=event.getParam("formData");
        let boatSearchResultsCmp = component.find("boatSearchResultsCmp");
        if(boatSearchResultsCmp){
            console.log(data.boatTypeId);
            debugger;
            
            boatSearchResultsCmp.search(data.boatTypeId);
        }
	}
})