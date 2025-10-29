using TaskService as service from '../../srv/service';
annotate service.Tasks with @(
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
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'priority',
            Value : priority,
        },
        {
            $Type : 'UI.DataField',
            Value : assignedTo.username,
            Label : 'username',
        },
        {
            $Type : 'UI.DataField',
            Value : assignedTo.email,
            Label : 'email',
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : limitDate,
            Label : 'limitDate',
        },
        {
            $Type : 'UI.DataField',
            Label : 'createdAt',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : completedAt,
            Label : 'completedAt',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TaskService.updateStatus',
            Label : 'updateStatus',
        },
    ],
    UI.SelectionFields: [
        status,
        priority,
        username
    ],
);

