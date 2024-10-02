using demo as db from '../db/schema';

service DemoService {
    @odata.draft.enabled
    entity Headers as projection on db.Headers
        actions {
            action updateGeometry();
        };

    action createHeaderWithGeometry();
}
