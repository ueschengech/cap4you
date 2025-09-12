sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ns/projectshop/test/integration/pages/ProductList",
	"ns/projectshop/test/integration/pages/ProductObjectPage"
], function (JourneyRunner, ProductList, ProductObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ns/projectshop') + '/index.html',
        pages: {
			onTheProductList: ProductList,
			onTheProductObjectPage: ProductObjectPage
        },
        async: true
    });

    return runner;
});

