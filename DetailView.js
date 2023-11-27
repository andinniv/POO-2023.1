import { View, Text } from 'react-native';
import { Image } from "@rneui/base";

const DatailView = ({ route }) => {
    const item = route.params.burgue
  
    return (
      <View style = {{padding: 15, borderWidth: 1, borderRadius: 15, backgroundColor: "white"}}>
        <View style = {{flexDirection: "row", maxWidth: 200}}>
          <Image style= {{height: 100, width:100, margin: 10, borderRadius: 15}} 
               source={{uri: item.imagem}}/>
          <View style = {{flexDirection: "column", padding: 10}}>
            <Text>{item.nome}</Text>
            <Text>{item.descricao}</Text>
            <Text style = {{color: 'red', fontWeight: "bold"}}>Valor: R${item.valor}</Text>
          </View>
        </View>
      </View>
    );
  };  

export default DatailView;