import { serve } from 'bun';

serve({
  port: 8080,
  fetch(req) {
    let url = new URL(req.url);
    let path = url.pathname === '/' ? '/index.html' : url.pathname;
    try {
      return new Response(Bun.file('.' + path));
    } catch {
      return new Response('Not found', { status: 404 });
    }
  }
});
