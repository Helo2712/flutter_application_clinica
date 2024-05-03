class infos{
  String nome = "";
  String resid = "";
  String espcia = "";
  String pos = "";
  bool permitir = false;
  int crm = 0;

  infos(this.nome,this.crm,this.permitir);

  get getNome => this.nome;

 set setNome( nome) => this.nome = nome;

  get getResid => this.resid;

 set setResid( resid) => this.resid = resid;

  get getEspcia => this.espcia;

 set setEspcia( espcia) => this.espcia = espcia;

  get getPos => this.pos;

 set setPos( pos) => this.pos = pos;

  get getPermitir => this.permitir;

 set setPermitir( permitir) => this.permitir = permitir;

  get getCrm => this.crm;

 set setCrm( crm) => this.crm = crm;
 


}