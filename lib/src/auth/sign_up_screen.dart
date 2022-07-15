import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quitanda/src/config/custom_colors.dart';

import 'components/custom_tex_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children:  [
         const  Expanded(
            child: Center(
              child: Text('Cadastro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  )),
            ),
          ),
          //Fomulario
           Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Email
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),

                    //Senha
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                   
                    //Nome
                      const CustomTextField(
                      icon: Icons.person,
                      label: 'Nome',
                    ),
                    
                  // Celular 
  const CustomTextField(
                      icon: Icons.phone,
                      label: 'Celular',
                    ),
                    // Cpf
  const CustomTextField(
                      icon: Icons.contact_page,
                      label: 'Cpf',
                    ),
                    // Botão entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Cadastrar Usuário',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                   




                  ],
                ),
              ),
            ],
      ),
    );
  }
}
