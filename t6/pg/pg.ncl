<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<connectorBase id="connectorBase1">
			<causalConnector id="onEndStart">
				<simpleCondition role="onEnd">
				</simpleCondition>
				<simpleAction role="start">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onBeginStart">
				<simpleAction role="start">
				</simpleAction>
				<simpleCondition role="onBegin">
				</simpleCondition>
			</causalConnector>
			<causalConnector id="onKeySelectionStartStopAbort">
				<connectorParam name="keyCode">
				</connectorParam>
				<simpleCondition key="$keyCode" role="onSelection">
				</simpleCondition>
				<compoundAction operator="seq">
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
				</compoundAction>
			</causalConnector>
		</connectorBase>
		<regionBase id="regionBase1">
			<region height="100.00%" id="video1" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
			</region>
			<region height="10.00%" id="rgRedButton" left="88.29%" top="3.33%" width="9.02%" zIndex="2">
			</region>
			<region height="40.00%" id="detailRegion" left="29.63%" top="30.00%" width="40.00%" zIndex="2">
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dscVideo1" region="video1">
			</descriptor>
			<descriptor id="dscRedButton" region="rgRedButton">
			</descriptor>
			<descriptor id="dscGreenButton" region="detailRegion">
			</descriptor>
			<descriptor id="dscYellowButton" region="detailRegion">
			</descriptor>
			<descriptor id="dscBlueButton" region="detailRegion">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dscVideo1" id="mediaVideo" src="media/video1.mpg" type="video/mpeg">
		</media>
		<media descriptor="dscRedButton" id="mediaRedButton" src="media/interat.gif" type="image/gif">
		</media>
		<media descriptor="dscGreenButton" id="mediaPag1" src="media/Pagina1.gif" type="image/gif">
		</media>
		<media descriptor="dscYellowButton" id="mediaPag2" src="media/Pagina2.gif" type="image/gif">
		</media>
		<media descriptor="dscBlueButton" id="mediaPag3" src="media/Pagina3.gif" type="image/gif">
		</media>
		<port component="mediaVideo" id="port1">
		</port>
		<link id="linkVideo2RedButton" xconnector="onBeginStart">
			<bind component="mediaVideo" role="onBegin">
			</bind>
			<bind component="mediaRedButton" role="start">
			</bind>
		</link>
		<link id="linkVideo2Video" xconnector="onEndStart">
			<bind component="mediaVideo" role="onEnd">
			</bind>
			<bind component="mediaVideo" role="start">
			</bind>
		</link>
		<link id="linkRedButtonEvent" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaRedButton" role="onSelection">
				<bindParam name="keyCode" value="RED">
				</bindParam>
			</bind>
			<bind component="mediaRedButton" role="stop">
			</bind>
			<bind component="mediaPag1" role="start">
			</bind>
		</link>
		<link id="onClickGreenPag1" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag1" role="onSelection">
				<bindParam name="keyCode" value="GREEN">
				</bindParam>
			</bind>
			<bind component="mediaPag1" role="stop">
			</bind>
			<bind component="mediaPag2" role="start">
			</bind>
		</link>
		<link id="onClickBluePag1" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag1" role="onSelection">
				<bindParam name="keyCode" value="BLUE">
				</bindParam>
			</bind>
			<bind component="mediaPag1" role="stop">
			</bind>
			<bind component="mediaRedButton" role="start">
			</bind>
		</link>
		<link id="onClickGreenPag2" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag2" role="onSelection">
				<bindParam name="keyCode" value="GREEN">
				</bindParam>
			</bind>
			<bind component="mediaPag2" role="stop">
			</bind>
			<bind component="mediaPag3" role="start">
			</bind>
		</link>
		<link id="onClickYellowPag2" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag2" role="onSelection">
				<bindParam name="keyCode" value="YELLOW">
				</bindParam>
			</bind>
			<bind component="mediaPag2" role="stop">
			</bind>
			<bind component="mediaPag1" role="start">
			</bind>
		</link>
		<link id="onClickBluePag2" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag2" role="onSelection">
				<bindParam name="keyCode" value="BLUE">
				</bindParam>
			</bind>
			<bind component="mediaPag2" role="stop">
			</bind>
			<bind component="mediaRedButton" role="start">
			</bind>
		</link>
		<link id="onClickYellowPag3" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag3" role="onSelection">
				<bindParam name="keyCode" value="YELLOW">
				</bindParam>
			</bind>
			<bind component="mediaPag3" role="stop">
			</bind>
			<bind component="mediaPag2" role="start">
			</bind>
		</link>
		<link id="onClickBluePag3" xconnector="onKeySelectionStartStopAbort">
			<bind component="mediaPag3" role="onSelection">
				<bindParam name="keyCode" value="BLUE">
				</bindParam>
			</bind>
			<bind component="mediaPag3" role="stop">
			</bind>
			<bind component="mediaRedButton" role="start">
			</bind>
		</link>
	</body>
</ncl>
