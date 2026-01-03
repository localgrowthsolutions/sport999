export default {
  async fetch(request, env) {
    const url = new URL(request.url);
    const pathname = url.pathname;
    
    // Handle category pages
    if (pathname === '/football' || pathname === '/football/') {
      return env.ASSETS.fetch(new Request(url.origin + '/football/index.html'));
    }
    if (pathname === '/basketball' || pathname === '/basketball/') {
      return env.ASSETS.fetch(new Request(url.origin + '/basketball/index.html'));
    }
    if (pathname === '/nfl' || pathname === '/nfl/') {
      return env.ASSETS.fetch(new Request(url.origin + '/nfl/index.html'));
    }
    
    return env.ASSETS.fetch(request);
  }
}
