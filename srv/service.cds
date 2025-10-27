using{ taskManager } from '../db/schema';

service taskManagerService {
    entity User as projection on taskManager.User;
    entity Task as projection on taskManager.Task;
}