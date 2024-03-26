import { Counter } from "./features/counter/Counter"

const App = () => {
  return (
    <div className="h-screen w-screen flex flex-col justify-center items-center">
      <header className="App-header">
        <Counter />
      </header>
    </div>
  )
}

export default App
