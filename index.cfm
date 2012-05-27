<cfoutput>
<h1>SimpleProperties V#simplePropertiesVersion()#</h1>

<p>
	SimpleProperties when called on an object, will return only simple properties of the object AND its nested properties.
</p>
<p>
	Have you ever dumped an object with nested properties to screen whilst debugging using <code>##user.properties()##</code>, only to fatigue your scrolling finger trying to find the property you're looking for amongst all the nested property's methods? Well, scroll no more..
</p>
<p>
	SimpleProperties will recurse through your object, its nested properties and return a structure of simple values. It is most useful when using <code>&lt;cfdump></code> to visually render your object.
</p>

<h3>Example</h3>
<pre>
&lt;!--- Get a structure of all the simple properties for an object --->
&lt;cfset user = model("user").findByKey(key=1, include="addresses")>
&lt;cfset simpleProps = user.simpleProperties()>
&lt;cfdump var="##user.simpleProperties()##">
</pre>

<h2>Disclaimer</h2>
<p>Use this plugin at your own risk. All care taken, but no responsibility.<br /> This plugin may:
	<ul>
		<li>Not work as described</li>
		<li>Cause that rash to re-appear</li>
	</ul>
</p>
</cfoutput>