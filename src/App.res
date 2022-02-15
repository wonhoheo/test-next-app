type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

// We are not using `@react.component` since we will never
// use <App/> within our ReScript code.
// It's only used within `pages/_app.js`
let default = (props: props): React.element => {
  let {component, pageProps} = props

  let router = Next.Router.useRouter()

  let content = React.createElement(component, pageProps)

  switch router.route {
  | "/examples" =>
    <SimEstLayout>
      <h1 className="font-bold"> {React.string("Examples Section")} </h1> <div> content </div>
    </SimEstLayout>
  | _ => <SimEstLayout> 
          <Swr.SwrConfigProvider
            value={Swr.swrConfiguration(~refreshInterval=3000, ~loadingTimeout=1000, ())}>
          content 
          </Swr.SwrConfigProvider>
          </SimEstLayout>
  }
}
