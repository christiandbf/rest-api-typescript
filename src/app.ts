import compression from "compression";
import express, { Application } from "express";
import morgan from "morgan";

import routes from "./routes";

const app: Application = express();

app.use(morgan("dev"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(compression());

app.use("/", routes);

export default app;
