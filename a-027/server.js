import * as dotenv from 'dotenv';
// 1. โหลด .env ก่อน
dotenv.config(); 

// ใช้ Dynamic Import เพื่อให้แน่ใจว่า dotenv.config() ทำงานเสร็จก่อน
async function startServer() {
    
    // 2. Import app ภายในฟังก์ชัน (จะถูกโหลดหลัง dotenv ทำงาน)
    const { default: app } = await import('./app.js'); 
    
    const PORT = process.env.APP_PORT || 8080; 

    // สั่งให้ Server เริ่มรอรับการเชื่อมต่อ
    app.listen(PORT, () => {
        console.log(`🚀 Server is running on port ${PORT}`);
    });
}

startServer();