module Step2 = {
  @react.component
  let make = () => {
    <div>
      <div className=%twc("absolute left-0")>
        <div className=%twc("cursor-pointer w-14 h-14 p-3")>
          <svg
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg">
            <path
              d="M15 19l-7-7 7-7" strokeLinecap="round" strokeLinejoin="round" strokeWidth="2"
            />
          </svg>
        </div>
      </div>
      <div className=%twc("pt-14 relative")>
        <div className=%twc("flex w-full")>
          <div className=%twc("flex-1 h-0.5 bg-green-700") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
        </div>
      </div>
      <div className=%twc("mx-5")>
        <h1 className=%twc("font-bold text-2xl pt-14")>
          <span className=%twc("text-green-500")> {`어떤 유형`->React.string} </span> {`의`-> React.string}
          <br />
          {`하우스 시공을 원하시나요?`->React.string}
        </h1>
      </div>
    </div>
  }
}

let default = () => {
  <Step2 />
}
