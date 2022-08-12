import { Request, Response, Router } from "express";
import HealthCheckController from "../controllers/health-check-controller";

const routes = Router();

routes.get("/status", (_request: Request, response: Response) => {
    HealthCheckController.CheckHealthStatus(response);
})

export default routes;