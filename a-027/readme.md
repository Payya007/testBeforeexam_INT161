เริ่มต้น ง่ายๆ
1. สร้าง "บัตรประชาชน" ให้โปรเจกต์ก่อน (Init)
ก่อนจะมี node_modules ได้ ต้องมีไฟล์ package.json ก่อน เพื่อบอกว่าโปรเจกต์นี้ชื่ออะไร

npm init -y
npm audit fix --force
npm i prisma @prisma/client
 
npm i dotenv  
npm install prisma --save-dev
npx prisma init 
npx prisma -v
npm audit fix --force 

แล้ว ก็ไป สร้าง db ใน local workbeance หรือ  ใน webstrom  อะ สร้าง db_027
แล้ว ก็สร้าง server ระบุ root ระบุ password ระบุ  port แล้วค่อยเอาที่เรากำหนด ไปใส่ .env 

// ติดตั้ง  ให้คุยกับ env ได้  บรรทัด 9 
แล้วก็ เอา database ยัดลงไปใน local แล้วใช่ไหม ไม่ว่าจะเป็น  workbence local  หรือ web strom ก็ แปะ sql วางลงไปทั้ง สร้าง tables และ  insert 
ถ้ามีใน database แล้วปั๊ป ก็   คือ เอา จาาก  databse เราสร้าง schma เพื่อ ใช้ใน backend ได้ 
npx prisma db pull
npx prisma generate

และ ต้องไปเพิ่ม ถ้าอยากได้ npm run dev
"scripts": {
     "dev": "node server.js", // ไฟล์ที่จะรัน 
    "test": "echo \"Error: no test specified\" && exit 1"
  }


ถ้า error ไม่เจอ module 
{
  "name": "a-027",
  "version": "1.0.0",
  "main": "index.js",
    "type": "module", }
    ใส่ใน packet.json ด้วย