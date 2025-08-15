-- CreateTable
CREATE TABLE "public"."Room" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "public"."Rectangle" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'rect',
    "x" INTEGER NOT NULL,
    "y" INTEGER NOT NULL,
    "width" INTEGER NOT NULL,
    "height" INTEGER NOT NULL,
    "lineWidth" INTEGER NOT NULL,
    "lineDash" INTEGER[],
    "color" TEXT NOT NULL,
    "roomId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "public"."Line" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'line',
    "startX" INTEGER NOT NULL,
    "startY" INTEGER NOT NULL,
    "endX" INTEGER NOT NULL,
    "endY" INTEGER NOT NULL,
    "lineWidth" INTEGER NOT NULL,
    "lineDash" INTEGER[],
    "color" TEXT NOT NULL,
    "roomId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "public"."Circle" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'circle',
    "x" INTEGER NOT NULL,
    "y" INTEGER NOT NULL,
    "r" INTEGER NOT NULL,
    "lineWidth" INTEGER NOT NULL,
    "lineDash" INTEGER[],
    "color" TEXT NOT NULL,
    "roomId" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "public"."Path" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'path',
    "points" INTEGER[],
    "lineWidth" INTEGER NOT NULL,
    "lineDash" INTEGER[],
    "color" TEXT NOT NULL,
    "roomId" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Room_id_key" ON "public"."Room"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Room_name_key" ON "public"."Room"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Rectangle_id_key" ON "public"."Rectangle"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Line_id_key" ON "public"."Line"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Circle_id_key" ON "public"."Circle"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Path_id_key" ON "public"."Path"("id");
