
using { smartsolutions as ss } from '../db/schema';


service TaskService {
    @odata.draft.enabled
    entity Users as projection on ss.User;
    @odata.draft.enabled
    entity Tasks as projection on ss.Task { 
        *,
    } actions {
        
        action updateStatus(input:  ss.Status) returns Tasks;
    };
}
