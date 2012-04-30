<#assign ContentType="text/html;\n charset=\"${charset}\""/>
<#assign Subject="Вы зарегистрированы в службе поддержки компании TrackStudio. [__]"/>
<html><body>
<#if user.prstatus.id == "402881821204446701124cffdf95036d">
<h2>Регистрация учетной записи</h2>
Здравствуйте, ${user.name}<br>
Служба поддержки компании TrackStudio зарегистрировала для вас учетную запись.<br>
<table>
<tr><td>Учетная запись (логин):</td><td>${user.login}</td></tr>
<tr><td>Пароль:</td><td>${password}</td></tr>
<tr><td>Имя:</td><td>${user.name}</td></tr>
 <tr><td>Компания:</td><td>${company}</td></tr>
<tr><td>Электронная почта:</td><td>${user.email}</td></tr>
<#if (user.tel??)><tr><td>Контактный телефон:</td><td>${user.tel}</td></tr></#if>
</table>

<br>
Со всеми вопросами и за справкой вы можете обращаться по телефону <b>8 (800) 700-66-77</b> в будние дни с 9:00 до 18:00 по Московскому времени.<br><br>

<div>Вы также можете ответить на это письмо по электронной почте. Ваш ответ будет зарегистрирован как новый инцидент. Служба поддержки его прочтет и свяжется с вами по телефону.</div>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;С уважением, Служба поддержки компании TrackStudio
<#else>
<h2>Регистрация учетной записи</h2>
Здравствуйте, ${user.name}<br>
Служба поддержки компании TrackStudio зарегистрировала для вас учетную запись.<br>
<table>
<tr><td>Учетная запись (логин):</td><td>${user.login}</td></tr>
<tr><td>Пароль:</td><td>${password}</td></tr>
<tr><td>Имя:</td><td>${user.name}</td></tr>
 <tr><td>Компания:</td><td>${company}</td></tr>
<tr><td>Электронная почта:</td><td>${user.email}</td></tr>
<#if (user.tel??)><tr><td>Контактный телефон:</td><td>${user.tel}</td></tr></#if>
</table>
<div>
    Вы можете войти в систему, перейдя <a href = "${link}/LoginAction.do?method=loginPage">по ссылке</a>. Рекомендуем вам сменить пароль к учетной записи.
    </div>
<br>
Со всеми вопросами и за справкой вы можете обращаться по телефону <b>8 (800) 700-66-77</b> в будние дни с 9:00 до 18:00 по Московскому времени.<br><br>

<div>Вы также можете ответить на это письмо по электронной почте. Ваш ответ будет зарегистрирован как новый инцидент. Служба поддержки его прочтет и свяжется с вами по телефону.</div>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;С уважением, Служба поддержки компании TrackStudio
</#if>
  </body></html>
