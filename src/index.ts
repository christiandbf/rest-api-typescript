import mongoose from "mongoose";

import app from "./app";

import { MONGO_URL, PORT } from "./config";

const main = async (): Promise<void> => {
  await mongoose.connect(MONGO_URL, { useNewUrlParser: true });
  await app.listen(PORT);

  // tslint:disable-next-line:no-console
  console.log(`App running on port ${PORT}`);
};

// tslint:disable-next-line:no-console
console.log("Launching server...");

main();
