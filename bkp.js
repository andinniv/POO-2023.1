import * as React from 'react';
import{View} from 'react-native';
import{ Button} from '@rneui/base';
import { Icon, Image, Text, rating } from '@rneui/themed';

function App(){
  return(
    <View style = {{flex: 1, alignItems:"center"}}>
      <Image source={{uri: 'https://www.guiadasemana.com.br/contentFiles/image/2018/05/FEA/galeria/48240_w840h525_1525789687shutterstock-1029593044.jpg'}} 
      style = {{height: 200, width: 200}}/>
      <Text style = {{fontSize: 30, fontWeight: 'bold', padding: 20}}>
        Brigadeiro Gourmet
      </Text>
      <View style  ={{maxWidth: 400}}>
        <Text style  = {{fontWeight: '500'}}>
        O brigadeiro é um dos doces mais tradicionais da culinária brasileira, sendo possível prepará-lo em casa para saborear na frente da TV ou para festas de crianças, coquetéis, eventos e casamentos.
Entre as principais gorduras usadas no brigadeiro está a manteiga, que contém aproximadamente 80% de gordura. Assim como leite condensado, ambos são derivados do leite.
O brigadeiro é um clássico doce brasileiro que ganhou fama no mundo inteiro por ser simplesmente irresistível! É possível enrolá-lo para servir nas festas ou fazer mole, como recheio de bolos.
        </Text>
      </View>
    </View>
  )
}

export default App;
