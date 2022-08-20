// Local imports
import * as consume from "./consume.feeds.ts";
import * as call from "./call.feeds.ts";
import * as prune from "./prune.feeds.ts";
import * as items from "./items.feeds.ts";

export function main() {
  console.log("hi");
  consume.op();
  call.op();
  prune.op();
  items.op();
  console.log("bye");
}

main();
