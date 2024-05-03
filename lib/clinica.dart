// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_clinica/infos.dart';

class Myclinica extends StatefulWidget {
  const Myclinica({super.key});

  @override
  State<Myclinica> createState() => _MyclinicaState();
}
final imgdoctor = SizedBox(child: Image.asset("assets/images/8062430.png"),height: 100,width: 100,);
class _MyclinicaState extends State<Myclinica> {
TextEditingController nomeController = TextEditingController();
TextEditingController crmController = TextEditingController();
 bool resid = false;
  bool espcia = false;
  bool pos = false;
  bool permt = false;
  List<infos> lista = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clínica Bem-estar",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.cyan,
        centerTitle: true,),
      body: Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        imgdoctor,
        SizedBox(height: 20,),
         Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                controller: nomeController,
                decoration: InputDecoration(
                labelText: "Nome:",
                prefixIcon: Icon(Icons.abc),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                
              ),
              SizedBox(height: 20,),
         Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                controller: crmController,
                decoration: InputDecoration(
                labelText: "CRM:",
                prefixIcon: Icon(Icons.history_edu_outlined),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20),
                Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              Text(
                "Em que está se formando: ",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              CheckboxListTile(
                title: Text("Residêcia",style: TextStyle(fontStyle: FontStyle.italic),),
                value: resid,
                onChanged: (value) {
                  setState(() {
                    resid = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Especialização",style: TextStyle(fontStyle: FontStyle.italic),),
                value: espcia,
                onChanged: (value) {
                  setState(() {
                    espcia = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Pós graduação",style: TextStyle(fontStyle: FontStyle.italic)),
                value: pos,
                onChanged: (value) {
                  setState(() {
                    pos = value!;
                  });
                },
              ),
               Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(height: 20),

              SwitchListTile(
              title: Text("Permitir quechamadas de emergência?"),
              value: permt, 
              onChanged: (value) {
                permt = value;
                setState(() {
                  
                });
              },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                print("Nome:"+nomeController.text);
                print("CRM:"+crmController.text);
                 print("Permite:"+""+permt.toString());
                List<String> sect = [];
                if (resid) {
                  sect.add("Residência");
                }
                if (espcia) {
                  sect.add("Especialização");
                }
                if (pos) {
                  sect.add("Pós graduação");
                }
                print("Está se formando em:"+sect.toString());
                setState(() {
                  
                });
              }, child: Text("CADASTRAR"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
               nomeController.clear();
               crmController.clear();
                setState(() {
                  
                });
              }, child: Text("CANCELAR"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              ),
              
      ],
      )
      ),
    );}
  }
