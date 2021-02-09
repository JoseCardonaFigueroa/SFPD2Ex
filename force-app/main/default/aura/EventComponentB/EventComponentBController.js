({
    // Method that is going to be fire and is being called from the component. 
    handleEvent : function(component, event, helper) {


        var order = component.get('v.Order') ? component.get('v.Order') : 0;
        var newOrder = order + 1;
        var message = component.get('v.Result') ? component.get('v.Result') : '';
        var newMessage = message + '<div class="button">(' + newOrder + ') Component 2 received the event!</div>';

        component.set('v.Result', newMessage);
        component.set('v.Order', newOrder);

    },

    sendEvent: function(component,event,helper){
        
        component.set('v.Result', '');
        component.set('v.Order', 0);

        //Retrieved event which was registered in the component
        var evt = component.getEvent('eventReceived');

        evt.fire();// Fires an event in this case event received, which was retrieved from the last line of code
    }
})
