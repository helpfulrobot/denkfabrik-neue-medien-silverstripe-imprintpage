<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
		<div class="content">
		
			<% if $SiteConfig.Company1 %>
				<p><b>$SiteConfig.Company1</b></p>
			<% end_if %>
			
			<% if $SiteConfig.Company2 %>
				<p>$SiteConfig.Company2</p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if $SiteConfig.Firstname %>
				<p>$SiteConfig.Firstname $SiteConfig.Surname</p>
			<% end_if %>
			
			<% if $SiteConfig.Street %>
				<p>$SiteConfig.Street $SiteConfig.Streetnumber</p>
			<% end_if %>
			
			<% if $SiteConfig.Zip %>
				<p>$SiteConfig.Zip $SiteConfig.City</p>
			<% end_if %>
			
			<% if $SiteConfig.Country %>
				<p>$SiteConfig.Country</p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if $SiteConfig.Phone %>
				<p><span><%t ImprintPage.PHONE %>:</span> $SiteConfig.Phone</p>
			<% end_if %>
								
			<% if $SiteConfig.Fax %>
				<p><span><%t ImprintPage.FAX %>:</span> $SiteConfig.Fax</p>
			<% end_if %>
			
			<% if $SiteConfig.Mobile %>
				<p><span><%t ImprintPage.MOBILE %>:</span> $SiteConfig.Mobile</p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if $SiteConfig.Email %>				
				<p><span><%t ImprintPage.EMAIL %>:</span> <a href="mailto:$SiteConfig.Email" class="mail">$SiteConfig.Email</a></p>
			<% end_if %>
			
			<% if $SiteConfig.Website %>
				<p><span><%t ImprintPage.WEBSITE %>:</span> <a href="$SiteConfig.Website">$SiteConfig.Website</a></p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if $SiteConfig.Vatnumber %>
				<p><span><%t ImprintPage.VATNUMBER %>:</span> $SiteConfig.Vatnumber</p>
			<% end_if %>
			
			<% if $SiteConfig.CommercialRegister %>
				<p><span><%t ImprintPage.COMMERCIALREGISTER %>:</span> $SiteConfig.CommercialRegister</p>
				
			<% end_if %>
			
			<p>&nbsp;</p>
		
			$Content
		</div>
	</article>
	
	$Form
	$PageComments
</div>