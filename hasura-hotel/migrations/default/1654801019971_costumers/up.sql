CREATE TABLE IF NOT EXISTS "public"."costumers" (
  "id" TEXT,
  "name" TEXT NOT NULL,
  "created_at" TIMESTAMPTZ DEFAULT NOW() NOT NULL,
  CONSTRAINT "costumers_pkey" PRIMARY KEY ("id")
);