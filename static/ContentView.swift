//
//  ContentView.swift
//  ViewOfAI
//
//  Created by sxh on 2025/7/3.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            // 背景图
            Image("farm_background") // 请将背景图片命名为 farm_background 并添加到资源中
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                Spacer().frame(height: 60)

                // 中间心形图标
                Image(systemName: "heart.fill") // 示例图标
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)

                Spacer()

                // 登录按钮
                VStack(spacing: 20) {
                    Button(action: {
                        print("微信登录")
                    }) {
                        Text("用微信登录")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }

                    Button(action: {
                        print("苹果登录")
                    }) {
                        Text("用苹果登录")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    
                    Button(action: {
                        print("账号密码登录")
                    }) {
                        Text("账号密码登录")
                            .foregroundColor(.black)
                    }

                    Text("登录即表示同意软件使用协议")
                        .font(.footnote)
                        .foregroundColor(.white.opacity(0.8))
                        .padding(.top, 10)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 50)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
