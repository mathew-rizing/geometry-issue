using {DemoService} from '../srv/demo-service';

annotate DemoService.Headers with @UI: {
    Identification     : [{
        $Type : 'UI.DataFieldForAction',
        Label : 'Update Geometry',
        Action: 'DemoService.updateGeometry'
    }],
    LineItem           : [
        {Value: description},
        {
            $Type             : 'UI.DataFieldForAction',
            Label             : 'Create with Geometry',
            Action            : 'DemoService.EntityContainer/createHeaderWithGeometry',
            InvocationGrouping: #Isolated
        }
    ],
    Facets             : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'HeaderDetailsFacet',
        Label : 'Details',
        Target: '@UI.FieldGroup#Details'
    }],
    FieldGroup #Details: {Data: [
        {
            Label: 'Description',
            Value: description
        },
        {
            Label: 'Geometry',
            Value: geometry
        },
    ]},
};
