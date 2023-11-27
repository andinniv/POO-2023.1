import { Image } from "@rneui/base";
import { Text, View, FlatList, TouchableOpacity } from "react-native"
import {dados} from "./db";

function ListItem({element, navigation}){

    function onPressItem(){
        navigation.navigate("HamburguerDetails", {burgue: element});
    }
    return(
        <View style={{alignItems: "center"}}>
            <TouchableOpacity onPress = {onPressItem}>
                <Image style= {{height: 100, width:100, borderRadius: 15, margin: 20}} 
                       source={{uri: element.imagem}}/>
                <View style = {{alignItems: "center"}}>
                    <Text style = {{fontSize: 15}}>{element.nome}</Text>
                </View>  
            </TouchableOpacity>  
        </View>
    )
}

function ListView(props){

    return(
        <View style={{flex:1, backgroundColor: "burlywood"}}>
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