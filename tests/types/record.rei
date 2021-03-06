type scalars = {
  string,
  int
};

module MyQuery: {
  type t = Js.t({. variousScalars: scalars});

  let make: unit => Js.t({ . parse: Js.Json.t => t, query: string, variables: Js.Json.t });
  let makeWithVariables: Js.t({.}) => Js.t({ . parse: Js.Json.t => t, query: string, variables: Js.Json.t });
};