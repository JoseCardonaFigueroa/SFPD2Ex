({
    doInit: function(component,event,helper){
        //alert('doinit');
    },
	doSearch : function(component, event, helper) {
        var params = event.getParam('arguments');
        component.set("v.boatTypeId", params.boatTypeId);
		helper.onSearch(component, event);
	},
})