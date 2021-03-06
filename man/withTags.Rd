\name{withTags}
\alias{withTags}
\title{Evaluate an expression using \code{tags}}
\usage{
withTags(code)
}
\arguments{
\item{code}{A set of tags.}
}
\description{
This function makes it simpler to write HTML-generating code. Instead of
needing to specify \code{tags} each time a tag function is used, as in
\code{tags$div()} and \code{tags$p()}, code inside \code{withTags} is
evaluated with \code{tags} searched first, so you can simply use
\code{div()} and \code{p()}.
}
\details{
If your code uses an object which happens to have the same name as an
HTML tag function, such as \code{source()} or \code{summary()}, it will call
the tag function. To call the intended (non-tags function), specify the
namespace, as in \code{base::source()} or \code{base::summary()}.
}
\examples{
# Using tags$ each time
tags$div(class = "myclass",
  tags$h3("header"),
  tags$p("text")
)

# Equivalent to above, but using withTags
withTags(
  div(class = "myclass",
    h3("header"),
    p("text")
  )
)
}

