// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Swr from "swr";
import * as React from "react";
import * as Router from "next/router";
import * as SimEstLayout from "./layouts/SimEstLayout.mjs";

function $$default(props) {
  var router = Router.useRouter();
  var content = React.createElement(props.Component, props.pageProps);
  var match = router.route;
  if (match === "/examples") {
    return React.createElement(SimEstLayout.make, {
                children: null
              }, React.createElement("h1", {
                    className: "font-bold"
                  }, "Examples Section"), React.createElement("div", undefined, content));
  } else {
    return React.createElement(SimEstLayout.make, {
                children: React.createElement(Swr.SWRConfig, {
                      value: {
                        loadingTimeout: 1000,
                        refreshInterval: 3000
                      },
                      children: content
                    })
              });
  }
}

export {
  $$default ,
  $$default as default,
  
}
/* swr Not a pure module */
