
using { taskManager.User, taskManager.Task } from './schema';


annotate User with {
  username @UI.lineItem : [{ position: 10 }];
  email    @UI.lineItem : [{ position: 20 }];
};

annotate Task with {
  title       @UI.lineItem : [{ position: 10 }];
  description @UI.lineItem : [{ position: 20 }];
  priority    @UI.lineItem : [{ position: 30 }];
  status      @UI.lineItem : [{ position: 40 }];
  createdAt   @UI.lineItem : [{ position: 50 }];
  limitDate   @UI.lineItem : [{ position: 60 }];
  toBeDoneBy     @UI.lineItem : [{ position: 70 }];
};
