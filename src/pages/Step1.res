module Router = Next.Router
open Swr

let default = () => {
  let router = Router.useRouter()
  let (agree, setAgree) = React.useState(_ => false)
  let (name , setName) = React.useState(_ => "")
  let (phoneNumber, setPhoneNumber) = React.useState(_ => "")


  let validCheck = (name, phoneNumber, agree) => {
    let name_b = name->Js.String2.length > 1
    let phoneNumber_b = phoneNumber !== ""

    !(name_b && phoneNumber_b && agree)
  }

  let checkedPrivacy = e => {
    let value = (e->ReactEvent.Synthetic.currentTarget)["checked"]

    setAgree(_ => value)
  }

  let handleNameChange = e => {
    let value = {e->ReactEvent.Synthetic.currentTarget}["value"]

    setName(_ => value)
  }

  let handlePhoneNumberChange = e => {
    let value = {e->ReactEvent.Synthetic.currentTarget}["value"]

    setPhoneNumber(_ => value)
  }

  let handleClick = _ => {
    router->Router.push(`/step2`)
  }

  let globalConfig = SwrConfiguration.useSWRConfig()
  let refreshInterval = globalConfig->Swr.refreshIntervalGet
  refreshInterval->Js.log

  // let createSimestProfile = () => {
    
  // }
  
  <div className=%twc("h-screen pt-14 relative")>
    <div className=%twc("relative")>
      <div className=%twc("absolute w-full")>
        <div className=%twc("flex w-full")>
          <div className=%twc("flex-1 h-0.5 bg-green-700") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
          <div className=%twc("flex-1 h-0.5 bg-gray-100") />
        </div>
      </div>
      <div className=%twc("mx-5")>
        <h1 className=%twc("font-bold text-2xl pt-14")>
          {`정확한 시공 견적을 위해`->React.string}
          <br />
          <span className=%twc("text-green-500")> {`이름`->React.string} </span>
          {`과 `->React.string}
          <span className=%twc("text-green-500")> {`휴대전화번호`->React.string} </span>
          {`를`->React.string}
          <br />
          {`알려주세요`->React.string}
        </h1>
        <form className=%twc("mt-12")>
          <div className=%twc("mb-5")>
            <input
              className=%twc("form-input w-full border-gray-300 border-solid rounded-md border-2")
              value={name}
              placeholder={`이름을 입력해 주세요`}
              onChange={handleNameChange}
            />
          </div>
          <div>
            <input
            value={phoneNumber}
              className=%twc("form-input w-full border-gray-300 border-solid rounded-md border-2")
              placeholder={`휴대전화번호를 입력해 주세요`}
              onChange={handlePhoneNumberChange}
            />
          </div>
          <div className=%twc("mt-7")>
            <label className=%twc("flex items-center")>
              <input type_="checkbox" checked={agree} onChange={checkedPrivacy}  />
              <span className=%twc("ml-2")>
                {`(필수)개인정보 수집·이용제공·마케팅 활용에 동의합니다.`->React.string}
              </span>
            </label>
          </div>
        </form>
      </div>
    </div>
    <div className=%twc("fixed text-center bottom-0 w-full")>
      <div className=%twc("min-w-max max-w-2xl p-5")>
        <button
          disabled={validCheck(name, phoneNumber, agree)}
          onClick={handleClick}
          className=%twc(
            "w-full disabled:bg-gray-300 disabled:text-white disabled:opacity-50 bg-green-700 text-white border border-solid border-transparent rounded-xl"
          )>
          <span className=%twc("text-lg leading-10")> {`다음`->React.string} </span>
        </button>
      </div>
    </div>
  </div>
}
