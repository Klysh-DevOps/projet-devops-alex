const test = require("node:test");
const assert = require("node:assert/strict");
const http = require("node:http");

test("le endpoint /health répond OK", async () => {
  const response = await new Promise((resolve, reject) => {
    http.get("http://localhost:8080/health", (res) => {
      let data = "";

      res.on("data", (chunk) => {
        data += chunk;
      });

      res.on("end", () => {
        resolve({
          statusCode: res.statusCode,
          body: data
        });
      });
    }).on("error", reject);
  });

  assert.equal(response.statusCode, 200);
  assert.equal(response.body, "OK");
});
