<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<regionBase id="rgbase1">
			<region height="100.00%" id="rgTV" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="50.00%" id="rgCentro" left="25.00%" top="25.00%" width="50.00%" zIndex="2">
				</region>
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dVideo1" region="rgCentro">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="pInicio">
		<media descriptor="dVideo1" id="video1" src="media/video1.mpg" type="video/mpeg">
		</media>
		<port component="video1" id="port1">
		</port>
	</body>
</ncl>
