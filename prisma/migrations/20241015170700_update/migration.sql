-- CreateTable
CREATE TABLE "Post" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "ConcretePost" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "age" INTEGER NOT NULL,
    CONSTRAINT "ConcretePost_id_fkey" FOREIGN KEY ("id") REFERENCES "Post" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
