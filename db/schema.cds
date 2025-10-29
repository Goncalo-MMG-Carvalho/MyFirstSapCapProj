
using { cuid } from '@sap/cds/common';

namespace smartsolutions;

type Priority : String enum {
  low    = 'Low';
  medium = 'Medium';
  high   = 'High';
}

type Status : String enum {
  n    = 'New' @title: 'new';
  inP  = 'InProgress' @title: 'inProg';
  done = 'Done' @title: 'done';
}

entity User : cuid {
  username: String(16);
  email: String;
  tasks: Association to many Task on tasks.username = username;
}

entity Task : cuid {
  title: String;
  description: String;
  priority: Priority;
  status: Status;
  createdAt: Timestamp @cds.on.insert : $now;
  completedAt: Timestamp;
  limitDate: Timestamp;
  username: String(16);
  assignedTo: Association to User on username = username;
}
