  const part1 = 'Fundamentals of React'
  const exercises1 = 10
  const part2 = 'Using props to pass data'
  const exercises2 = 7
  const part3 = 'State of a component'
  const exercises3 = 14

const Header = () => {
  const course = 'Half Stack application development'
  return (
    <>
      <h1>{course}</h1>
    </>
  )
}

const Part = (props) => {
  return (
    <p>{props.name} {props.exercise}</p>
  )
}

const Content = () => {
  return (
    <div>
      <Part name={part1} exercise={exercises1}/>
      <Part name={part2} exercise={exercises2}/>
      <Part name={part3} exercise={exercises3}/>  
    </div>
  )
}

const Total = () => {
  return (
    <p>Number of exercises {exercises1 + exercises2 + exercises3}</p>
  )
}


const App = () => {

  return (
    <>
    <Header></Header>
    <Content></Content>
    <Total></Total>
    </>
  )
}

export default App