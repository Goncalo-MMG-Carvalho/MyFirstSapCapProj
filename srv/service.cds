
using { smartsolutions as ss } from '../db/schema';

service TaskService {
    entity Users as projection on ss.User;
    entity Tasks as projection on ss.Task;
}
