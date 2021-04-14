<ncl id="myNCLDocID">
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
					<simpleAction max="unbounded" qualifier="par" role="abort">
					</simpleAction>
				</compoundAction>
			</causalConnector>
		</connectorBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dscTV" region="rgTV">
			</descriptor>
			<descriptor id="dscLogo" region="rgLogo">
			</descriptor>
		</descriptorBase>
		<regionBase id="regionBase1">
			<region height="100.00%" id="rgTV" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
			</region>
			<region height="10.00%" id="rgLogo" left="5.00%" top="5.00%" width="10.00%" zIndex="1">
			</region>
		</regionBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dscTV" id="Video" src="media/video1.mpg" type="video/mpeg">
		</media>
		<media descriptor="dscLogo" id="logoVerde" src="media/botao_verde.gif" type="image/gif">
		</media>
		<port component="Video" id="port1">
		</port>
		<link id="link2" xconnector="onBeginStart">
			<bind component="Video" role="onBegin">
			</bind>
			<bind component="logoVerde" role="start">
			</bind>
		</link>
		<link id="link1" xconnector="onEndStart">
			<bind component="Video" role="onEnd">
			</bind>
			<bind component="Video" role="start">
			</bind>
		</link>
		<media descriptor="dscTV" id="Video2" src="media/video2.mpg" type="video/mpeg">
		</media>
		<link id="link3" xconnector="onKeySelectionStartStopAbort">
			<bind component="logoVerde" role="onSelection">
				<bindParam name="keyCode" value="GREEN">
				</bindParam>
			</bind>
			<bind component="Video" role="abort">
			</bind>
			<bind component="Video2" role="start">
			</bind>
			<bind component="logoVerde" role="stop">
			</bind>
		</link>
	</body>
</ncl>
