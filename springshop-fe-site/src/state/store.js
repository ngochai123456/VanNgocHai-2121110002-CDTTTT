import {configureStore} from '@reduxjs/toolkit'
import createReducer from './cartSlice'
export default configureStore({
  reducer: {
    cart: createReducer
  },
})