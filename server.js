import { serve } from 'bun';

serve({
  port: 3000,
  async fetch(req)
  {
    const { pathname: path } = new URL(req.url);

    console.log(path)

    if (/\/(?:home|index(?:\.html?)?)?(\?)?$/.test(path))
    {
      return new Response(Bun.file('./index.html'));
    }
    else if (path === '/healthcheck')
    {
      return new Response(null, { status: 200 });
    }
    else
    {
      try
      {
        return new Response(Bun.file('./statics' + path));
      }
      catch
      {
        console.log("File not found")
        return new Response('Not Found', { status: 404 });
      }
    }

  }
});

console.log("➜ http://localhost:3000/")