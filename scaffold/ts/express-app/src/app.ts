import dotenv from "dotenv";
import app from "./external/express/express";

dotenv.config({ path: `./env/${process.env.NODE_ENV}.env`});

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Application running on port ${port}`);
})