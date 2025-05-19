import { serve } from "bun";

const PORT = process.env.PORT || 3000;

serve({
  port: PORT,
  routes: {
    '/'()
    {
      return new Response(Bun.file("./index.html"));
    }
  }
});
