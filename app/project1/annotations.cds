using TaskService as service from '../../srv/service';
annotate service.Tasks with @(
    UI.Criticality: {$edmJson: {$If: [
        {$Eq: [{$Path: 'status'}, 'New']},
        'UI.CriticalityType/Negative',
        {$If: [
        {$Eq: [{$Path: 'status'}, 'In Progress']},
        'UI.CriticalityType/Critical',
        'UI.CriticalityType/Positive'
        ]}
    ]}},
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'priority',
                Value : priority,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'createdAt',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'completedAt',
                Value : completedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'limitDate',
                Value : limitDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'username',
                Value : username,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TaskService.updateStatus',
            Label : 'updateStatus',
        },
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : 'title',
        },
        {
            $Type : 'UI.DataField',
            Value : status,
            Label : 'status',
        },
        {
            $Type : 'UI.DataField',
            Value : priority,
            Label : 'priority',
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },
        {
            $Type : 'UI.DataField',
            Value : username,
            Label : 'username',
        },
    ],
    UI.SelectionFields: [
        status,
        priority,
        username
    ],
);


/*
annotate TaskService.Tasks.status with @(
  UI.Criticality: {$edmJson: {$If: [
    {$Eq: [{$Path: 'status'}, 'New']},
    'UI.CriticalityType/Negative',
    {$If: [
      {$Eq: [{$Path: 'status'}, 'In Progress']},
      'UI.CriticalityType/Critical',
      'UI.CriticalityType/Positive'
    ]}
  ]}}
);*/

