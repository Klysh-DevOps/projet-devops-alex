const test = require("node:test");
const assert = require("node:assert/strict");
const fs = require("node:fs");

test("index.html contient les éléments principaux", () => {
  const html = fs.readFileSync("index.html", "utf8");
  assert.match(html, /<title>Mon projet DevOps<\/title>/);
  assert.match(html, /CI\/CD/);
  assert.match(html, /Docker/);
});

test("les fichiers frontend existent", () => {
  assert.equal(fs.existsSync("style.css"), true);
  assert.equal(fs.existsSync("script.js"), true);
});
