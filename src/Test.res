@react.component
module Profile = {
  @react.component
  let make = (~name: string, ~imageUrl: string) =>
    <img className="avatar" src={imageUrl} alt={name} />
}

let default = () => {
  <section>
    <h1 className="text-6xl"> {React.string("Amazing scientists")} </h1>
    <Profile name="Lin Lanying" imageUrl="https://i.imgur.com/1bX5QH6.jpg" />
    <Profile name="Gregorio Y. Zara" imageUrl="https://i.imgur.com/7vQD0fPs.jpg" />
    <Profile name="Hedy Lamarr" imageUrl="https://i.imgur.com/yXOvdOSs.jpg" />
  </section>
}
