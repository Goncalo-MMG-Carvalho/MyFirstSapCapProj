
using { smartsolutions as ss } from '../db/schema';


service TaskService {
    @odata.draft.enabled
    @odata.draft.bypass
    entity Users as projection on ss.User;
    @odata.draft.enabled
    @odata.draft.bypass
    entity Tasks as projection on ss.Task { 
        *,
    } actions {
        
        action updateStatus(input: String) returns Tasks;
    };
}
