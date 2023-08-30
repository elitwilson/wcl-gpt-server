import Koa from 'koa';

const app = new Koa();

app.use(async (ctx) => {
  ctx.body = 'Hello World!';
});

app.listen(8000, () => {
  console.log('Server running on http://localhost:8000');
});
