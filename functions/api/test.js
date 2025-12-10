export async function onRequestGet(context) {
  const { antiques_db, antiques_storage } = context.env;

  const dealers = await antiques_db.prepare("SELECT * FROM dealers").all();
  await antiques_storage.put("test.txt", "hello from R2");

  return new Response(JSON.stringify({
    dealers: dealers.results,
    r2Test: "test.txt uploaded"
  }), {
    headers: { "Content-Type": "application/json" }
  });
}
