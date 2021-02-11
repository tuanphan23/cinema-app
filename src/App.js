import React from 'react';
import { Provider } from 'react-redux';

import './App.scss';
import Header from './components/header/Header';
import Main from './components/main/Main';
import store from './redux/store';

const App = () => {
  return (
    <Provider store={store}>
      <Header />
      <div className="app">
        <Main />
      </div>
    </Provider>
  );
};

export default App;
