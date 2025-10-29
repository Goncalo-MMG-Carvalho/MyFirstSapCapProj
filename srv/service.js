//const cds = require('@sap/cds');
//const express = require('express');


export default cds.service.impl(function () {
  const { User, Task } = cds.entities('smartsolutions');

  // Ao criar uma tarefa
  this.before('CREATE', 'Tasks', async req => {
    if (!req.data.status) {
      req.data.status = 'n'; // 'New'
    }
  });

  // Ao atualizar uma tarefa
  this.before('UPDATE', 'Tasks', async req => {
    if (req.data.status === 'done') {
      req.data.completedAt = new Date().toISOString();
    }
  });

});


