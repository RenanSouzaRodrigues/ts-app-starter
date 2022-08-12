import { Response } from "express";

export default class HealthCheckController {
    public static CheckHealthStatus(response: Response) {
        return response.status(200).json({ message: "Api is working!" });
    }
}