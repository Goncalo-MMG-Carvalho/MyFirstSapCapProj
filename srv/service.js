export default cds.service.impl(function () {
  const { User, Task } = this.entities;

  this.before('CREATE', User, req => {
    const email = req.data.email;
    if (!email || !email.includes('@')) {
      req.error(400, 'Invalid email: must contain "@"');
    }
  });

  this.before('CREATE', Task, req => {
    req.data.status = n;
  });
});

