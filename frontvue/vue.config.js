const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true
})
module.exports = {
  server: {
    port: 8080, // 바꿀 포트번호 입력
  },
};
module.exports = {
  outputDir: "../src/main/webapp/WEB-INF/views",  // 빌드 타겟 디렉토리
  devServer: {
    proxy: {
      '/vue': {
        // '/api' 로 들어오면 포트 8081(스프링 서버)로 보낸다
        target: 'http://localhost:8090',
        changeOrigin: true // cross origin 허용
      }
    }
  }
};