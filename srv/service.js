
export default cds.service.impl(function () {
  const { User } = this.entities;

  this.before('CREATE', User, req => {
    const email = req.data.email;
    if (!email || !email.includes('@')) {
      req.error(400, 'Invalid email: must contain "@"');
    }
  });
});
