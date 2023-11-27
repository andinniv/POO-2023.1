import { View, Text } from 'react-native';
import { Image } from "@rneui/base";

const DatailView = ({ route, navigation }) => {
    const item = route.params.burgue
  
    return (
      <View>
        <Image style= {{height: 100, width:100}} 
               source={{uri: item.imagem}}/>
        <Text>{item.nome}</Text>
        <Text>{item.descricao}</Text>
        <Text>{item.valor}</Text>
      </View>
    );
  };  

export default DatailView;