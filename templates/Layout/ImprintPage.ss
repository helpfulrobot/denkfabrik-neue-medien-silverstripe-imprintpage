
	
<article>
	<h1>$Title</h1>
	
	<section class="companyinfos">
		<% control SiteInfo %>
					
			<% if Company1 %>
				<p><b>$Company1</b></p>
			<% end_if %>
			
			<% if Company2 %>
				<p>$Company2</p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if Firstname %>
				<p>$Firstname $surname</p>
			<% end_if %>
			
			<% if Street %>
				<p>$Street $Streetnumber</p>
			<% end_if %>
			
			<% if Zip %>
				<p>$Zip $City</p>
			<% end_if %>
			
			<% if Country %>
				<p>$Country</p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if Phone %>
				<p><span><% _t('TPLPHONE','Telefon:') %></span> $Phone</p>
			<% end_if %>
								
			<% if Fax %>
				<p><span><% _t('TPLFAX','Fax:') %></span> $Fax</p>
			<% end_if %>
			
			<% if Mobile %>
				<p><span><% _t('TPLMOBILE','Mobil:') %></span> $Mobile</p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if Email %>				
				<p><span><% _t('TPLEMAIL','E-Mail:') %></span> <a href="mailto:$Top.MailObfuscated" class="mail">$Top.MailObfuscated</a></p>
			<% end_if %>
			
			<% if Website %>
				<p><span><% _t('TPLWEBSITE','Internet:') %>:</span> <a href="$Website">$Website</a></p>
			<% end_if %>
			
			<p>&nbsp;</p>
			
			<% if Vatnumber %>
				<p><% _t('TPLVATNUMBER','USt-ID-Nr.:') %> $Vatnumber</p>
			<% end_if %>
			
		<% end_control %>
	</section>
	
	<section>	
		$Content
	</section>
</article>