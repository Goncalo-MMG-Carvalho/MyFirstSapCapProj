
using { cuid } from '@sap/cds/common';

namespace smartsolutions;

entity User : cuid {
  username: String(16);
  email: String;
  tasks: Association to many Task on tasks.username = username;
}

entity Task : cuid {
  title: String;
  description: String;
  priority: String;
  status: String;
  createdAt: Timestamp @cds.on.insert : $now;
  completedAt: Timestamp;
  limitDate: Timestamp;
  username: String(16);
  assignedTo: Association to User on username = username @title : 'assignedTo';
}
