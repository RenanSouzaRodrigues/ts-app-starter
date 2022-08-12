import app from "./external/express/express";

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Application running on port ${port}`);
})