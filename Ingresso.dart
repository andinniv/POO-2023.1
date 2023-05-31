class Ingresso {
  double valor = 0.0;
  bool valido = true;

  Ingresso(double valor, bool valido) {
    this.valor = valor;
    this.valido = valido;
  }

  bool usarIngresso() {
    if (valido) {
      valido = false;
      print("Acesso Liberado!");
      return true;
    } else {
      print("Acesso Negado, Este ingresso já foi utilizado!");
      return false;
    }
  }

  double getPreco() {
    return valor;
  }
}

class IngressoNormal extends Ingresso {
  IngressoNormal(double valor, bool valido) : super(valor, valido);
}

class IngressoVIP extends Ingresso {
  double adicional = 0.0;

  IngressoVIP(double valor, double adicional, bool valido)
      : super(valor, valido) {
    this.adicional = adicional;
  }

  @override
  double getPreco() {
    return valor + adicional;
  }
}

class IngressoMeia extends Ingresso {
  double desconto = 0.5;

  IngressoMeia(double valor, bool valido) : super(valor, valido) {
    this.desconto = desconto;
  }

  @override
  double getPreco() {
    return valor * desconto;
  }
}

class IngressoCortesia extends Ingresso {
  IngressoCortesia(double valor, bool valido) : super(valor, valido) {}

  @override
  double getPreco() {
    return 0;
  }
}

void main() {
  IngressoNormal ing1 = IngressoNormal(10.0, true);
  IngressoNormal ing2 = IngressoNormal(10.0, true);

  IngressoVIP ingvip1 = IngressoVIP(10.0, 20.0, true);
  IngressoVIP ingvip2 = IngressoVIP(10.0, 20.0, true);

  IngressoMeia ingmeia1 = IngressoMeia(10.0, true);
  IngressoCortesia ingcort1 = IngressoCortesia(10.0, true);

  print(ingvip1.usarIngresso());
  print(ingvip1.usarIngresso());

  print("Preço do Ingresso: R\$${ing1.getPreco()}");
  print("Preço do Ingresso: R\$${ing2.getPreco()}");
  print("Preço do Ingresso VIP: R\$${ingvip1.getPreco()}");
  print("Preço do Ingresso VIP: R\$${ingvip2.getPreco()}");
  print("Preço do Ingresso Meia: R\$${ingmeia1.getPreco()}");
  print("Preço do Ingresso Cortesia: R\$${ingcort1.getPreco()}");
}
