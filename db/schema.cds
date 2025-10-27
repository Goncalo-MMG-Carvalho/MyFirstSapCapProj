using { cuid } from '@sap/cds/common';

namespace taskManager;


type Priority : String enum {
  low    = 'Low';
  medium = 'Medium';
  high   = 'High';
}

type Status : String enum {
  n    = 'New';
  inP  = 'InProgress';
  done = 'Done';
}



entity User: cuid {
  username: String(16);
  email: String;
  task: Association to many Task;
};

entity Task: cuid {
  title: String;
  description: String;
  priority: Priority;
  status: Status;
  createdAt: Timestamp @cds.on.insert : $now;
  limitDate: Timestamp;
  toBeDoneBy: Association to User;
}




