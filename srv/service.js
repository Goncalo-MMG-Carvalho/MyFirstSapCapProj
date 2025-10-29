//const cds = require('@sap/cds');
//const express = require('express');


export default cds.service.impl(function () {
  const { User, Task } = cds.entities('smartsolutions');

  // Ao criar uma tarefa
  this.before('CREATE', ['Tasks', 'Tasks.drafts'], async req => {
    if (!req.data.status || req.data.status === null || req.data.status.trim() === '') {
      req.data.status = 'n'; // 'New'
    }
  });

  // Ao atualizar uma tarefa
  this.before('UPDATE', 'Tasks', async req => {
    if (req.data.status === 'done') {
      req.data.completedAt = new Date().toISOString();
    }
  });

  this.on('updateStatus', async (req) => {
    
    const { input } = req.data;
    const taskID = req.params[0].ID; // This is the ID of the selected Task

    await UPDATE('Tasks').set({ status: input }).where({ ID: taskID });

    return { success: true };
  });

});


