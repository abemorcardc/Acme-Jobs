<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.favourite-link" action="http://www.example.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.javi-link" action="https://www.youtube.com/?hl=es&gl=ES"/>
			<acme:menu-suboption code="master.menu.anonymous.angel-link" action="https://myanimelist.net/"/>
            <acme:menu-suboption code="master.menu.anonymous.flor-link" action="https://www.xataka.com/"/>
            <acme:menu-suboption code="master.menu.anonymous.abel-link" action="https://www.digitalcombatsimulator.com/en/"/>

		</acme:menu-option>
		
		<acme:menu-option code="master.menu.shout" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.shouts" action="/anonymous/shout/list"/>
			<acme:menu-suboption code="master.menu.create" action="/anonymous/shout/create"/>
  	</acme:menu-option>


		<acme:menu-option code="master.menu.granja-bulletin" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.granja-bulletins" action="/anonymous/granja-bulletin/list"/>
			<acme:menu-suboption code="master.menu.granja-bulletin.create" action="/anonymous/granja-bulletin/create"/>
    </acme:menu-option>
    
		<acme:menu-option code="master.menu.morante-bulletin" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.morante-bulletins" action="/anonymous/morante-bulletin/list"/>
			<acme:menu-suboption code="master.menu.morante-bulletin.create" action="/anonymous/morante-bulletin/create"/>
    </acme:menu-option>

   
			<acme:menu-option code="master.menu.correa-bulletin" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.correa-bulletins" action="/anonymous/correa-bulletin/list"/>
			<acme:menu-suboption code="master.menu.correa-bulletin.create" action="/anonymous/correa-bulletin/create"/>

		</acme:menu-option>
		
		<acme:menu-option code="master.menu.caballero-bulletin" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.caballero-bulletins" action="/anonymous/caballero-bulletin/list"/>
			<acme:menu-suboption code="master.menu.caballero-bulletin.create" action="/anonymous/caballero-bulletin/create"/>
   		</acme:menu-option>

		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
			<acme:menu-suboption code="master.menu.provider.javi-link" action="https://www.youtube.com/?hl=es&gl=ES"/>
			<acme:menu-suboption code="master.menu.provider.angel-link" action="https://myanimelist.net/"/>
            <acme:menu-suboption code="master.menu.provider.flor-link" action="https://www.xataka.com/"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
			<acme:menu-suboption code="master.menu.consumer.javi-link" action="https://www.youtube.com/?hl=es&gl=ES"/>
			<acme:menu-suboption code="master.menu.consumer.angel-link" action="https://myanimelist.net/"/>
            <acme:menu-suboption code="master.menu.consumer.flor-link" action="https://www.xataka.com/"/>
		</acme:menu-option>
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update" access="hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRole('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update" access="hasRole('Consumer')"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>
