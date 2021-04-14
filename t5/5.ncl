<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
        <connectorBase id="connBaseId">
            <causalConnector id="onEndStart">
                <simpleCondition role="onEnd">
                </simpleCondition>
                <simpleAction max="unbounded" role="start">
                </simpleAction>
            </causalConnector>
        </connectorBase>

        <regionBase id="regionBase0">
            <region id="rgTV" left="0.00%" top="0.00%" width="100.00%" height="100.00%" zIndex="1">
                <region id="R1" left="2.00%" top="10.00%" width="47.00%" height="60.00%" zIndex="1"/>
                <region id="R2" left="51.00%" top="10.00%" width="47.00%" height="60.00%" zIndex="1"/>
                <region id="R1L" left="2.00%" top="72.00%" width="47.00%" height="24.00%" zIndex="1"/>
                <region id="R2L" left="51.00%" top="72.00%" width="47.00%" height="24.00%" zIndex="1"/>
            </region>
        </regionBase>

        <descriptorBase id="descriptorBase1">
            <descriptor explicitDur="5s" id="Dv1" region="R1">
            </descriptor>
            <descriptor explicitDur="5s" id="Dv2" region="R2">
            </descriptor>
            <descriptor explicitDur="5s" id="Di1" region="R1">
            </descriptor>
            <descriptor explicitDur="5s" id="Di2" region="R2">
            </descriptor>
            <descriptor explicitDur="10s" id="Da1">
            </descriptor>
            <descriptor explicitDur="10s" id="Da2">
            </descriptor>
            <descriptor explicitDur="10s" id="Dt1" region="R1L">
                <descriptorParam name="fit" value="fill"/>
                <descriptorParam name="fontColor" value="white"/>
            </descriptor>
            <descriptor explicitDur="10s" id="Dt2" region="R2L">
                <descriptorParam name="fit" value="fill"/>
                <descriptorParam name="fontColor" value="white"/>
            </descriptor>
        </descriptorBase>

    </head>
    <body id="myBodyID">
        <media descriptor="Dv1" id="video1" src="media/video1.mpg" type="video/mpeg">
        </media>
        <media descriptor="Dv2" id="video2" src="media/video2.mpg" type="video/mpeg">
        </media>
        <media descriptor="Di1" id="img1" src="media/imagem1.jpg" type="image/jpeg">
        </media>
        <media descriptor="Di2" id="img2" src="media/imagem2.gif" type="image/gif">
        </media>
        <media descriptor="Dt1" id="text1" src="media/legenda1.txt" type="text/plain">
        </media>
        <media descriptor="Dt2" id="text2" src="media/legenda2.txt" type="text/plain">
        </media>
        <media descriptor="Da1" id="audio1" src="media/audio1.mp3" type="audio/mp3">
        </media>
        <media descriptor="Da2" id="audio2" src="media/audio2.mp3" type="audio/mp3">
        </media>

        <port id="port1" component="video1"/>
        <port id="port2" component="audio1"/>
        <port id="port3" component="text1"/>

        <link id="link1" xconnector="onEndStart">
            <bind role="onEnd" component="video1"/>
            <bind role="start" component="img1"/>
        </link>
        <link id="link2" xconnector="onEndStart">
            <bind role="onEnd" component="img1"/>
            <bind role="start" component="img2"/>
        </link>
        <link id="link3" xconnector="onEndStart">
            <bind role="onEnd" component="img2"/>
            <bind role="start" component="video2"/>
        </link>
        <link id="link4" xconnector="onEndStart">
            <bind role="onEnd" component="audio1"/>
            <bind role="start" component="audio2"/>
        </link>
        <link id="link5" xconnector="onEndStart">
            <bind role="onEnd" component="text1"/>
            <bind role="start" component="text2"/>
        </link>
    </body>
</ncl>
