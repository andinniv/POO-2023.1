import { Image } from "@rneui/base";
import { Text, View, FlatList, TouchableOpacity } from "react-native"
import {dados} from "./db";

function ListItem({element, navigation}){

    function onPressItem(){
        navigation.navigate("HamburguerDetails", {burgue: element});
    }
    return(
        <View style = {{padding: 15, borderBottomWidth:1}}>
            <TouchableOpacity onPress = {onPressItem}>
            <View style = {{flexDirection: "row", maxWidth: 200}}>
          <Image style= {{height: 110, width:110, margin: 10, borderRadius: 15}} 
               source={{uri: element.imagem}}/>
          <View style = {{flexDirection: "column", padding: 10}}>
            <Text style = {{fontSize: 20, fontWeight: "900", paddingBottom: 10}}>{element.nome}</Text>
            <Text style = {{fontWeight: "600"}}>{element.descricao}</Text>
            <Text style = {{color: 'dodgerblue', fontWeight: "bold", paddingTop:10, fontSize:20}}>Valor: R${element.valor.toFixed(2)}</Text>
          </View>
        </View> 
            </TouchableOpacity>  
        </View>
    )
}

function ListView(props){

    return(
        <View style={{flex:1, backgroundColor: "beige"}}>
            <View>
                <FlatList 
                    data = {dados}
                    renderItem = {
                    ({item}) => 
                    <ListItem element= {item} navigation = {props.navigation}/>
                    }
                />
            </View>
        </View>
    )
}

export default ListView;