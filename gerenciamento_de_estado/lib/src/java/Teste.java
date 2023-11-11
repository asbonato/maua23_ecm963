public class Teste {
    public static void main (String[] args){
        Pessoa p1 = new Pessoa("João da Silva", 36 );
        System.out.println(p1.getNome());
        System.out.println(p1.getIdade());
        p1.setIdade(17);
        //p1.idade = 17;
        System.out.println(p1.getIdade());
    }
}
