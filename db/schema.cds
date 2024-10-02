namespace demo;

using {cuid} from '@sap/cds/common';

entity Headers : cuid {
    description : String;
    geometry    : hana.ST_GEOMETRY(4326) @UI.Hidden;
}
