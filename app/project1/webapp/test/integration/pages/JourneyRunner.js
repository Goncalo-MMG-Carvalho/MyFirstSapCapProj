sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"project1/test/integration/pages/TasksList",
	"project1/test/integration/pages/TasksObjectPage"
], function (JourneyRunner, TasksList, TasksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('project1') + '/test/flpSandbox.html#project1-tile',
        pages: {
			onTheTasksList: TasksList,
			onTheTasksObjectPage: TasksObjectPage
        },
        async: true
    });

    return runner;
});

