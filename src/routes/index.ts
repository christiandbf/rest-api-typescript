import { Router } from "express";

import healthcheck from "./healthcheck";

const router: Router = Router();

router.use("/", healthcheck);

export default router;
