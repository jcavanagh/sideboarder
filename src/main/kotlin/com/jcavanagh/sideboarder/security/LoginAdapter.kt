import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter

@Configuration
@EnableWebSecurity
class LoginAdapter : WebSecurityConfigurerAdapter() {
  override fun configure(http: HttpSecurity) {
    http.authorizeRequests().anyRequest().authenticated().and().oauth2Login()
  }
}