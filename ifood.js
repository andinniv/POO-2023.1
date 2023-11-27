import { NavigationContainer } from "@react-navigation/native";
import {createStackNavigator} from "@react-navigation/stack";
import ListView from "./ListView";
import DetailView from "./DetailView";

const Stack = createStackNavigator();

function App(){
    return(
       <NavigationContainer>
        <Stack.Navigator>
            <Stack.Screen name = "Lista" component = {ListView}/>
            <Stack.Screen name = "Detalhe" component = {DetailView}/>
        </Stack.Navigator>
       </NavigationContainer> 
    ) 
}

export default App;