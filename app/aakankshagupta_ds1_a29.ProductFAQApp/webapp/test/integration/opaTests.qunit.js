sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'aakankshaguptads1a29/ProductFAQApp/test/integration/FirstJourney',
		'aakankshaguptads1a29/ProductFAQApp/test/integration/pages/ProductFAQList',
		'aakankshaguptads1a29/ProductFAQApp/test/integration/pages/ProductFAQObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductFAQList, ProductFAQObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('aakankshaguptads1a29/ProductFAQApp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductFAQList: ProductFAQList,
					onTheProductFAQObjectPage: ProductFAQObjectPage
                }
            },
            opaJourney.run
        );
    }
);