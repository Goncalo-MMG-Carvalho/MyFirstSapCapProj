
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
  prio: String;
  priority: String
    @Common.ValueList: {
      label: 'Priority',
      collection: [
        { value: 'low', label: 'Low' },
        { value: 'medium', label: 'Medium' },
        { value: 'high', label: 'High' }
      ]
    };
  status: String @title: 'Status'
    @Common.ValueList: {
      label: 'Status',
      collection: [
        { value: 'New', label: 'New' },
        { value: 'In Progress', label: 'In Progress' },
        { value: 'Done', label: 'Done' }
      ]
    };

  createdAt: Timestamp @cds.on.insert : $now;
  completedAt: Timestamp;
  limitDate: Timestamp;
  username: String(16);
  assignedTo: Association to User on username = username;
}
