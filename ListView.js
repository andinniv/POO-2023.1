import { Image } from "@rneui/base";
import { Text, View, FlatList, TouchableOpacity } from "react-native"
import {dados} from "./db";

function ListItem({element, navigation}){

    function onPressItem(){
        navigation.navigate("Detalhe", {burgue: element});
    }
    return(
        <View style={{paddingTop:40, alignItems: "center"}}>
            <TouchableOpacity onPress = {onPressItem}>
                <Image style= {{height: 100, width:100}} 
                       source={{uri: element.imagem}}/>
                <Text>{element.nome}</Text>      
            </TouchableOpacity>  
        </View>
    )
}

function ListView(props){

    return(
        <View style={{paddingTop: 10, flex:1}}>
            <View style={{flex:1}}>
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