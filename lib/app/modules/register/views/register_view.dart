import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.namaController,
                  decoration: InputDecoration(hintText: "Masukkan Nama"),
                  validator: (value){
                    if (value!.isEmpty){
                      return "nama tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.usernameController,
                  decoration: InputDecoration(hintText: "Masukkan Username"),
                  validator: (value){
                    if (value!.isEmpty){
                      return "username tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.telpController,
                  decoration: InputDecoration(hintText: "Masukkan Nomer Telepon"),
                  validator: (value){
                    if (value!.isEmpty){
                      return "nomer telepon tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.alamatController,
                  decoration: InputDecoration(hintText: "Masukkan Alamat"),
                  validator: (value){
                    if (value!.isEmpty){
                      return "alamat tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.passwordcontroller,
                  decoration: InputDecoration(hintText: "Masukkan Password"),
                  validator: (value){
                    if (value!.isEmpty){
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value?
                CircularProgressIndicator():
                ElevatedButton(onPressed: (){
                  controller.register();
                }, child: Text("Register"))
                )
              ],
            ),
          )
      )
    );
  }
}
