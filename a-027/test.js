const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function main() {
  // ลองดึงข้อมูลแถวแรกมาดู
  const result = await prisma.courses.findFirst(); 
  console.log("✅ เชื่อมต่อสำเร็จ! เจอข้อมูล:", result);
}

main()
  .catch((e) => console.error("❌ พังครับ:", e))
  .finally(() => prisma.$disconnect());   