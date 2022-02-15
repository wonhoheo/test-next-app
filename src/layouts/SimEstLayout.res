@react.component
let make = (~children) => {
  <div className=%twc("flex flex-row justify-center")>
    <div className=%twc("w-full")>
      <div className=%twc("max-w-2xl m-auto flex-col relative")> children </div>
    </div>
  </div>
}
