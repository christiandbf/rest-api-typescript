import { Router } from "express";

import * as healthcheck from "../controllers/healthcheck";

const router: Router = Router();

router.get("/", healthcheck.check);

export default router;
