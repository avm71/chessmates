import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import ChakraProvider from '@chakra-ui/react';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

function App() {
  // 2. Wrap ChakraProvider at the root of your app
  return (
    <ChakraProvider>
      <App />
    </ChakraProvider>
  )
}


