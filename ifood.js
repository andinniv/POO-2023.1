import { NavigationContainer } from "@react-navigation/native";
import {createStackNavigator} from "@react-navigation/stack";
import ListView from "./ListView";
import DetailView from "./DetailView";

const Stack = createStackNavigator();

function App(){
    return(
       <NavigationContainer>
        <Stack.Navigator>
            <Stack.Screen name = "HamburguerList" component = {ListView}/>
            <Stack.Screen name = "HamburguerDetails" component = {DetailView}/>
        </Stack.Navigator>
       </NavigationContainer> 
    ) 
}

export default App;