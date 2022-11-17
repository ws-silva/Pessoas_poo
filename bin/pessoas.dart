

void main() {
  List<double> notas = [5.5, 6, 7.5];
  List<String> materias = ['matemática', 'biologia'];
  Aluno aluno1 =  Aluno('Fernando', 20, 1.65, 'E.E José', notas: notas);
  Professor professor1 = Professor('luan', 35, 1.5, 'E.E José', materias: materias);
  professor1.mostrarProfessor();
  print('\n\n\n');
  aluno1.mostrarAluno();
}


class Pessoa{
  String nome;
  int idade;
  double altura;
  String escola;

  Pessoa(this.nome, this.idade, this.altura, this.escola);
}

class Aluno extends Pessoa{
  List<double> notas;
  
  Aluno(String nome, int idade, double altura, String escola, {required this.notas}):super(nome, idade, altura, escola);

  int somarMedia(){
    double soma = 0;
    for(int x = 0; x < notas.length; x+=1){
      soma += notas[x];
    }
    double media = soma / notas.length;
    int media_inteira = media.floor();
    return media_inteira;
  }

  void mostrarAluno(){
    int media = somarMedia();
    print('========= ALUNO =========');
    print('nome: $nome\nIdade: $idade\nAltura: $altura\nEscola: $escola\nNota media:$media');
    for(int x = 0; x < notas.length; x+=1){
      print('Nota ${x+1}: ${notas[x]}');
    }

  }
}

class Professor extends Pessoa{
  List<String> materias;
  
  Professor(String nome, int idade, double altura, String escola, {required this.materias}):super(nome, idade, altura, escola);

  void mostrarProfessor(){
    print('======== PROFESSOR ========');
    print('nome: $nome\nIdade: $idade\nAltura: $altura\nEscola: $escola');
    for(int x = 0; x < materias.length; x +=1){
      print('Matéria ${x+1}: ${materias[x]}');
    }
  }
}