## Model representation

    m=number of training sets
    x=input
    y=output
    h=hypothesis (function that maps x into y)

The training set is fed into the Learning Algorithm which modifies `h`

Linear regression with one variable or univariate linear regresion=
    h0(x) = θ0 + θ1x

## Cost function

To evaluate the model function (hypothesis) we need a way to measure the
accuracy. That's the cost function.

For a cost function the `square error function` is used this time and also is
the most used function in regression problems.

With the cost function defined we now have a minimization problem.

## Gradient descent

A way to find local minimums in multivariable minimization problems.
