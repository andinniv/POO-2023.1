import { View, Text } from 'react-native';
import { Image } from "@rneui/base";

const DatailView = ({ route }) => {
    const item = route.params.burgue
  
    return (
      <View style = {{flex:1,backgroundColor: "beige", alignItems:"center"}}>
        <View style = {{borderBottomWidth: 2}}>
          <Image style= {{height: 250, width:300, margin: 20, borderRadius: 50}} 
               source={{uri: item.imagem}}/>
        </View>
          <View style = {{maxWidth: 300}}>
            <Text style = {{textAlign: "center", fontSize:30, padding:15, fontWeight: "900"}}>{item.nome}</Text>
            <Text style = {{fontSize: 18, fontWeight:500,}}>{item.descricao}</Text>
            <Text style = {{textAlign: "center",fontSize: 25,color: 'dodgerblue', fontWeight: "bold", paddingTop: 15}}>Valor: R${item.valor.toFixed(2)}</Text>
          </View>
        </View>
    );
  };  

export default DatailView;