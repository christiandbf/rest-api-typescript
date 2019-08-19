import { Request, Response } from "express";

export const check = (req: Request, res: Response): void => {
  res.send({
    message: "Server is running!!!"
  });
};
