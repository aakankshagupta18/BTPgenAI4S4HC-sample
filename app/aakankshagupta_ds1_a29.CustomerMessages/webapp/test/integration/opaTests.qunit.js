sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'aakankshaguptads1a29/CustomerMessages/test/integration/FirstJourney',
		'aakankshaguptads1a29/CustomerMessages/test/integration/pages/CustomerMessageList',
		'aakankshaguptads1a29/CustomerMessages/test/integration/pages/CustomerMessageObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerMessageList, CustomerMessageObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('aakankshaguptads1a29/CustomerMessages') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerMessageList: CustomerMessageList,
					onTheCustomerMessageObjectPage: CustomerMessageObjectPage
                }
            },
            opaJourney.run
        );
    }
);