-- CreateTable
CREATE TABLE "Payment" (
    "id" UUID NOT NULL,
    "dueDate" TIMESTAMP(3) NOT NULL,
    "payDatetimestamp" TIMESTAMP(3) NOT NULL,
    "amount" TEXT NOT NULL DEFAULT E'',
    "acceptedBy" UUID,
    "user" UUID,
    "image" TEXT NOT NULL DEFAULT E'',

    CONSTRAINT "Payment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Payment_acceptedBy_key" ON "Payment"("acceptedBy");

-- CreateIndex
CREATE INDEX "Payment_user_idx" ON "Payment"("user");

-- AddForeignKey
ALTER TABLE "Payment" ADD CONSTRAINT "Payment_acceptedBy_fkey" FOREIGN KEY ("acceptedBy") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Payment" ADD CONSTRAINT "Payment_user_fkey" FOREIGN KEY ("user") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
