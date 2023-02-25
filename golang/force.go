// force.go

package force

import "fmt"

func ApplyForce(mass, acceleration float64) {
    force := mass * acceleration
    fmt.Printf("The force applied is: %f\n", force)
}
