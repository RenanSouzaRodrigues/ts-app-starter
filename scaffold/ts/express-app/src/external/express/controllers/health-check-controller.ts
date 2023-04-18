import { Response } from "express";
import { HealthCheck } from "../../../cases/health-check/health-check";

export default class HealthCheckController {
    public static CheckHealthStatus(response: Response) {
        const responseMessage: string = new HealthCheck().execute();
        return response.status(200).json({ responseMessage });
    }
}