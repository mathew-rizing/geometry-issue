
class DemoService extends cds.ApplicationService {
    async init(){
        const {Headers} = this.entities;

        this.on("createHeaderWithGeometry", async (req) => {
            await INSERT({description: "Generated", geometry: "SRID=4326;POINT (1.62965918650832 3.1377292657822693)"}).into(Headers);
        });
        this.on("updateGeometry", [Headers, Headers.drafts], async (req) => {
            await UPDATE(req.subject).with({geometry: "SRID=4326;POINT (1.62965918650832 3.1377292657822693)"});
        });
    return super.init();
    }
}
module.exports = DemoService;