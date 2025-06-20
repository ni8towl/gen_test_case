<?xml version='1.0' encoding='UTF-8'?>
<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:sxy="http://www.iec.ch/61850/2003/SCLcoordinates" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.iec.ch/61850/2003/SCL SCL.xsd" version="2007" revision="B">
  <Header id="NUCBX1 SCD" nameStructure="IEDName" revision="R0.0" toolID="emacs" version="25.2.2">
  </Header>
  <Substation desc="Munich" name="AA1" sxy:x="1" sxy:y="5">
    <PowerTransformer name="TA1" sxy:y="9" type="PTR">
      <TransformerWinding name="W1" type="PTW">
        <Terminal bayName="Q01" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L12"/>
      </TransformerWinding>
      <TransformerWinding name="W2" type="PTW">
        <Terminal bayName="Q01" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L12"/>
      </TransformerWinding>
    </PowerTransformer>
    <PowerTransformer name="TA2" sxy:x="15" sxy:y="9" type="PTR">
      <TransformerWinding name="W1" type="PTW">
        <Terminal bayName="Q04" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L12"/>
      </TransformerWinding>
      <TransformerWinding name="W2" type="PTW">
        <Terminal bayName="Q02" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/L11"/>
      </TransformerWinding>
    </PowerTransformer>
    <VoltageLevel name="D1">
      <Voltage multiplier="k" unit="V">320</Voltage>
      <Bay name="BB1">
        <ConnectivityNode name="L1" pathName="AA1/D1/BB1/L1"/>
      </Bay>
      <Bay name="BB2" sxy:y="1">
        <ConnectivityNode name="L1" pathName="AA1/D1/BB2/L1"/>
      </Bay>
      <Bay desc="TF1" name="Q01" sxy:x="1" sxy:y="2">
        <LNode iedName="AA1D1Q01Q1" ldInst="PROTECTION" lnClass="PDIS" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="PROTECTION" lnClass="PTOC" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="T3S1S1" lnClass="ATCC" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="T3T1P1" lnClass="YLTC" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="T3T1P1" lnClass="YPTR" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="PROTECTION" lnClass="PTRC" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="PROTECTION" lnClass="RBRF" lnInst="1"/>
        <LNode iedName="AA1D1Q01Q1" ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1"/>
        <ConductingEquipment name="BC1" sxy:y="4" type="CTR">
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L1"/>
          <Terminal bayName="Q01" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L11"/>
          <SubEquipment name="L1" phase="A"/>
          <SubEquipment name="L2" phase="B"/>
          <SubEquipment name="L3" phase="C"/>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="QA1" sxy:y="5" type="CBR">
          <LNode iedName="AA1D1Q01Q1" ldInst="QA1" lnClass="CILO" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QA1" lnClass="XCBR" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QA1" lnClass="CSWI" lnInst="1"/>
          <Terminal bayName="Q01" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L11"/>
          <Terminal bayName="Q01" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="AA1D1Q01Q1" ldInst="QB1" lnClass="CILO" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QB1" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QB1" lnClass="CSWI" lnInst="1"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="1" type="DIS">
          <LNode iedName="AA1D1Q01Q1" ldInst="QB2" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QB2" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QB2" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB2/L1"/>
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC1" sxy:x="1" sxy:y="3" type="DIS">
          <LNode iedName="AA1D1Q01Q1" ldInst="QC1" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QC1" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q01Q1" ldInst="QC1" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="Q01" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/grounded"/>
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q01/L1"/>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q01/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/D1/Q01/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/D1/Q01/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/D1/Q01/L12"/>
      </Bay>
      <Bay desc="Line Starnberg" name="Q02" sxy:x="5" sxy:y="2">
        <LNode iedName="AA1D1Q02Q1" ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1"/>
        <LNode iedName="AA1D1Q02Q1" ldInst="PROTECTION" lnClass="PTOC" lnInst="1"/>
        <LNode iedName="AA1D1Q02Q1" ldInst="PROTECTION" lnClass="PTRC" lnInst="1"/>
        <LNode iedName="AA1D1Q02Q1" ldInst="PROTECTION" lnClass="RBRF" lnInst="1"/>
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <Terminal bayName="Q02" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="2" type="DIS">
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="XSWI" lnInst="2"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="2"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CILO" lnInst="2"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB2/L1"/>
          <Terminal bayName="Q02" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QA1" sxy:y="4" type="CBR">
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="XCBR" lnInst="1"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="4"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CILO" lnInst="4"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="RSYN" lnInst="1"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="RREC" lnInst="1"/>
          <Terminal bayName="Q02" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L1"/>
          <Terminal bayName="Q02" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L11"/>
        </ConductingEquipment>
        <ConductingEquipment name="BC1" sxy:y="5" type="CTR">
          <LNode iedName="AA1D1Q02Q1" ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1"/>
          <Terminal bayName="Q02" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L11"/>
          <Terminal bayName="Q02" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L12"/>
          <SubEquipment name="L1" phase="A"/>
          <SubEquipment name="L2" phase="B"/>
          <SubEquipment name="L3" phase="C"/>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB9" sxy:y="7" type="DIS">
          <LNode iedName="AA1D1Q02Q2" ldInst="CONTROL" lnClass="XSWI" lnInst="5"/>
          <LNode iedName="AA1D1Q02Q2" ldInst="CONTROL" lnClass="CSWI" lnInst="5"/>
          <LNode iedName="AA1D1Q02Q2" ldInst="CONTROL" lnClass="CILO" lnInst="5"/>
          <Terminal bayName="Q02" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L12"/>
          <Terminal bayName="Q02" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L13"/>
        </ConductingEquipment>
        <ConductingEquipment name="OHL Starnberg" sxy:y="11" type="IFL">
          <Terminal bayName="Q02" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L13"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC1" sxy:x="2" sxy:y="3" type="DIS">
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="XSWI" lnInst="3"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="3"/>
          <LNode iedName="AA1D1Q02Q1" ldInst="CONTROL" lnClass="CILO" lnInst="3"/>
          <Terminal bayName="Q02" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/grounded"/>
          <Terminal bayName="Q02" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC9" sxy:x="2" sxy:y="8" type="DIS">
          <LNode iedName="AA1D1Q02Q2" ldInst="CONTROL" lnClass="XSWI" lnInst="6"/>
          <LNode iedName="AA1D1Q02Q2" ldInst="CONTROL" lnClass="CSWI" lnInst="6"/>
          <LNode iedName="AA1D1Q02Q2" ldInst="CONTROL" lnClass="CILO" lnInst="6"/>
          <Terminal bayName="Q02" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/grounded"/>
          <Terminal bayName="Q02" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L13"/>
        </ConductingEquipment>
        <ConductingEquipment name="BA1" sxy:x="2" sxy:y="10" type="VTR">
          <Terminal bayName="Q02" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q02/L13"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1D1Q02Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="1" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1D1Q02Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="2" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1D1Q02Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="3" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N">
            <LNode iedName="AA1D1Q02Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="4" prefix="N"/>
          </SubEquipment>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q02/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/D1/Q02/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/D1/Q02/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/D1/Q02/L12"/>
        <ConnectivityNode name="L13" pathName="AA1/D1/Q02/L13"/>
      </Bay>
      <Bay desc="Line Passau" name="Q03" sxy:x="11" sxy:y="2">
        <LNode iedName="AA1D1Q03Q1" ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1"/>
        <LNode iedName="AA1D1Q03Q1" ldInst="PROTECTION" lnClass="PTOC" lnInst="1"/>
        <LNode iedName="AA1D1Q03Q1" ldInst="PROTECTION" lnClass="PTRC" lnInst="1"/>
        <LNode iedName="AA1D1Q03Q1" ldInst="PROTECTION" lnClass="RBRF" lnInst="1"/>
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <Terminal bayName="Q03" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="2" type="DIS">
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="XSWI" lnInst="2"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="2"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CILO" lnInst="2"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB2/L1"/>
          <Terminal bayName="Q03" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QA1" sxy:y="4" type="CBR">
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="XCBR" lnInst="1"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="4"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CILO" lnInst="4"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="RSYN" lnInst="1"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="RREC" lnInst="1"/>
          <Terminal bayName="Q03" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L1"/>
          <Terminal bayName="Q03" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L11"/>
        </ConductingEquipment>
        <ConductingEquipment name="BC1" sxy:y="5" type="CTR">
          <LNode iedName="AA1D1Q03Q1" ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1"/>
          <Terminal bayName="Q03" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L11"/>
          <Terminal bayName="Q03" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L12"/>
          <SubEquipment name="L1" phase="A"/>
          <SubEquipment name="L2" phase="B"/>
          <SubEquipment name="L3" phase="C"/>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB9" sxy:y="7" type="DIS">
          <LNode iedName="AA1D1Q03Q2" ldInst="CONTROL" lnClass="XSWI" lnInst="5"/>
          <LNode iedName="AA1D1Q03Q2" ldInst="CONTROL" lnClass="CSWI" lnInst="5"/>
          <LNode iedName="AA1D1Q03Q2" ldInst="CONTROL" lnClass="CILO" lnInst="5"/>
          <Terminal bayName="Q03" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L12"/>
          <Terminal bayName="Q03" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L13"/>
        </ConductingEquipment>
        <ConductingEquipment name="OHL Passau" sxy:y="11" type="IFL">
          <Terminal bayName="Q03" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L13"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC1" sxy:x="2" sxy:y="3" type="DIS">
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="XSWI" lnInst="3"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CSWI" lnInst="3"/>
          <LNode iedName="AA1D1Q03Q1" ldInst="CONTROL" lnClass="CILO" lnInst="3"/>
          <Terminal bayName="Q03" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/grounded"/>
          <Terminal bayName="Q03" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC9" sxy:x="2" sxy:y="8" type="DIS">
          <LNode iedName="AA1D1Q03Q2" ldInst="CONTROL" lnClass="XSWI" lnInst="6"/>
          <LNode iedName="AA1D1Q03Q2" ldInst="CONTROL" lnClass="CSWI" lnInst="6"/>
          <LNode iedName="AA1D1Q03Q2" ldInst="CONTROL" lnClass="CILO" lnInst="6"/>
          <Terminal bayName="Q03" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/grounded"/>
          <Terminal bayName="Q03" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L13"/>
        </ConductingEquipment>
        <ConductingEquipment name="BA1" sxy:x="2" sxy:y="10" type="VTR">
          <Terminal bayName="Q03" cNodeName="L13" name="L13" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q03/L13"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1D1Q03Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="1" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1D1Q03Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="2" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1D1Q03Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="3" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N">
            <LNode iedName="AA1D1Q03Q2" ldInst="MEASUREMENT" lnClass="TVTR" lnInst="4" prefix="N"/>
          </SubEquipment>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q03/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/D1/Q03/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/D1/Q03/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/D1/Q03/L12"/>
        <ConnectivityNode name="L13" pathName="AA1/D1/Q03/L13"/>
      </Bay>
      <Bay desc="TF2" name="Q04" sxy:x="16" sxy:y="2">
        <LNode iedName="AA1D1Q04Q1" ldInst="PROTECTION" lnClass="PDIS" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="PROTECTION" lnClass="PTOC" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="PROTECTION" lnClass="PTRC" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="PROTECTION" lnClass="RBRF" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="T3S1S1" lnClass="ATCC" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="T3T1P1" lnClass="YLTC" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="T3T1P1" lnClass="YPTR" lnInst="1"/>
        <LNode iedName="AA1D1Q04Q1" ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1"/>
        <ConductingEquipment name="BC1" sxy:y="4" type="CTR">
          <Terminal bayName="Q04" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L1"/>
          <Terminal bayName="Q04" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L11"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1D1Q04Q1" ldInst="MEASUREMENT" lnClass="TCTR" lnInst="1" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1D1Q04Q1" ldInst="MEASUREMENT" lnClass="TCTR" lnInst="2" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1D1Q04Q1" ldInst="MEASUREMENT" lnClass="TCTR" lnInst="3" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="QA1" sxy:y="5" type="CBR">
          <LNode iedName="AA1D1Q04Q1" ldInst="QA1" lnClass="CILO" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QA1" lnClass="XCBR" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QA1" lnClass="CSWI" lnInst="1"/>
          <Terminal bayName="Q04" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L11"/>
          <Terminal bayName="Q04" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB1" type="DIS">
          <LNode iedName="AA1D1Q04Q1" ldInst="QB1" lnClass="CILO" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QB1" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QB1" lnClass="CSWI" lnInst="1"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <Terminal bayName="Q04" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="1" type="DIS">
          <LNode iedName="AA1D1Q04Q1" ldInst="QB2" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QB2" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QB2" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB2/L1"/>
          <Terminal bayName="Q04" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC1" sxy:x="1" sxy:y="3" type="DIS">
          <LNode iedName="AA1D1Q04Q1" ldInst="QC1" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QC1" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1D1Q04Q1" ldInst="QC1" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="Q04" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/grounded"/>
          <Terminal bayName="Q04" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q04/L1"/>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q04/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/D1/Q04/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/D1/Q04/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/D1/Q04/L12"/>
      </Bay>
      <Bay desc="ISIO 200 Bus Coupler" name="Q05" sxy:x="21" sxy:y="2">
        <ConductingEquipment name="QB1" sxy:x="1" sxy:y="2" type="DIS">
          <LNode iedName="AA1D1Q05Q1" ldInst="CBSW" lnClass="XSWI" lnInst="1"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <Terminal bayName="Q05" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="3" sxy:y="2" type="DIS">
          <LNode iedName="AA1D1Q05Q1" ldInst="CBSW" lnClass="XSWI" lnInst="2"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB2/L1"/>
          <Terminal bayName="Q05" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC11" sxy:y="1" type="DIS">
          <LNode iedName="AA1D1Q05Q1" ldInst="CBSW" lnClass="XSWI" lnInst="3"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <Terminal bayName="Q05" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/grounded"/>
        </ConductingEquipment>
        <ConductingEquipment name="QA1" sxy:x="3" sxy:y="3" type="CBR">
          <LNode iedName="AA1D1Q05Q1" ldInst="CBSW" lnClass="XCBR" lnInst="1"/>
          <Terminal bayName="Q05" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/L11"/>
          <Terminal bayName="Q05" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="BC1" sxy:x="1" sxy:y="3" type="CTR">
          <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="MMXU" lnInst="1" prefix="BC1"/>
          <Terminal bayName="Q05" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/L1"/>
          <Terminal bayName="Q05" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/Q05/L11"/>
          <SubEquipment name="L1" phase="A"/>
          <SubEquipment name="L2" phase="B"/>
          <SubEquipment name="L3" phase="C"/>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="BA11" sxy:x="8" type="VTR">
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB1/L1"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="TVTR" lnInst="1" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="TVTR" lnInst="2" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="TVTR" lnInst="3" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="BA21" sxy:x="6" type="VTR">
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="D1" connectivityNode="AA1/D1/BB2/L1"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="TVTR" lnInst="5" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="TVTR" lnInst="6" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1D1Q05Q2" ldInst="MU" lnClass="TVTR" lnInst="7" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/D1/Q05/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/D1/Q05/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/D1/Q05/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/D1/Q05/L12"/>
      </Bay>
    </VoltageLevel>
    <VoltageLevel name="H1" sxy:y="11">
      <Voltage multiplier="k" unit="V">33</Voltage>
      <Bay desc="TF1LV" name="Q01" sxy:x="1">
        <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="MMXU" lnInst="1"/>
        <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="PTOC" lnInst="1"/>
        <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="PTRC" lnInst="1"/>
        <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="RBRF" lnInst="1"/>
        <ConductingEquipment name="BC1" sxy:y="3" type="CTR">
          <Terminal bayName="Q01" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L11"/>
          <Terminal bayName="Q01" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L12"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="TCTR" lnInst="1" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="TCTR" lnInst="2" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="TCTR" lnInst="3" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConductingEquipment name="QA1" sxy:y="5" type="CBR">
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="XCBR" lnInst="1"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CSWI" lnInst="2"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CILO" lnInst="2"/>
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L1"/>
          <Terminal bayName="Q01" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L11"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB1" sxy:y="7" type="DIS">
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="XSWI" lnInst="3"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CSWI" lnInst="3"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CILO" lnInst="3"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/BB1/L1"/>
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="2" sxy:y="7" type="DIS">
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="XSWI" lnInst="4"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CSWI" lnInst="4"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CILO" lnInst="4"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/BB2/L1"/>
          <Terminal bayName="Q01" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L1"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC9" sxy:x="1" type="DIS">
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="Q01" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/grounded"/>
          <Terminal bayName="Q01" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="BA1" sxy:x="1" sxy:y="2" type="VTR">
          <Terminal bayName="Q01" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q01/L12"/>
          <SubEquipment name="L1" phase="A">
            <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="TVTR" lnInst="1" prefix="A"/>
          </SubEquipment>
          <SubEquipment name="L2" phase="B">
            <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="TVTR" lnInst="2" prefix="B"/>
          </SubEquipment>
          <SubEquipment name="L3" phase="C">
            <LNode iedName="AA1H1Q01Q1" ldInst="H1Q01" lnClass="TVTR" lnInst="3" prefix="C"/>
          </SubEquipment>
          <SubEquipment name="L4" phase="N"/>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/H1/Q01/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/H1/Q01/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/H1/Q01/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/H1/Q01/L12"/>
      </Bay>
      <Bay name="BB1" sxy:y="8">
        <ConnectivityNode name="L1" pathName="AA1/H1/BB1/L1"/>
      </Bay>
      <Bay name="BB2" sxy:y="9">
        <ConnectivityNode name="L1" pathName="AA1/H1/BB2/L1"/>
      </Bay>
      <Bay desc="TF2LV" name="Q02" sxy:x="16" sxy:y="1">
        <ConductingEquipment name="QA1" sxy:y="4" type="CBR">
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="XCBR" lnInst="1"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CSWI" lnInst="2"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CILO" lnInst="2"/>
          <Terminal bayName="Q02" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/L11"/>
          <Terminal bayName="Q02" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB2" sxy:x="2" sxy:y="6" type="DIS">
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="XSWI" lnInst="4"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CSWI" lnInst="4"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CILO" lnInst="4"/>
          <Terminal bayName="BB2" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/BB2/L1"/>
          <Terminal bayName="Q02" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/L12"/>
        </ConductingEquipment>
        <ConductingEquipment name="QC9" sxy:x="2" type="DIS">
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="XSWI" lnInst="1"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CSWI" lnInst="1"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CILO" lnInst="1"/>
          <Terminal bayName="Q02" cNodeName="grounded" name="grounded" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/grounded"/>
          <Terminal bayName="Q02" cNodeName="L11" name="L11" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/L11"/>
        </ConductingEquipment>
        <ConductingEquipment name="QB1" sxy:y="6" type="DIS">
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="XSWI" lnInst="3"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CSWI" lnInst="3"/>
          <LNode iedName="AA1H1Q02Q1" ldInst="H1Q02" lnClass="CILO" lnInst="3"/>
          <Terminal bayName="Q02" cNodeName="L12" name="L12" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/Q02/L12"/>
          <Terminal bayName="BB1" cNodeName="L1" name="L1" substationName="AA1" voltageLevelName="H1" connectivityNode="AA1/H1/BB1/L1"/>
        </ConductingEquipment>
        <ConnectivityNode name="grounded" pathName="AA1/H1/Q02/grounded"/>
        <ConnectivityNode name="L1" pathName="AA1/H1/Q02/L1"/>
        <ConnectivityNode name="L11" pathName="AA1/H1/Q02/L11"/>
        <ConnectivityNode name="L12" pathName="AA1/H1/Q02/L12"/>
      </Bay>
    </VoltageLevel>
  </Substation>
  <Communication>
    <SubNetwork name="104Network" type="IEC60870_5_104">
      <ConnectedAP iedName="RTU1" apName="IEC60870_5_104">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.11.201</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="RTU2" apName="IEC60870_5_104">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.11.202</P>
        </Address>
      </ConnectedAP>
    </SubNetwork>
    <SubNetwork name="StationBus" type="8-MMS">
      <ConnectedAP iedName="HMI" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.200</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title" xsi:type="tP_OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="RTU1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.201</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title" xsi:type="tP_OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="RTU2" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.202</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title" xsi:type="tP_OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="PCPQS1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.190</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title" xsi:type="tP_OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
      </ConnectedAP>
      <ConnectedAP iedName="AA1D1Q01Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.150</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="LD0" cbName="gcb_switchgear">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-01</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
        <GSE ldInst="LD0" cbName="gcb_protection">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-01</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="AA1H1Q01Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.160</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="H1Q01" cbName="gcb_switchgear">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-02</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="AA1H1Q02Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.161</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="H1Q02" cbName="gcb_switchgear">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-03</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="AA1D1Q02Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.152</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="CONTROL" cbName="gcb">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-04</P>
            <P type="APPID" xsi:type="tP_APPID">0021</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">003</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">7</P>
          </Address>
          <MinTime unit="s" multiplier="m">50</MinTime>
          <MaxTime unit="s" multiplier="m">1000</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="AA1D1Q02Q2" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.153</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="CONTROL" cbName="QB9">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-05</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
        <GSE ldInst="CONTROL" cbName="QC9">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-06</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="AA1D1Q03Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.154</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="CONTROL" cbName="gcb">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-07</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
        <GSE ldInst="CONTROL" cbName="gcb2">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-07</P>
            <P type="APPID" xsi:type="tP_APPID">0002</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="AA1D1Q03Q2" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.151</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="CONTROL" cbName="QB9">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-08</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
        <GSE ldInst="CONTROL" cbName="QC9">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-09</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>

      <ConnectedAP iedName="AA1D1Q04Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.155</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="LD0" cbName="gcb_switchgear">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-0A</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
        <GSE ldInst="LD0" cbName="gcb_protection">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-0A</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="AA1D1Q05Q1" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.99</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="CBSW" cbName="GCB">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-00</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">000</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">8</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="AA1D1Q05Q2" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.157</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <SMV ldInst="MU" cbName="BB_voltage">
          <Address>
            <P type="MAC-Address">01-0C-CD-04-00-22</P>
            <P type="APPID">4000</P>
            <P type="VLAN-ID">001</P>
            <P type="VLAN-PRIORITY">4</P>
          </Address>
        </SMV>
      </ConnectedAP>
      <ConnectedAP iedName="BB_PROT" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.173</P>
          <P type="MMS-Port">102</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
        <GSE ldInst="PROT" cbName="gcb_D1_trips">
          <Address>
            <P type="MAC-Address" xsi:type="tP_MAC-Address">01-0C-CD-01-00-0B</P>
            <P type="APPID" xsi:type="tP_APPID">0001</P>
            <P type="VLAN-ID" xsi:type="tP_VLAN-ID">002</P>
            <P type="VLAN-PRIORITY" xsi:type="tP_VLAN-PRIORITY">4</P>
          </Address>
          <MinTime unit="s" multiplier="m">128</MinTime>
          <MaxTime unit="s" multiplier="m">4096</MaxTime>
        </GSE>
      </ConnectedAP>
      <ConnectedAP iedName="IO_BOX" apName="StationBus">
        <Address>
          <P type="IP" xsi:type="tP_IP">192.168.1.199</P>
          <P type="IP-SUBNET" xsi:type="tP_IP-SUBNET">255.255.255.0</P>
          <P type="OSI-TSEL" xsi:type="tP_OSI-TSEL">0001</P>
          <P type="OSI-SSEL" xsi:type="tP_OSI-SSEL">0001</P>
          <P type="OSI-PSEL" xsi:type="tP_OSI-PSEL">00000001</P>
          <P type="OSI-AP-Title">1,1,1,999,1</P>
          <P type="OSI-AE-Qualifier" xsi:type="tP_OSI-AE-Qualifier">12</P>
        </Address>
      </ConnectedAP>
    </SubNetwork>
  </Communication>

  <IED name="BB_PROT" desc="Busbar Protection" type="Siprotec5" manufacturer="Siemens" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="PROT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="report_trips">
              <FCDA ldInst="PROT" prefix="D1Q01QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
              <FCDA ldInst="PROT" prefix="D1Q02QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
              <FCDA ldInst="PROT" prefix="D1Q03QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
              <FCDA ldInst="PROT" prefix="D1Q04QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <DataSet name="gooseD1trips">
              <FCDA ldInst="PROT" prefix="D1Q01QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="general"/>
              <FCDA ldInst="PROT" prefix="D1Q01QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="q"/>
              <FCDA ldInst="PROT" prefix="D1Q02QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="general"/>
              <FCDA ldInst="PROT" prefix="D1Q02QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="q"/>
              <FCDA ldInst="PROT" prefix="D1Q03QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="general"/>
              <FCDA ldInst="PROT" prefix="D1Q03QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="q"/>
              <FCDA ldInst="PROT" prefix="D1Q04QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="general"/>
              <FCDA ldInst="PROT" prefix="D1Q04QA1" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST" daName="q"/>
            </DataSet>
            <DataSet name="reception_status">
              <FCDA ldInst="PROT" prefix="" lnClass="LLN0" fc="ST" doName="Beh"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LLN0" fc="ST" doName="Mod"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LPHD" lnInst="1" fc="ST" doName="Sim"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmAcc"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrc"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrcTyp"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSyn"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmChSt"/>
              <FCDA ldInst="PROT" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSynLkd"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="2" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="PROT" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
            </DataSet>
            <ReportControl name="reception_status" buffered="true" bufTime="100" datSet="reception_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="all_trip_signals" buffered="true" bufTime="100" datSet="report_trips" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="5">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb_D1_trips" type="GOOSE" datSet="gooseD1trips" appID="GoID" confRev="3000">
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="BB_PROT.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.LTMS" lnClass="LTMS" inst="1" desc="Time master supervision"/>
          <LN lnType="TEMPLATE.PTRC" prefix="D1Q01QA1" lnClass="PTRC" inst="1" desc="Trip conditioning - Q01/QA1"/>
          <LN lnType="TEMPLATE.PTRC" prefix="D1Q02QA1" lnClass="PTRC" inst="1" desc="Trip conditioning - Q02/QA1"/>
          <LN lnType="TEMPLATE.PTRC" prefix="D1Q03QA1" lnClass="PTRC" inst="1" desc="Trip conditioning - Q03/QA1"/>
          <LN lnType="TEMPLATE.PTRC" prefix="D1Q04QA1" lnClass="PTRC" inst="1" desc="Trip conditioning - Q04/QA1"/>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="1" desc="AA1D1Q02Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="2" desc="AA1D1Q02Q2 GOOSE subscription 2">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QC9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q1" lnClass="LGOS" inst="1" desc="AA1D1Q02Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q01Q1" lnClass="LGOS" inst="1" desc="AA1D1Q01Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q01Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q01Q1" lnClass="LGOS" inst="2" desc="AA1D1Q01Q1 GOOSE subscription 2">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q01Q1LD0/LLN0.gcb_protection</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q1" lnClass="LGOS" inst="1" desc="AA1D1Q03Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q2" lnClass="LGOS" inst="1" desc="AA1D1Q03Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q2" lnClass="LGOS" inst="2" desc="AA1D1Q03Q2 GOOSE subscription 2">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q2CONTROL/LLN0.QC9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q04Q1" lnClass="LGOS" inst="1" desc="AA1D1Q04Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q04Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q04Q1" lnClass="LGOS" inst="2" desc="AA1D1Q04Q1 GOOSE subscription 2">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q04Q1LD0/LLN0.gcb_protection</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q05Q1" lnClass="LGOS" inst="1" desc="AA1D1Q05Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q05Q1CBSW/LLN0.GCB</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q01Q1" desc="Transformer infeed bay Q01" type="SPRECON-E" manufacturer="Sprecher" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="LD0">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="local_control_status">
              <FCDA ldInst="QA1" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QA1" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
            </DataSet>
            <DataSet name="report_switchgear_status">
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="QA1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QA1" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
            </DataSet>
            <DataSet name="goose_switchgear_status">
              <FCDA ldInst="QA1" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QA1" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QB1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QB2" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB2" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QC1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QC1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
            </DataSet>
            <DataSet name="report_measurements">
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PPV" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
            </DataSet>
            <DataSet name="report_trafo_status">
              <FCDA ldInst="T3S1S1" lnClass="ATCC" lnInst="1" doName="CtlV" fc="MX"/>
              <FCDA ldInst="T3S1S1" lnClass="ATCC" lnInst="1" doName="ParOp" fc="ST"/>
              <FCDA ldInst="T3T1P1" lnClass="YLTC" lnInst="1" doName="EndPosR" fc="ST"/>
              <FCDA ldInst="T3T1P1" lnClass="YLTC" lnInst="1" doName="EndPosL" fc="ST"/>
              <FCDA ldInst="T3T1P1" lnClass="YLTC" lnInst="1" doName="TapChg" fc="ST"/>
              <FCDA ldInst="T3T1P1" lnClass="YPTR" lnInst="1" doName="OpTmh" fc="ST"/>
              <FCDA ldInst="T3T1P1" lnClass="SPTR" lnInst="1" doName="HPTmpClc" fc="MX"/>
              <FCDA ldInst="T3T1P1" lnClass="SPTR" lnInst="1" doName="CGAlm" fc="ST"/>
            </DataSet>
            <DataSet name="protection_status">
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <DataSet name="reception_status">
              <FCDA ldInst="LD0" prefix="" lnClass="LLN0" fc="ST" doName="Beh"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LLN0" fc="ST" doName="Mod"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LPHD" lnInst="1" fc="ST" doName="Sim"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmAcc"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrc"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrcTyp"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSyn"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmChSt"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSynLkd"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
            </DataSet>
            <ReportControl name="reception_status" buffered="true" bufTime="100" datSet="reception_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="switchgear_status" buffered="true" bufTime="100" datSet="report_switchgear_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="measurements" buffered="true" bufTime="100" datSet="report_measurements" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="trafostatus" buffered="true" bufTime="100" datSet="report_trafo_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="2">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb_switchgear" type="GOOSE" datSet="goose_switchgear_status" appID="GoID" confRev="3000">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
            </GSEControl>
            <GSEControl name="gcb_protection" type="GOOSE" datSet="protection_status" appID="GoID" confRev="5000">
              <IEDName>BB_PROT</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.LTMS" lnClass="LTMS" inst="1" desc="Time master supervision"/>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="1" desc="AA1D1Q02Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q1" lnClass="LGOS" inst="1" desc="AA1D1Q02Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q1" lnClass="LGOS" inst="1" desc="AA1D1Q03Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q2" lnClass="LGOS" inst="1" desc="AA1D1Q03Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q04Q1" lnClass="LGOS" inst="1" desc="AA1D1Q04Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q04Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="BB_PROT" lnClass="LGOS" inst="1" desc="BB_PROT GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>BB_PROTPROT/LLN0.gcb_D1_trips</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q05Q1" lnClass="LGOS" inst="1" desc="AA1D1Q05Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q05Q1CBSW/LLN0.GCB</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="PROTECTION">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.PDIS" lnClass="PDIS" inst="1" desc="Distance"/>
          <LN lnType="TEMPLATE.PTOC" lnClass="PTOC" inst="1" desc="Time overcurrent"/>
          <LN lnType="TEMPLATE.PTRC" lnClass="PTRC" inst="1" desc="Protection trip conditioning"/>
          <LN lnType="TEMPLATE.RBRF" lnClass="RBRF" inst="1" desc="Breaker failure">
            </LN>
        </LDevice>
        <LDevice inst="MEASUREMENT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="1" prefix="A" desc="Current transformer"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="2" prefix="B" desc="Current transformer"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="3" prefix="C" desc="Current transformer"/>
        </LDevice>
        <LDevice inst="QA1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker"/>
        </LDevice>
        <LDevice inst="QB1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector"/>
        </LDevice>
        <LDevice inst="QB2">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector"/>
        </LDevice>
        <LDevice inst="QC1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI_HEALTH" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI_EARTH_SWITCH_HEALTH" lnClass="XSWI" inst="1" desc="Earth switch"/>
        </LDevice>
        <LDevice inst="T3S1S1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.ATCC" lnClass="ATCC" inst="1" desc="Automatic tap changer controller"/>
        </LDevice>
        <LDevice inst="T3T1P1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q01Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.YLTC" lnClass="YLTC" inst="1" desc="Tap changer"/>
          <LN lnType="TEMPLATE.YPTR" lnClass="YPTR" inst="1" desc="Power transformer"/>
          <LN lnType="TEMPLATE.SPTR" lnClass="SPTR" inst="1" desc="Power transformer supervision"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1H1Q01Q1" desc="Transformer 33kV bay Q01" type="PROTEC 400" manufacturer="ACME" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <SettingGroups>
        <SGEdit/>
        <ConfSG/>
      </SettingGroups>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="H1Q01">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="goose_switchgear_status">
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="4" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="4" doName="Pos" fc="ST" daName="q"/>

              <!-- added until we can enable reports -->
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q01" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST" daName="q"/>
            </DataSet>
            <DataSet name="report_switchgear_status">
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="XSWI" lnInst="4" doName="Pos" fc="ST"/>
            </DataSet>
            <DataSet name="report_measurements">
              <FCDA ldInst="H1Q01" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX"/>
              <FCDA ldInst="H1Q01" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
              <FCDA ldInst="H1Q01" lnClass="MMXU" lnInst="1" doName="PPV" fc="MX"/>
              <FCDA ldInst="H1Q01" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
              <FCDA ldInst="H1Q01" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
              <FCDA ldInst="H1Q01" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
            </DataSet>
            <DataSet name="report_protection">
              <FCDA ldInst="H1Q01" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="PTRC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="H1Q01" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <ReportControl name="switchgear_status" buffered="true" bufTime="100" datSet="report_switchgear_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="measurements" buffered="true" bufTime="100" datSet="report_measurements" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="protection" buffered="true" bufTime="100" datSet="report_protection" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb_switchgear" type="GOOSE" datSet="goose_switchgear_status" appID="GoID" confRev="3000"/>
            <SettingControl numOfSGs="6" actSG="1"/>
          </LN0>
          <LN lnType="TEMPLATE.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="2" desc="Interlocking">
            </LN>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="3" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="4" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="2" desc="Switch controller">
            </LN>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="3" desc="Switch controller">
            </LN>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="4" desc="Switch controller"/>
          <LN lnType="TEMPLATE.MMXU" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.PTOC" lnClass="PTOC" inst="1" desc="Time overcurrent">
            </LN>
          <LN lnType="TEMPLATE.PTRC" lnClass="PTRC" inst="1" desc="Protection trip conditioning"/>
          <LN lnType="TEMPLATE.RBRF" lnClass="RBRF" inst="1" desc="Breaker failure">
            </LN>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="1" prefix="A" desc="Current transformer A"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="2" prefix="B" desc="Current transformer B"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="3" prefix="C" desc="Current transformer C"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="1" prefix="A" desc="Voltage transformer A"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="2" prefix="B" desc="Voltage transformer B"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="3" prefix="C" desc="Voltage transformer C"/>
          <LN lnType="TEMPLATE.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker">
            </LN>
          <LN lnType="TEMPLATE.XSWI_EARTH_SWITCH" lnClass="XSWI" inst="1" desc="Earth switch"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="3" desc="Disconnector"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="4" desc="Disconnector"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q02Q1" desc="Bay control unit Q02 - Starnberg" type="AC500" manufacturer="ABB" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="CONTROL">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="report_switchgear_status">
              <FCDA ldInst="CONTROL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST"/>
            </DataSet>
            <DataSet name="goods">
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST"/>

              <FCDA ldInst="CONTROL" lnClass="RREC" lnInst="1" doName="OpCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="RREC" lnInst="1" doName="AutoRecSt" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="RSYN" lnInst="1" doName="Rel" fc="ST"/>
            </DataSet>
            <DataSet name="rptMeas">
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PPV" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
            </DataSet>
            <DataSet name="reception_status">
              <FCDA ldInst="CONTROL" prefix="" lnClass="LLN0" fc="ST" doName="Beh"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LLN0" fc="ST" doName="Mod"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LPHD" lnInst="1" fc="ST" doName="Sim"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmAcc"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrc"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrcTyp"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSyn"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmChSt"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSynLkd"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
            </DataSet>
            <ReportControl name="brcbReceptionStatus" buffered="true" bufTime="100" datSet="reception_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="brcbMeas" buffered="true" bufTime="0" datSet="rptMeas" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="urcbMeas" buffered="false" bufTime="100" datSet="rptMeas" intgPd="42" confRev="17">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true"/>
              <RptEnabled max="2">
              </RptEnabled>
            </ReportControl>
            <ReportControl name="brcb" buffered="true" bufTime="0" datSet="report_switchgear_status" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="urcb" buffered="false" bufTime="100" datSet="report_switchgear_status" intgPd="42" confRev="17">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true"/>
              <RptEnabled max="2">
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb" type="GOOSE" datSet="goods" appID="GoID23" confRev="1000">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="AA1D1Q02Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>

          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>

          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="2" desc="Disconnector"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="2" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="2" desc="Interlocking"/>

          <LN lnType="TEMPLATE.XSWI_EARTH_SWITCH" lnClass="XSWI" inst="3" desc="Earth switch"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="3" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="3" desc="Interlocking"/>

          <LN lnType="TEMPLATE.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker"/>
          <LN lnType="TEMPLATE.RREC" lnClass="RREC" inst="1" desc="Autoreclosing"/>
          <LN lnType="TEMPLATE.RSYN" lnClass="RSYN" inst="1" desc="Synchronism-check or synchronising"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="4" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="4" desc="Interlocking"/>

          <LN lnType="TEMPLATE.LTMS" lnClass="LTMS" inst="1" desc="Time master supervision"/>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="1" desc="AA1D1Q02Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="2" desc="AA1D1Q02Q2 GOOSE subscription 2">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QC9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q01Q1" lnClass="LGOS" inst="1" desc="AA1D1Q01Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q01Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q1" lnClass="LGOS" inst="1" desc="AA1D1Q03Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q04Q1" lnClass="LGOS" inst="1" desc="AA1D1Q04Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q04Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="BB_PROT" lnClass="LGOS" inst="1" desc="BB_PROT GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>BB_PROTPROT/LLN0.gcb_D1_trips</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q05Q1" lnClass="LGOS" inst="1" desc="AA1D1Q05Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q05Q1CBSW/LLN0.GCB</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="MEASUREMENT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@CONTROL</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q02Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.TVTR2" lnClass="TVTR" inst="1" prefix="A" desc="Voltage transformer A"/>
          <LN lnType="TEMPLATE.TVTR2" lnClass="TVTR" inst="2" prefix="B" desc="Voltage transformer B"/>
          <LN lnType="TEMPLATE.TVTR2" lnClass="TVTR" inst="3" prefix="C" desc="Voltage transformer C"/>
        </LDevice>
        <LDevice inst="PROTECTION">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="trip">
              <FCDA ldInst="PROTECTION" lnClass="PDIF" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PDIF" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <ReportControl name="trip" buffered="true" bufTime="0" datSet="trip" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@CONTROL</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q02Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.PDIF" lnClass="PDIF" inst="1" desc="Differential"/>
          <LN lnType="TEMPLATE.PTOC" lnClass="PTOC" inst="1" desc="Time overcurrent"/>
          <LN lnType="TEMPLATE.PTRC" lnClass="PTRC" inst="1" desc="Protection trip conditioning"/>
          <LN lnType="TEMPLATE.RBRF" lnClass="RBRF" inst="1" desc="Breaker failure">
            </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q02Q2" desc="Disconnector control unit Q02 - Starnberg" type="Relion 670" manufacturer="Hitachi" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="CONTROL">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="dsQB9">
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="5" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="5" doName="EnaOpn" fc="ST"/>
            </DataSet>
            <DataSet name="dsQC9">
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="6" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="6" doName="EnaOpn" fc="ST"/>
            </DataSet>
            <DataSet name="all">
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
            </DataSet>
            <ReportControl name="brcb" buffered="true" bufTime="0" datSet="all" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="QB9" type="GOOSE" datSet="dsQB9" appID="D1Q02QB9" confRev="5">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
            </GSEControl>
            <GSEControl name="QC9" type="GOOSE" datSet="dsQC9" appID="D1Q02QC9" confRev="5">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="AA1D1Q02Q2.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>

          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="5" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="5" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="5" desc="Disconnector"/>

          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="6" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="6" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="6" desc="Disconnector"/>
        </LDevice>
        <LDevice inst="MEASUREMENT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@CONTROL</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q02Q2.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU_V" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="1" prefix="A" desc="Voltage transformer A"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="2" prefix="B" desc="Voltage transformer B"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="3" prefix="C" desc="Voltage transformer C"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="4" prefix="N" desc="Voltage transformer N"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q03Q1" desc="Bay control unit Q03 - Passau" type="MICOM" manufacturer="Schneider" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="CONTROL">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="report_switchgear_status">
              <FCDA ldInst="CONTROL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST"/>
            </DataSet>
            <DataSet name="goods">
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="4" doName="EnaOpn" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="3" doName="EnaOpn" fc="ST"/>

              <FCDA ldInst="CONTROL" lnClass="RREC" lnInst="1" doName="OpCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="RREC" lnInst="1" doName="AutoRecSt" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="RSYN" lnInst="1" doName="Rel" fc="ST"/>
            </DataSet>
            <DataSet name="rptMeas">
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PPV" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
            </DataSet>
            <DataSet name="reception_status">
              <FCDA ldInst="CONTROL" prefix="" lnClass="LLN0" fc="ST" doName="Beh"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LLN0" fc="ST" doName="Mod"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LPHD" lnInst="1" fc="ST" doName="Sim"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmAcc"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrc"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrcTyp"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSyn"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmChSt"/>
              <FCDA ldInst="CONTROL" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSynLkd"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="2" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q04Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="CONTROL" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
            </DataSet>
            <ReportControl name="brcbReceptionStatus" buffered="true" bufTime="100" datSet="reception_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="brcbMeas" buffered="true" bufTime="0" datSet="rptMeas" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="urcbMeas" buffered="false" bufTime="100" datSet="rptMeas" intgPd="42" confRev="17">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true"/>
              <RptEnabled max="2">
              </RptEnabled>
            </ReportControl>
            <ReportControl name="brcb" buffered="true" bufTime="0" datSet="report_switchgear_status" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="urcb" buffered="false" bufTime="100" datSet="report_switchgear_status" intgPd="42" confRev="17">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="false" configRef="true"/>
              <RptEnabled max="2">
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb" type="GOOSE" datSet="goods" appID="GoID23" confRev="1000">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
            </GSEControl>
            <GSEControl name="gcb2" type="GOOSE" appID="GoID23" confRev="5000"/>
          </LN0>
          <LN lnType="AA1D1Q03Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>

          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>

          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="2" desc="Disconnector"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="2" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="2" desc="Interlocking"/>

          <LN lnType="TEMPLATE.XSWI_EARTH_SWITCH" lnClass="XSWI" inst="3" desc="Earth switch"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="3" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="3" desc="Interlocking"/>

          <LN lnType="TEMPLATE.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker"/>
          <LN lnType="TEMPLATE.RREC" lnClass="RREC" inst="1" desc="Autoreclosing"/>
          <LN lnType="TEMPLATE.RSYN" lnClass="RSYN" inst="1" desc="Synchronism-check or synchronising"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="4" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="4" desc="Interlocking"/>

          <LN lnType="TEMPLATE.LTMS" lnClass="LTMS" inst="1" desc="Time master supervision"/>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q01Q1" lnClass="LGOS" inst="1" desc="AA1D1Q01Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q01Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q1" lnClass="LGOS" inst="1" desc="AA1D1Q02Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="1" desc="AA1D1Q02Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q2" lnClass="LGOS" inst="1" desc="AA1D1Q03Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q2" lnClass="LGOS" inst="2" desc="AA1D1Q03Q2 GOOSE subscription 2">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q2CONTROL/LLN0.QC9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q04Q1" lnClass="LGOS" inst="1" desc="AA1D1Q04Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q04Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="BB_PROT" lnClass="LGOS" inst="1" desc="BB_PROT GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>BB_PROTPROT/LLN0.gcb_D1_trips</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q05Q1" lnClass="LGOS" inst="1" desc="AA1D1Q05Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q05Q1CBSW/LLN0.GCB</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="MEASUREMENT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@CONTROL</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q03Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.TVTR2" lnClass="TVTR" inst="1" prefix="A" desc="Voltage transformer A"/>
          <LN lnType="TEMPLATE.TVTR2" lnClass="TVTR" inst="2" prefix="B" desc="Voltage transformer B"/>
          <LN lnType="TEMPLATE.TVTR2" lnClass="TVTR" inst="3" prefix="C" desc="Voltage transformer C"/>
        </LDevice>
        <LDevice inst="PROTECTION">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="trip">
              <FCDA ldInst="PROTECTION" lnClass="PDIF" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PDIF" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <ReportControl name="trip" buffered="true" bufTime="0" datSet="trip" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@CONTROL</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q03Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.PDIF" lnClass="PDIF" inst="1" desc="Differential"/>
          <LN lnType="TEMPLATE.PTOC" lnClass="PTOC" inst="1" desc="Time overcurrent"/>
          <LN lnType="TEMPLATE.PTRC" lnClass="PTRC" inst="1" desc="Protection trip conditioning"/>
          <LN lnType="TEMPLATE.RBRF" lnClass="RBRF" inst="1" desc="Breaker failure">
            </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q03Q2" desc="Disconnector control unit Q03 - Passau" type="Modicon" manufacturer="Schneider" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="CONTROL">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="dsQB9">
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="5" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="5" doName="EnaOpn" fc="ST"/>
            </DataSet>
            <DataSet name="dsQC9">
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="6" doName="EnaCls" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CILO" lnInst="6" doName="EnaOpn" fc="ST"/>
            </DataSet>
            <DataSet name="all">
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="5" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="CSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="CONTROL" lnClass="XSWI" lnInst="6" doName="Pos" fc="ST"/>
              <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
            </DataSet>
            <ReportControl name="brcb" buffered="true" bufTime="0" datSet="all" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="QB9" type="GOOSE" datSet="dsQB9" appID="D1Q03QB9" confRev="5">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
            </GSEControl>
            <GSEControl name="QC9" type="GOOSE" datSet="dsQC9" appID="D1Q03QC9" confRev="5">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="AA1D1Q03Q2.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>

          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="5" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="5" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="5" desc="Disconnector"/>

          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="6" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="6" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="6" desc="Disconnector"/>
        </LDevice>
        <LDevice inst="MEASUREMENT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@CONTROL</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q03Q2.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU_V" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="1" prefix="A" desc="Voltage transformer A"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="2" prefix="B" desc="Voltage transformer B"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="3" prefix="C" desc="Voltage transformer C"/>
          <LN lnType="TEMPLATE.TVTR" lnClass="TVTR" inst="4" prefix="N" desc="Voltage transformer N"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q04Q1" desc="Transformer bay Q04" type="Siprotec" manufacturer="Siemens" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="LD0">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <!-- Dynamic DataSets
           <DataSet name="report_switchgear_status">
           <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
           <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
           <FCDA ldInst="QA1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QA1" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QB1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
           <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
           <FCDA ldInst="QB1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
           <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
           <FCDA ldInst="QB2" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QB2" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
           <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
           <FCDA ldInst="QC1" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
           <FCDA ldInst="QC1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
           </DataSet>
           <DataSet name="report_measurements">
           <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="TotW" fc="MX"/>
           <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
           <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PPV" fc="MX"/>
           <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
           <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
           <FCDA ldInst="MEASUREMENT" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
           </DataSet>
           <DataSet name="report_trafo_status">
           <FCDA ldInst="T3S1S1" lnClass="ATCC" lnInst="1" doName="CtlV" fc="MX"/>
           <FCDA ldInst="T3S1S1" lnClass="ATCC" lnInst="1" doName="ParOp" fc="ST"/>
           <FCDA ldInst="T3T1P1" lnClass="YLTC" lnInst="1" doName="EndPosR" fc="ST"/>
           <FCDA ldInst="T3T1P1" lnClass="YLTC" lnInst="1" doName="EndPosL" fc="ST"/>
           <FCDA ldInst="T3T1P1" lnClass="YLTC" lnInst="1" doName="TapChg" fc="ST"/>
           <FCDA ldInst="T3T1P1" lnClass="YPTR" lnInst="1" doName="OpTmh" fc="ST"/>
           <FCDA ldInst="T3T1P1" lnClass="SPTR" lnInst="1" doName="HPTmpClc" fc="MX"/>
           <FCDA ldInst="T3T1P1" lnClass="SPTR" lnInst="1" doName="CGAlm" fc="ST"/>
           </DataSet>
           -->
            <DataSet name="local_control_status">
              <FCDA ldInst="QA1" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CSWI" lnInst="1" doName="LocSta" fc="ST"/>
              <FCDA ldInst="QA1" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
              <FCDA ldInst="QB1" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
              <FCDA ldInst="QB2" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
              <FCDA ldInst="QC1" lnClass="CSWI" lnInst="1" doName="LocKey" fc="ST"/>
            </DataSet>
            <DataSet name="protection_status">
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="PROTECTION" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <DataSet name="goose_switchgear_status">
              <FCDA ldInst="QA1" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QA1" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QA1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QB1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB2" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QB2" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QB2" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="stVal"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST" daName="q"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="stVal"/>
              <FCDA ldInst="QC1" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST" daName="q"/>
              <FCDA ldInst="QC1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="QC1" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
            </DataSet>
            <DataSet name="reception_status">
              <FCDA ldInst="LD0" prefix="" lnClass="LLN0" fc="ST" doName="Beh"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LLN0" fc="ST" doName="Mod"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LPHD" lnInst="1" fc="ST" doName="Sim"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmAcc"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrc"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSrcTyp"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSyn"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmChSt"/>
              <FCDA ldInst="LD0" prefix="" lnClass="LTMS" lnInst="1" fc="ST" doName="TmSynLkd"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q01Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q02Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q03Q2" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="AA1D1Q05Q1" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="St"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="SimSt"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="NdsCom"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="ConfRevNum"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="RxConfRevNum"/>
              <FCDA ldInst="LD0" prefix="BB_PROT" lnClass="LGOS" lnInst="1" fc="ST" doName="LastStNum"/>
            </DataSet>
            <ReportControl name="reception_status" buffered="true" bufTime="100" datSet="reception_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="switchgear_status" buffered="true" bufTime="100" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="measurements" buffered="true" bufTime="100" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="trafostatus" buffered="true" bufTime="100" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="2">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb_switchgear" type="GOOSE" datSet="goose_switchgear_status" appID="GoID" confRev="3000">
              <IEDName>BB_PROT</IEDName>
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
            </GSEControl>
            <GSEControl name="gcb_protection" type="GOOSE" datSet="protection_status" appID="GoID" confRev="5000">
              <IEDName>BB_PROT</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.LTMS" lnClass="LTMS" inst="1" desc="Time master supervision"/>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q01Q1" lnClass="LGOS" inst="1" desc="AA1D1Q01Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q01Q1LD0/LLN0.gcb_switchgear</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q2" lnClass="LGOS" inst="1" desc="AA1D1Q02Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q02Q1" lnClass="LGOS" inst="1" desc="AA1D1Q02Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q02Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q1" lnClass="LGOS" inst="1" desc="AA1D1Q03Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q1CONTROL/LLN0.gcb</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q03Q2" lnClass="LGOS" inst="1" desc="AA1D1Q03Q2 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q03Q2CONTROL/LLN0.QB9</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="BB_PROT" lnClass="LGOS" inst="1" desc="BB_PROT GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>BB_PROTPROT/LLN0.gcb_D1_trips</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.LGOS" prefix="AA1D1Q05Q1" lnClass="LGOS" inst="1" desc="AA1D1Q05Q1 GOOSE subscription 1">
            <DOI name="GoCBRef">
              <DAI name="setSrcRef">
                <Val>AA1D1Q05Q1CBSW/LLN0.GCB</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
        <LDevice inst="PROTECTION">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.PDIS" lnClass="PDIS" inst="1" desc="Distance"/>
          <LN lnType="TEMPLATE.PTOC" lnClass="PTOC" inst="1" desc="Time overcurrent"/>
          <LN lnType="TEMPLATE.PTRC" lnClass="PTRC" inst="1" desc="Protection trip conditioning"/>
          <LN lnType="TEMPLATE.RBRF" lnClass="RBRF" inst="1" desc="Breaker failure">
            </LN>
        </LDevice>
        <LDevice inst="MEASUREMENT">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU" lnClass="MMXU" inst="1" desc="Measurement"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="1" prefix="A" desc="Current transformer"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="2" prefix="B" desc="Current transformer"/>
          <LN lnType="TEMPLATE.TCTR" lnClass="TCTR" inst="3" prefix="C" desc="Current transformer"/>
        </LDevice>
        <LDevice inst="QA1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker"/>
        </LDevice>
        <LDevice inst="QB1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector"/>
        </LDevice>
        <LDevice inst="QB2">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector"/>
        </LDevice>
        <LDevice inst="QC1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI_HEALTH" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.XSWI_EARTH_SWITCH_HEALTH" lnClass="XSWI" inst="1" desc="Earth switch"/>
        </LDevice>
        <LDevice inst="T3S1S1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.ATCC" lnClass="ATCC" inst="1" desc="Automatic tap changer controller"/>
        </LDevice>
        <LDevice inst="T3T1P1">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
              <DOI name="GrRef">
              <DAI name="setSrcRef">
                <Val>@LD0</Val>
              </DAI>
            </DOI>
          </LN0>
          <LN lnType="AA1D1Q04Q1.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.YLTC" lnClass="YLTC" inst="1" desc="Tap changer"/>
          <LN lnType="TEMPLATE.YPTR" lnClass="YPTR" inst="1" desc="Power transformer"/>
          <LN lnType="TEMPLATE.SPTR" lnClass="SPTR" inst="1" desc="Power transformer supervision"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q05Q1" desc="320kV BC Protection &amp; Control IED" type="ISIO 200 Circuit Breaker and Disconnector Interface" manufacturer="OMICRON" configVersion="1" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="3" modify="false"/>
      <DynDataSet max="42"/>
      <ReadWrite/>
      <ConfReportControl max="10" bufConf="false"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLNs fixPrefix="true" fixLnInst="true"/>
      <GOOSE max="1"/>
      <GSSE max="0"/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="CBSW">
          <LN0 lnType="AA1D1Q05Q1CBSW.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="GooseDataSet1">
              <FCDA ldInst="CBSW" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" daName="q" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="1" doName="Pos" daName="stVal" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="1" doName="Pos" daName="q" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="2" doName="Pos" daName="stVal" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="2" doName="Pos" daName="q" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="3" doName="Pos" daName="stVal" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="3" doName="Pos" daName="q" fc="ST"/>
            </DataSet>
            <DataSet name="ReportDataSet1">
              <FCDA ldInst="CBSW" prefix="" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
            </DataSet>
            <DataSet name="ReportDataSet2">
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO6" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO7" fc="ST"/>
              <FCDA ldInst="CBSW" prefix="" lnClass="GGIO" lnInst="1" doName="SPCSO8" fc="ST"/>
            </DataSet>
            <ReportControl name="urcb" buffered="false" bufTime="100" datSet="ReportDataSet1" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="5">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="brcb" buffered="true" bufTime="100" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="5"/>
            </ReportControl>
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="d">
                <Val>ISIO 200 circuit breaker and disconnector interface</Val>
              </DAI>
              <DAI name="configRev">
                <Val>1</Val>
              </DAI>
              <DAI name="ldNs">
                <Val>IEC 61850-7-4:2007A</Val>
              </DAI>
            </DOI>
            <GSEControl name="GCB" type="GOOSE" datSet="GooseDataSet1" appID="GoID" fixedOffs="false" confRev="1">
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
              <IEDName>BB_PROT</IEDName>
            </GSEControl>
          </LN0>
          <LN lnType="AA1D1Q05Q1CBSW.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information">
            <DOI name="PhyNam">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="hwRev">
                <Val>OMICRON PRISCILLA Type G Rev: 0002</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="model">
                <Val>ISIO 200</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="AA1D1Q05Q1CBSW.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker">
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="d">
                <Val>320kV Bus Coupler CB QA1</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input1, inverted=false, bitIndex=0}, {product=ISIO, signal=input2, inverted=false, bitIndex=1}"/>
              <DAI name="d">
                <Val>320kV Bus Coupler CB QA1 position, mapped to ISIO input 1 and 2</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="AA1D1Q05Q1CBSW.XSWI1" lnClass="XSWI" inst="1" desc="Disconnector">
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="d">
                <Val>320kV Bus Coupler Disconnector QB1</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input3, inverted=false, bitIndex=0}, {product=ISIO, signal=input4, inverted=false, bitIndex=1}"/>
              <DAI name="d">
                <Val>320kV Bus Coupler DIS QB1 position, mapped to ISIO inputs 3 and 4</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="AA1D1Q05Q1CBSW.XSWI1" lnClass="XSWI" inst="2" desc="Disconnector">
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="d">
                <Val>320kV Bus Coupler Disconnector QB2</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input5, inverted=false, bitIndex=0}, {product=ISIO, signal=input6, inverted=false, bitIndex=1}"/>
              <DAI name="d">
                <Val>320kV Bus Coupler DIS QB2 Position, mapped to ISIO inputs 5 and 6</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="AA1D1Q05Q1CBSW.XSWI1" lnClass="XSWI" inst="3" desc="Disconnector">
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="d">
                <Val>320kV Bus Coupler Earth Switch QC11</Val>
              </DAI>
            </DOI>
            <DOI name="Pos">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input7, inverted=false, bitIndex=0}, {product=ISIO, signal=input8, inverted=false, bitIndex=1}"/>
              <DAI name="ctlModel">
                <Val>status-only</Val>
              </DAI>
              <DAI name="d">
                <Val>320kV Bus Coupler ES QC11 position, mapped to ISIO inputs 7 and 8</Val>
              </DAI>
            </DOI>
          </LN>
          <LN lnType="AA1D1Q05Q1CBSW.GGIO1" lnClass="GGIO" inst="1" desc="Generic process I/O">
            <DOI name="NamPlt">
              <DAI name="vendor">
                <Val>OMICRON electronics</Val>
              </DAI>
              <DAI name="swRev">
                <Val>2.11.0014</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary I/Os</Val>
              </DAI>
            </DOI>
            <DOI name="Ind1">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input1, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 1</Val>
              </DAI>
            </DOI>
            <DOI name="Ind2">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input2, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 2</Val>
              </DAI>
            </DOI>
            <DOI name="Ind3">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input3, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 3</Val>
              </DAI>
            </DOI>
            <DOI name="Ind4">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input4, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 4</Val>
              </DAI>
            </DOI>
            <DOI name="Ind5">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input5, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 5</Val>
              </DAI>
            </DOI>
            <DOI name="Ind6">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input6, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 6</Val>
              </DAI>
            </DOI>
            <DOI name="Ind7">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input7, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 7</Val>
              </DAI>
            </DOI>
            <DOI name="Ind8">
              <DAI name="stVal" sAddr="{product=ISIO, signal=input8, inverted=false}"/>
              <DAI name="d">
                <Val>Status of binary input 8</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO1">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output1, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 1</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO2">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output2, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 2</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO3">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output3, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 3</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO4">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output4, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 4</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO5">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output5, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 5</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO6">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output6, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 6</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO7">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output7, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 7</Val>
              </DAI>
            </DOI>
            <DOI name="SPCSO8">
              <DAI name="stVal" sAddr="{product=ISIO, signal=output8, inverted=false}"/>
              <DAI name="ctlModel">
                <Val>sbo-with-enhanced-security</Val>
              </DAI>
              <DAI name="sboTimeout">
                <Val>30000</Val>
              </DAI>
              <DAI name="operTimeout">
                <Val>10000</Val>
              </DAI>
              <DAI name="d">
                <Val>Binary output 8</Val>
              </DAI>
            </DOI>
          </LN>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1D1Q05Q2" desc="320kV measuring bay - Merging Unit" type="PROTEC 400" manufacturer="ACME" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <SMVSettings cbName="Conf" datSet="Conf" optFields="Fix" smpRate="Conf" svID="Conf">
        <SmpRate>80</SmpRate>
        <SmpRate>240</SmpRate>
      </SMVSettings>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="MU">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="bb_voltage_ds">
              <FCDA ldInst="MU" lnClass="TVTR" prefix="A" lnInst="1" fc="MX" doName="VolSv" daName="instMag.f"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="A" lnInst="1" fc="MX" doName="VolSv" daName="q"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="B" lnInst="2" fc="MX" doName="VolSv" daName="instMag.f"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="B" lnInst="2" fc="MX" doName="VolSv" daName="q"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="C" lnInst="3" fc="MX" doName="VolSv" daName="instMag.f"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="C" lnInst="3" fc="MX" doName="VolSv" daName="q"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="A" lnInst="5" fc="MX" doName="VolSv" daName="instMag.f"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="A" lnInst="5" fc="MX" doName="VolSv" daName="q"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="B" lnInst="6" fc="MX" doName="VolSv" daName="instMag.f"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="B" lnInst="6" fc="MX" doName="VolSv" daName="q"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="C" lnInst="7" fc="MX" doName="VolSv" daName="instMag.f"/>
              <FCDA ldInst="MU" lnClass="TVTR" prefix="C" lnInst="7" fc="MX" doName="VolSv" daName="q"/>
            </DataSet>
            <DataSet name="bb_report_voltage_ds">
              <FCDA ldInst="MU" lnClass="MMXU" prefix="BB1" lnInst="1" fc="MX" doName="PhV"/>
              <FCDA ldInst="MU" lnClass="MMXU" prefix="BB2" lnInst="1" fc="MX" doName="PhV"/>
            </DataSet>
            <DataSet name="bc1_current_ds">
              <FCDA ldInst="MU" lnClass="MMXU" prefix="BC1" lnInst="1" fc="MX" doName="A"/>
              <FCDA ldInst="MU" lnClass="MMXU" prefix="BC1" lnInst="1" fc="MX" doName="Hz"/>
            </DataSet>
            <ReportControl name="busbar_voltages" buffered="false" bufTime="0" datSet="bb_report_voltage_ds" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="bc1_current" buffered="false" bufTime="0" datSet="bc1_current_ds" intgPd="10000" confRev="11">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <SampledValueControl name="BB_voltage" datSet="bb_voltage_ds" smvID="D1Q05MU" smpRate="80" nofASDU="1" confRev="1">
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q02Q1</IEDName>
              <IEDName>AA1D1Q01Q1</IEDName>
              <IEDName>AA1D1Q03Q1</IEDName>
              <IEDName>AA1D1Q04Q1</IEDName>
              <SmvOpts refreshTime="false" sampleSynchronized="true" sampleRate="false" security="false"/>
            </SampledValueControl>
          </LN0>
          <LN lnType="TEMPLATE.LPHD1MU" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.MMXU_V" prefix="BB1" lnClass="MMXU" inst="1" desc="BB1 - Measurement"/>
          <LN lnType="TEMPLATE.MMXU_V" prefix="BB2" lnClass="MMXU" inst="1" desc="BB2 - Measurement"/>
          <LN lnType="TEMPLATE.MMXU_A" prefix="BC1" lnClass="MMXU" inst="1" desc="BC1 - Measurement">
            </LN>
          <LN lnType="TEMPLATE.TVTR" prefix="A" lnClass="TVTR" inst="1" desc="BB1 - Voltage A"/>
          <LN lnType="TEMPLATE.TVTR" prefix="B" lnClass="TVTR" inst="2" desc="BB1 - Voltage B"/>
          <LN lnType="TEMPLATE.TVTR" prefix="C" lnClass="TVTR" inst="3" desc="BB1 - Voltage C"/>
          <LN lnType="TEMPLATE.TVTR" prefix="A" lnClass="TVTR" inst="5" desc="BB2 - Voltage A"/>
          <LN lnType="TEMPLATE.TVTR" prefix="B" lnClass="TVTR" inst="6" desc="BB2 - Voltage B"/>
          <LN lnType="TEMPLATE.TVTR" prefix="C" lnClass="TVTR" inst="7" desc="BB2 - Voltage C"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="AA1H1Q02Q1" desc="Transformer 33kV bay Q02" type="MU 300" manufacturer="ACME" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="100" maxAttributes="100" modify="true"/>
      <DynDataSet max="100"/>
      <ReadWrite/>
      <TimerActivatedControl/>
      <ConfReportControl max="100"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLogControl max="100"/>
      <GSEDir/>
      <GOOSE max="100"/>
      <GSSE max="100"/>
      <FileHandling/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="H1Q02">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="goose_switchgear_status">
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST" daName="q"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="4" doName="Pos" fc="ST" daName="stVal"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="4" doName="Pos" fc="ST" daName="q"/>
            </DataSet>
            <DataSet name="report_switchgear_status">
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="2" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="CSWI" lnInst="4" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="3" doName="Pos" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="XSWI" lnInst="4" doName="Pos" fc="ST"/>
            </DataSet>
            <DataSet name="report_protection">
              <FCDA ldInst="H1Q02" lnClass="PTOC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="PTRC" lnInst="1" doName="Str" fc="ST"/>
              <FCDA ldInst="H1Q02" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
            </DataSet>
            <ReportControl name="switchgear_status" buffered="true" bufTime="100" datSet="report_switchgear_status" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <ReportControl name="protection" buffered="true" bufTime="100" datSet="report_protection" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="4">
                <ClientLN iedName="HMI" ldInst="none" lnInst="1" lnClass="IHMI"/>
                <ClientLN iedName="RTU1" ldInst="none" lnInst="1" lnClass="ITCI"/>
                <ClientLN iedName="RTU2" ldInst="none" lnInst="1" lnClass="ITCI"/>
              </RptEnabled>
            </ReportControl>
            <GSEControl name="gcb_switchgear" type="GOOSE" datSet="goose_switchgear_status" appID="GoID" confRev="3000"/>
          </LN0>
          <LN lnType="TEMPLATE.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="1" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="2" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="3" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CILO" lnClass="CILO" inst="4" desc="Interlocking"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="1" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="2" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="3" desc="Switch controller"/>
          <LN lnType="TEMPLATE.CSWI" lnClass="CSWI" inst="4" desc="Switch controller"/>
          <LN lnType="TEMPLATE.PTOC" lnClass="PTOC" inst="1" desc="Time overcurrent">
            <DOI name="StrVal">
              <SDI name="units">
                <DAI name="SIUnit">
                  <Val>A</Val>
                </DAI>
              </SDI>
            </DOI>
          </LN>
          <LN lnType="TEMPLATE.PTRC" lnClass="PTRC" inst="1" desc="Protection trip conditioning"/>
          <LN lnType="TEMPLATE.RBRF" lnClass="RBRF" inst="1" desc="Breaker failure"/>
          <LN lnType="TEMPLATE.XCBR1" lnClass="XCBR" inst="1" desc="Circuit breaker"/>
          <LN lnType="TEMPLATE.XSWI_EARTH_SWITCH" lnClass="XSWI" inst="1" desc="Earth switch"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="3" desc="Disconnector"/>
          <LN lnType="TEMPLATE.XSWI1" lnClass="XSWI" inst="4" desc="Disconnector"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <IED name="HMI" desc="IHMI" type="HMI 300" manufacturer="ACME" configVersion="HMI_300_0815" originalSclVersion="2007" originalSclRevision="B">
    <AccessPoint name="StationBus">
      <LN lnClass="IHMI" inst="1" lnType="TEMPLATE.IHMI">
        <DOI name="NamPlt">
          <DAI name="d">
            <Val>Telecontrol interface</Val>
          </DAI>
        </DOI>
      </LN>
    </AccessPoint>
  </IED>
  <IED name="RTU1" desc="RTU for transformer and feeder bays" type="RTU500" manufacturer="Hitachi" configVersion="RTU_600_0815" originalSclVersion="2007" originalSclRevision="B">
    <AccessPoint name="StationBus">
      <LN lnClass="ITCI" inst="1" lnType="TEMPLATE.ITCI">
        <DOI name="NamPlt">
          <DAI name="d">
            <Val>Telecontrol interface</Val>
          </DAI>
        </DOI>
      </LN>
    </AccessPoint>
    <AccessPoint name="IEC60870_5_104"/>
  </IED>
  <IED name="RTU2" desc="RTU for transformer and feeder bays" type="A8000" manufacturer="Siemens" configVersion="RTU_600_0815" originalSclVersion="2007" originalSclRevision="B">
    <AccessPoint name="StationBus">
      <LN lnClass="ITCI" inst="1" lnType="TEMPLATE.ITCI">
        <DOI name="NamPlt">
          <DAI name="d">
            <Val>Telecontrol interface</Val>
          </DAI>
        </DOI>
      </LN>
    </AccessPoint>
    <AccessPoint name="IEC60870_5_104"/>
  </IED>
  <IED name="PCPQS1" desc="Disturbance data collector" type="COLLEC 400" manufacturer="ACME" configVersion="DRC_400_0815" originalSclVersion="2007" originalSclRevision="B">
    <AccessPoint name="StationBus">
      <LN lnClass="ITCI" inst="1" lnType="TEMPLATE.ITCI">
        <DOI name="NamPlt">
          <DAI name="d">
            <Val>Telecontrol interface</Val>
          </DAI>
        </DOI>
      </LN>
    </AccessPoint>
  </IED>

  <IED name="IO_BOX" desc="Physical I/O simulator" type="IO 24/8" manufacturer="ACME" configVersion="1" originalSclVersion="2007" originalSclRevision="B">
    <Services>
      <DynAssociation/>
      <GetDirectory/>
      <GetDataObjectDefinition/>
      <DataObjectDirectory/>
      <GetDataSetValue/>
      <SetDataSetValue/>
      <DataSetDirectory/>
      <ConfDataSet max="3" modify="false"/>
      <DynDataSet max="42"/>
      <ReadWrite/>
      <ConfReportControl max="10" bufConf="false"/>
      <GetCBValues/>
      <ReportSettings rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn" owner="true" resvTms="true"/>
      <ConfLNs fixPrefix="true" fixLnInst="true"/>
      <GOOSE max="1"/>
      <GSSE max="0"/>
    </Services>
    <AccessPoint name="StationBus">
      <Server>
        <Authentication none="true"/>
        <LDevice inst="LD0">
          <LN0 lnType="TEMPLATE.LLN0" lnClass="LLN0" inst="" desc="Logical device LN">
            <DataSet name="inputsDataSet">
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind1" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind2" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind3" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind4" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind5" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind6" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind7" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binIn" lnClass="GGIO" lnInst="1" doName="Ind8" fc="ST"/>
            </DataSet>
            <DataSet name="outputsDataSet">
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO1" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO2" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO3" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO4" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO5" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO6" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO7" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO8" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO9" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO10" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO11" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO12" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO13" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO14" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO15" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO16" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO17" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO18" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO19" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO20" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO21" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO22" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO23" fc="ST"/>
              <FCDA ldInst="LD0" prefix="binOut" lnClass="GGIO" lnInst="1" doName="SPCSO24" fc="ST"/>
            </DataSet>
            <ReportControl name="urcbInputs" buffered="false" bufTime="100" datSet="inputsDataSet" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3"/>
            </ReportControl>
              <ReportControl name="urcbOutputs" buffered="false" bufTime="100" datSet="outputsDataSet" intgPd="0" confRev="3000">
              <TrgOps dchg="true" qchg="true" dupd="true" period="true" gi="true"/>
              <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="false" entryID="true" configRef="true"/>
              <RptEnabled max="3"/>
            </ReportControl>
          </LN0>
          <LN lnType="IO_BOX.LPHD1" lnClass="LPHD" inst="1" desc="Physical device information"/>
          <LN lnType="IO_BOX.binInGGIO" prefix="binIn" lnClass="GGIO" inst="1" desc="Binary inputs"/>
          <LN lnType="IO_BOX.binOutGGIO" prefix="binOut" lnClass="GGIO" inst="1" desc="Binary outputs"/>
        </LDevice>
      </Server>
    </AccessPoint>
  </IED>

  <DataTypeTemplates>
    <LNodeType id="IO_BOX.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="IO_BOX.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
    </LNodeType>
    <LNodeType id="IO_BOX.binInGGIO" lnClass="GGIO" desc="Generic process I/O">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Ind1" type="TEMPLATE.SPS" desc="Status of binary input 1"/>
      <DO name="Ind2" type="TEMPLATE.SPS" desc="Status of binary input 2"/>
      <DO name="Ind3" type="TEMPLATE.SPS" desc="Status of binary input 3"/>
      <DO name="Ind4" type="TEMPLATE.SPS" desc="Status of binary input 4"/>
      <DO name="Ind5" type="TEMPLATE.SPS" desc="Status of binary input 5"/>
      <DO name="Ind6" type="TEMPLATE.SPS" desc="Status of binary input 6"/>
      <DO name="Ind7" type="TEMPLATE.SPS" desc="Status of binary input 7"/>
      <DO name="Ind8" type="TEMPLATE.SPS" desc="Status of binary input 8"/>
    </LNodeType>
    <LNodeType id="IO_BOX.binOutGGIO" lnClass="GGIO" desc="Generic process I/O">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="SPCSO1" type="TEMPLATE.SPC1" desc="Binary output 1"/>
      <DO name="SPCSO2" type="TEMPLATE.SPC1" desc="Binary output 2"/>
      <DO name="SPCSO3" type="TEMPLATE.SPC1" desc="Binary output 3"/>
      <DO name="SPCSO4" type="TEMPLATE.SPC1" desc="Binary output 4"/>
      <DO name="SPCSO5" type="TEMPLATE.SPC1" desc="Binary output 5"/>
      <DO name="SPCSO6" type="TEMPLATE.SPC1" desc="Binary output 6"/>
      <DO name="SPCSO7" type="TEMPLATE.SPC1" desc="Binary output 7"/>
      <DO name="SPCSO8" type="TEMPLATE.SPC1" desc="Binary output 8"/>
      <DO name="SPCSO9" type="TEMPLATE.SPC1" desc="Binary output 9"/>
      <DO name="SPCSO10" type="TEMPLATE.SPC1" desc="Binary output 10"/>
      <DO name="SPCSO11" type="TEMPLATE.SPC1" desc="Binary output 11"/>
      <DO name="SPCSO12" type="TEMPLATE.SPC1" desc="Binary output 12"/>
      <DO name="SPCSO13" type="TEMPLATE.SPC1" desc="Binary output 13"/>
      <DO name="SPCSO14" type="TEMPLATE.SPC1" desc="Binary output 14"/>
      <DO name="SPCSO15" type="TEMPLATE.SPC1" desc="Binary output 15"/>
      <DO name="SPCSO16" type="TEMPLATE.SPC1" desc="Binary output 16"/>
      <DO name="SPCSO17" type="TEMPLATE.SPC1" desc="Binary output 17"/>
      <DO name="SPCSO18" type="TEMPLATE.SPC1" desc="Binary output 18"/>
      <DO name="SPCSO19" type="TEMPLATE.SPC1" desc="Binary output 19"/>
      <DO name="SPCSO20" type="TEMPLATE.SPC1" desc="Binary output 20"/>
      <DO name="SPCSO21" type="TEMPLATE.SPC1" desc="Binary output 21"/>
      <DO name="SPCSO22" type="TEMPLATE.SPC1" desc="Binary output 22"/>
      <DO name="SPCSO23" type="TEMPLATE.SPC1" desc="Binary output 23"/>
      <DO name="SPCSO24" type="TEMPLATE.SPC1" desc="Binary output 24"/>
    </LNodeType>
    <LNodeType id="AA1D1Q05Q1CBSW.GGIO1" lnClass="GGIO" desc="Generic process I/O">
      <DO name="Beh" type="AA1D1Q05Q1CBSW.LLN0.Beh"/>
      <DO name="NamPlt" type="AA1D1Q05Q1CBSW.XCBR1.NamPlt"/>
      <DO name="Ind1" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 1"/>
      <DO name="Ind2" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 2"/>
      <DO name="Ind3" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 3"/>
      <DO name="Ind4" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 4"/>
      <DO name="Ind5" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 5"/>
      <DO name="Ind6" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 6"/>
      <DO name="Ind7" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 7"/>
      <DO name="Ind8" type="AA1D1Q05Q1CBSW.LPHD1.Proxy" desc="Status of binary input 8"/>
      <DO name="SPCSO1" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 1"/>
      <DO name="SPCSO2" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 2"/>
      <DO name="SPCSO3" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 3"/>
      <DO name="SPCSO4" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 4"/>
      <DO name="SPCSO5" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 5"/>
      <DO name="SPCSO6" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 6"/>
      <DO name="SPCSO7" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 7"/>
      <DO name="SPCSO8" type="AA1D1Q05Q1CBSW.LPHD1.Sim" desc="Binary output 8"/>
    </LNodeType>
    <LNodeType id="AA1D1Q05Q1CBSW.LLN0" lnClass="LLN0" desc="Logical device LN">
      <DO name="Mod" type="AA1D1Q05Q1CBSW.LLN0.Mod"/>
      <DO name="Beh" type="AA1D1Q05Q1CBSW.LLN0.Beh"/>
      <DO name="Health" type="AA1D1Q05Q1CBSW.LLN0.Health"/>
      <DO name="NamPlt" type="AA1D1Q05Q1CBSW.LLN0.NamPlt"/>
    </LNodeType>
    <LNodeType id="AA1D1Q05Q1CBSW.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q05Q1CBSW.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="AA1D1Q05Q1CBSW.LLN0.Health"/>
      <DO name="Proxy" type="AA1D1Q05Q1CBSW.LPHD1.Proxy"/>
      <DO name="Sim" type="AA1D1Q05Q1CBSW.LPHD1.Sim"/>
    </LNodeType>
    <LNodeType id="AA1D1Q05Q1CBSW.XCBR1" lnClass="XCBR" desc="Circuit breaker">
      <DO name="Beh" type="AA1D1Q05Q1CBSW.LLN0.Beh"/>
      <DO name="NamPlt" type="AA1D1Q05Q1CBSW.XCBR1.NamPlt"/>
      <DO name="Loc" type="AA1D1Q05Q1CBSW.LPHD1.Proxy"/>
      <DO name="OpCnt" type="AA1D1Q05Q1CBSW.XCBR1.OpCnt"/>
      <DO name="Pos" type="AA1D1Q05Q1CBSW.XCBR1.Pos" desc="Breaker position"/>
      <DO name="BlkOpn" type="AA1D1Q05Q1CBSW.XCBR1.BlkOpn" desc="Block opening"/>
      <DO name="BlkCls" type="AA1D1Q05Q1CBSW.XCBR1.BlkOpn" desc="Block closing"/>
    </LNodeType>
    <LNodeType id="AA1D1Q05Q1CBSW.XSWI1" lnClass="XSWI" desc="Disconnector">
      <DO name="Beh" type="AA1D1Q05Q1CBSW.LLN0.Beh"/>
      <DO name="NamPlt" type="AA1D1Q05Q1CBSW.XCBR1.NamPlt"/>
      <DO name="Loc" type="AA1D1Q05Q1CBSW.LPHD1.Proxy"/>
      <DO name="OpCnt" type="AA1D1Q05Q1CBSW.XCBR1.OpCnt"/>
      <DO name="SwTyp" type="TEMPLATE.SwTyp"/>
      <DO name="Pos" type="AA1D1Q05Q1CBSW.XCBR1.Pos" desc="Disconnector position"/>
      <DO name="BlkOpn" type="AA1D1Q05Q1CBSW.XCBR1.BlkOpn" desc="Block opening"/>
      <DO name="BlkCls" type="AA1D1Q05Q1CBSW.XCBR1.BlkOpn" desc="Block closing"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.ITCI" lnClass="ITCI" iedType="ITCI">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.IHMI" lnClass="IHMI" iedType="IHMI">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.LLN0" lnClass="LLN0" desc="Logical device LN">
      <DO name="NamPlt" type="TEMPLATE.LLN0.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="GrRef" type="TEMPLATE.ORG"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="TEMPLATE.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="AA1D1Q01Q1.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q01Q1.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="AA1D1Q02Q1.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q02Q1.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="AA1D1Q02Q2.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q02Q2.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="AA1D1Q03Q1.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q03Q1.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="AA1D1Q03Q2.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q03Q2.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="AA1D1Q04Q1.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="AA1D1Q04Q1.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="BB_PROT.LPHD1" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="BB_PROT.LPHD1.PhyNam"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1" desc="Receive simulated GOOSE"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.LPHD1MU" lnClass="LPHD" desc="Physical device information">
      <DO name="PhyNam" type="TEMPLATE.LPHD1.PhyNamMU"/>
      <DO name="PhyHealth" type="TEMPLATE.Health"/>
      <DO name="Proxy" type="TEMPLATE.SPS"/>
      <DO name="Sim" type="TEMPLATE.SPC1"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.XCBR1" lnClass="XCBR" desc="Circuit breaker">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Loc" type="TEMPLATE.SPS"/>
      <DO name="OpCnt" type="TEMPLATE.XCBR1.OpCnt"/>
      <DO name="Pos" type="TEMPLATE.DPC_read_only_small" desc="Breaker position"/>
      <DO name="BlkOpn" type="TEMPLATE.SPC_status_only" desc="Block opening"/>
      <DO name="BlkCls" type="TEMPLATE.SPC_status_only" desc="Block closing"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.CSWI" lnClass="CSWI" desc="Switch controller">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="LocKey" type="TEMPLATE.SPS" desc="Local-Remote key at Local"/>
      <DO name="LocSta" type="IO_BOX.SPC1" desc="Control authority at station level"/>
      <DO name="Pos" type="TEMPLATE.DPC" desc="Switch controller position"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.CSWI_HEALTH" lnClass="CSWI" desc="Switch controller">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="LocKey" type="TEMPLATE.SPS" desc="Local-Remote key at Local"/>
      <DO name="LocSta" type="IO_BOX.SPC1" desc="Control authority at station level"/>
      <DO name="Pos" type="TEMPLATE.DPC" desc="Switch controller position"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.XSWI1" lnClass="XSWI" desc="Disconnector">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Loc" type="TEMPLATE.SPS"/>
      <DO name="OpCnt" type="TEMPLATE.XCBR1.OpCnt"/>
      <DO name="SwTyp" type="TEMPLATE.SwTyp"/>
      <DO name="Pos" type="TEMPLATE.DPC_read_only_small" desc="Disconnector position"/>
      <DO name="BlkOpn" type="TEMPLATE.SPC_status_only" desc="Block opening"/>
      <DO name="BlkCls" type="TEMPLATE.SPC_status_only" desc="Block closing"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.XSWI_EARTH_SWITCH" lnClass="XSWI" desc="Earth switch">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Loc" type="TEMPLATE.SPS"/>
      <DO name="OpCnt" type="TEMPLATE.XCBR1.OpCnt"/>
      <DO name="SwTyp" type="TEMPLATE.SwTyp_EarthSwitch"/>
      <DO name="Pos" type="TEMPLATE.DPC_read_only_small" desc="Earth switch position"/>
      <DO name="BlkOpn" type="TEMPLATE.SPC_status_only" desc="Block opening"/>
      <DO name="BlkCls" type="TEMPLATE.SPC_status_only" desc="Block closing"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.XSWI_EARTH_SWITCH_HEALTH" lnClass="XSWI" desc="Earth switch">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Loc" type="TEMPLATE.SPS"/>
      <DO name="OpCnt" type="TEMPLATE.XCBR1.OpCnt"/>
      <DO name="SwTyp" type="TEMPLATE.SwTyp_EarthSwitch"/>
      <DO name="Pos" type="TEMPLATE.DPC_read_only_small" desc="Earth switch position"/>
      <DO name="BlkOpn" type="TEMPLATE.SPC_status_only" desc="Block opening"/>
      <DO name="BlkCls" type="TEMPLATE.SPC_status_only" desc="Block closing"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.CILO" lnClass="CILO" desc="Interlocking">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="EnaOpn" type="TEMPLATE.SPS_true" desc="Enable Open"/>
      <DO name="EnaCls" type="TEMPLATE.SPS_true" desc="Enable Close"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.ATCC" lnClass="ATCC" desc="Automatic tap changer controller">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="CtlV" type="TEMPLATE.MV" desc="Control voltage"/>
      <DO name="ParOp" type="TEMPLATE.SPC1" desc="Parallel/Independent operation"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.RSYN" lnClass="RSYN" desc="Synchronism-check or synchronising">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Rel" type="TEMPLATE.SPS_true" desc="Release"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.PDIF" lnClass="PDIF" desc="Differential">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Str" type="TEMPLATE.ACD"/>
      <DO name="Op" type="TEMPLATE.ACT_non_phase"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.PDIS" lnClass="PDIS" desc="Distance">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Str" type="TEMPLATE.ACD"/>
      <DO name="Op" type="TEMPLATE.ACT_non_phase"/>
      <DO name="DirMod" type="TEMPLATE.DirMod"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.PTOC" lnClass="PTOC" desc="Time overcurrent">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Str" type="TEMPLATE.ACD"/>
      <DO name="Op" type="TEMPLATE.ACT_non_phase"/>
      <DO name="DirMod" type="TEMPLATE.DirMod"/>
      <DO name="StrVal" type="TEMPLATE.ASG_PTOC"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.PTRC" lnClass="PTRC" desc="Protection trip conditioning">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Tr" type="TEMPLATE.ACT_non_phase"/>
      <DO name="Str" type="TEMPLATE.ACD"/>
      <DO name="TrMod" type="TEMPLATE.TrMod"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.RBRF" lnClass="RBRF" desc="Breaker failure">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Str" type="TEMPLATE.ACD"/>
      <DO name="OpEx" type="TEMPLATE.ACT"/>
      <DO name="OpIn" type="TEMPLATE.ACT"/>
      <DO name="OpCntRs" type="TEMPLATE.INC"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.TCTR" lnClass="TCTR" desc="Current transformer">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="AmpSv" type="TEMPLATE.SAV"/>
      <DO name="ARtg" type="TEMPLATE.ASG"/>
      <DO name="HzRtg" type="TEMPLATE.ASG"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.TVTR" lnClass="TVTR" desc="Voltage transformer">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="VolSv" type="TEMPLATE.SAV" desc="Voltage"/>
      <DO name="VRtg" type="TEMPLATE.ASG"/>
      <DO name="HzRtg" type="TEMPLATE.ASG"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.TVTR2" lnClass="TVTR" desc="Voltage transformer">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="VolSv" type="TEMPLATE.SAV" desc="Voltage"/>
      <DO name="VRtg" type="TEMPLATE.ASG"/>
      <DO name="HzRtg" type="TEMPLATE.ASG"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.MMXU" lnClass="MMXU" desc="Measurement">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="TotW" type="TEMPLATE.MV" desc="Total active power"/>
      <DO name="Hz" type="TEMPLATE.MV" desc="Frequency"/>
      <DO name="PPV" type="TEMPLATE.DEL"/>
      <DO name="PhV" type="TEMPLATE.WYE_Phv"/>
      <DO name="A" type="TEMPLATE.WYE_A"/>
      <DO name="W" type="TEMPLATE.WYE_W"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.MMXU_V" lnClass="MMXU" desc="Measurement">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Hz" type="TEMPLATE.MV" desc="Frequency"/>
      <DO name="PPV" type="TEMPLATE.DEL"/>
      <DO name="PhV" type="TEMPLATE.WYE_Phv"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.MMXU_A" lnClass="MMXU" desc="Measurement">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Health" type="TEMPLATE.Health"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="Hz" type="TEMPLATE.MV" desc="Frequency"/>
      <DO name="A" type="TEMPLATE.WYE_A"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.YLTC" lnClass="YLTC" desc="Tap changer">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="OpCnt" type="TEMPLATE.INS"/>
      <DO name="EndPosR" type="TEMPLATE.SPS" desc="End position raise reached"/>
      <DO name="EndPosL" type="TEMPLATE.SPS" desc="End position lower reached"/>
      <DO name="TapChg" type="TEMPLATE.BSC" desc="Change tap position"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.YPTR" lnClass="YPTR" desc="Power transformer">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="OpTmh" type="TEMPLATE.INS" desc="Operation time in hours"/>
      <DO name="PwrRtg" type="TEMPLATE.ASG"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.SPTR" lnClass="SPTR" desc="Power transformer supervision">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="CGAlm" type="TEMPLATE.SPS" desc="Core ground alarm"/>
      <DO name="HeatAlm" type="TEMPLATE.SPS" desc="Heater alarm"/>
      <DO name="HPTmpClc" type="TEMPLATE.MV" desc="Calculated winding hotspot temperature"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.RREC" lnClass="RREC" desc="Autoreclosing">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="Mod" type="TEMPLATE.Mod" desc="Mode"/>
      <DO name="OpCls" type="TEMPLATE.ACT_non_phase"/>
      <DO name="AutoRecSt" type="TEMPLATE.AutoRecSt.ENS" desc="Auto reclosing status"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.LGOS" lnClass="LGOS" desc="GOOSE subscription">
      <DO name="NamPlt" type="TEMPLATE.LN.NamPlt"/>
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="NdsCom" type="TEMPLATE.SPS" desc="Needs commissioning"/>
      <DO name="St" type="TEMPLATE.SPS" desc="Receiving GOOSE"/>
      <DO name="SimSt" type="TEMPLATE.SPS" desc="Receiving simulated GOOSE"/>
      <DO name="ConfRevNum" type="TEMPLATE.INS" desc="Configured configuration revision"/>
      <DO name="RxConfRevNum" type="TEMPLATE.INS" desc="Received configuration revision"/>
      <DO name="LastStNum" type="TEMPLATE.INS" desc="Last received status number"/>
      <DO name="GoCBRef" type="TEMPLATE.ORG"/>
    </LNodeType>
    <LNodeType id="TEMPLATE.LTMS" lnClass="LTMS" desc="Time master supervision">
      <DO name="Beh" type="TEMPLATE.Beh" desc="Behaviour"/>
      <DO name="TmAcc" type="TEMPLATE.INS" desc="Time accuracy"/>
      <DO name="TmSrc" type="TEMPLATE.VSS" desc="Time source"/>
      <DO name="TmSrcTyp" type="TEMPLATE.TmSrcTyp" desc="Clock source"/>
      <DO name="TmSyn" type="TEMPLATE.TmsSyc" desc="Time synchronisation applied"/>
      <DO name="TmChSt" type="TEMPLATE.SPS" desc="Receiving time messages"/>
      <DO name="TmSynLkd" type="TEMPLATE.TmSynLkd" desc="Locked status"/>
    </LNodeType>
    <DOType id="TEMPLATE.VSS" cdc="VSS">
      <DA name="stVal" fc="ST" bType="VisString255"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.XCBR1.Pos" cdc="DPC">
      <DA name="stVal" fc="ST" bType="Dbpos"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255"/>
      <DA name="hwRev" fc="DC" bType="VisString255"/>
      <DA name="swRev" fc="DC" bType="VisString255"/>
      <DA name="serNum" fc="DC" bType="VisString255"/>
      <DA name="model" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LLN0.Mod" cdc="ENC">
      <DA name="stVal" fc="ST" bType="Enum" type="Mod"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="stSeld" fc="ST" bType="BOOLEAN"/>
      <DA name="opRcvd" fc="OR" bType="BOOLEAN"/>
      <DA name="opOk" fc="OR" bType="BOOLEAN"/>
      <DA name="tOpOk" fc="OR" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind"/>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="SBO" fc="CO" bType="ObjRef"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.Cancel"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LLN0.Beh" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="Beh"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LLN0.Health" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="Health"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.XCBR1.OpCnt" cdc="INS">
      <DA name="stVal" fc="ST" bType="INT32"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LLN0.NamPlt" cdc="LPL">
      <DA name="vendor" fc="DC" bType="VisString255"/>
      <DA name="swRev" fc="DC" bType="VisString255"/>
      <DA name="d" fc="DC" bType="VisString255"/>
      <DA name="configRev" fc="DC" bType="VisString255"/>
      <DA name="ldNs" fc="EX" bType="VisString255"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.XCBR1.NamPlt" cdc="LPL">
      <DA name="vendor" fc="DC" bType="VisString255"/>
      <DA name="swRev" fc="DC" bType="VisString255"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LPHD1.Sim" cdc="SPC">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="stSeld" fc="ST" bType="BOOLEAN"/>
      <DA name="opRcvd" fc="OR" bType="BOOLEAN"/>
      <DA name="opOk" fc="OR" bType="BOOLEAN"/>
      <DA name="tOpOk" fc="OR" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind"/>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="d" fc="DC" bType="VisString255"/>
      <DA name="SBO" fc="CO" bType="ObjRef"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="AA1D1Q05Q1CBSW.LPHD1.Sim.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="AA1D1Q05Q1CBSW.LPHD1.Sim.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="AA1D1Q05Q1CBSW.LPHD1.Sim.Cancel"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.XCBR1.BlkOpn" cdc="SPC">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="AA1D1Q05Q1CBSW.LPHD1.Proxy" cdc="SPS">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="TEMPLATE.ORG" cdc="ORG">
      <DA name="setSrcRef" fc="SP" bType="ObjRef"/>
    </DOType>
    <DOType id="TEMPLATE.BSC" cdc="BSC">
      <DA name="valWTr" fc="ST" bType="Struct" type="ValWithTrans"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="persistent" fc="CF" bType="BOOLEAN"/>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>sbo-with-enhanced-security</Val>
      </DA>
      <DA name="minVal" fc="CF" bType="INT8"><Val>1</Val></DA>
      <DA name="maxVal" fc="CF" bType="INT8"><Val>25</Val></DA>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="TEMPLATE.BSC.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="TEMPLATE.BSC.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="TEMPLATE.BSC.Cancel"/>
    </DOType>
    <DOType id="TEMPLATE.TrMod" cdc="ENG">
      <DA name="setVal" fc="SE" bType="Enum" type="TrMod">
        <Val>1 or 3 phase tripping</Val>
      </DA>
    </DOType>
    <DOType id="TEMPLATE.DirMod" cdc="ENG">
      <DA name="setVal" fc="SE" bType="Enum" type="DirectionModeKind">
        <Val>Forward</Val>
      </DA>
    </DOType>
    <DOType id="TEMPLATE.WYE_Phv" cdc="WYE">
      <SDO name="phsA" type="TEMPLATE.CMV" desc="Phase to ground voltage - A"/>
      <SDO name="phsB" type="TEMPLATE.CMV" desc="Phase to ground voltage - B"/>
      <SDO name="phsC" type="TEMPLATE.CMV" desc="Phase to ground voltage - C"/>
    </DOType>
    <DOType id="TEMPLATE.WYE_A" cdc="WYE">
      <SDO name="phsA" type="TEMPLATE.CMV" desc="Phase current - A"/>
      <SDO name="phsB" type="TEMPLATE.CMV" desc="Phase current - B"/>
      <SDO name="phsC" type="TEMPLATE.CMV" desc="Phase current - C"/>
    </DOType>
    <DOType id="TEMPLATE.WYE_W" cdc="WYE">
      <SDO name="phsA" type="TEMPLATE.CMV" desc="Phase active power - A"/>
      <SDO name="phsB" type="TEMPLATE.CMV" desc="Phase active power - B"/>
      <SDO name="phsC" type="TEMPLATE.CMV" desc="Phase active power - C"/>
    </DOType>
    <DOType id="TEMPLATE.CMV" cdc="CMV">
      <DA name="instCVal" fc="MX" bType="Struct" type="TEMPLATE.Vector"/>
      <DA name="cVal" fc="MX" bType="Struct" type="TEMPLATE.Vector"/>
      <DA name="q" fc="MX" bType="Quality"/>
      <DA name="t" fc="MX" bType="Timestamp"/>
      <DA name="units" fc="CF" bType="Struct" type="Units"/>
      <DA name="db" fc="CF" bType="INT32U"/>
    </DOType>
    <DOType id="TEMPLATE.DEL" cdc="DEL">
      <SDO name="phsAB" type="TEMPLATE.CMV" desc="Phase to phase voltage - A to B"/>
      <SDO name="phsBC" type="TEMPLATE.CMV" desc="Phase to phase voltage - B to C"/>
      <SDO name="phsCA" type="TEMPLATE.CMV" desc="Phase to phase voltage - C to A"/>
    </DOType>
    <DOType id="TEMPLATE.MV" cdc="MV">
      <DA name="instMag" fc="MX" bType="Struct" type="AnalogueValue"/>
      <DA name="mag" fc="MX" bType="Struct" type="AnalogueValue"/>
      <DA name="q" fc="MX" bType="Quality"/>
      <DA name="t" fc="MX" bType="Timestamp"/>
      <DA name="units" fc="CF" bType="Struct" type="Units"/>
      <DA name="db" fc="CF" bType="INT32U"/>
      <DA name="dataNs" fc="EX" bType="VisString255"/>
    </DOType>
    <DOType id="TEMPLATE.ASG" cdc="ASG">
      <DA name="setMag" fc="SE" bType="Struct" type="AnalogueValue"/>
      <DA name="units" fc="CF" bType="Struct" type="Units"/>
      <DA name="minVal" fc="CF" bType="Struct" type="AnalogueValue"/>
      <DA name="maxVal" fc="CF" bType="Struct" type="AnalogueValue"/>
      <DA name="stepSize" fc="CF" bType="Struct" type="AnalogueValue"/>
    </DOType>
    <DOType id="TEMPLATE.ASG_PTOC" cdc="ASG">
      <DA name="setMag" fc="SE" bType="Struct" type="AnalogueValue_PTOC"/>
      <DA name="units" fc="CF" bType="Struct" type="Units_PTOC"/>
      <DA name="minVal" fc="CF" bType="Struct" type="AnalogueValue"/>
      <DA name="maxVal" fc="CF" bType="Struct" type="AnalogueValue"/>
      <DA name="stepSize" fc="CF" bType="Struct" type="AnalogueValue"/>
    </DOType>
    <DOType id="TEMPLATE.SAV" cdc="SAV">
      <DA name="instMag" fc="MX" bType="Struct" type="AnalogueValue"/>
      <DA name="q" fc="MX" bType="Quality"/>
      <DA name="t" fc="MX" bType="Timestamp"/>
      <DA name="units" fc="CF" bType="Struct" type="Units"/>
    </DOType>
    <DOType id="TEMPLATE.ACD" cdc="ACD">
      <DA name="general" fc="ST" bType="BOOLEAN" desc="Start">
        </DA>
      <DA name="dirGeneral" fc="ST" bType="Enum" type="FaultDirectionKind" desc="Direction"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.ACT" cdc="ACT">
      <DA name="general" fc="ST" bType="BOOLEAN">
        </DA>
      <DA name="phsA" fc="ST" bType="BOOLEAN">
        <Val>false</Val>
      </DA>
      <DA name="phsB" fc="ST" bType="BOOLEAN">
        <Val>false</Val>
      </DA>
      <DA name="phsC" fc="ST" bType="BOOLEAN">
        <Val>false</Val>
      </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.ACT_non_phase" cdc="ACT">
      <DA name="general" fc="ST" bType="BOOLEAN" desc="Operate"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.DPC_read_only_small" cdc="DPC">
      <DA name="stVal" fc="ST" bType="Dbpos">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>status-only</Val>
      </DA>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="TEMPLATE.DPC" cdc="DPC">
      <DA name="stVal" fc="ST" bType="Dbpos">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>sbo-with-enhanced-security</Val>
      </DA>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="SBO" fc="CO" bType="ObjRef"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="TEMPLATE.DPC.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="TEMPLATE.DPC.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="TEMPLATE.DPC.Cancel"/>
    </DOType>
    <DOType id="BB_PROT.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>Siemens</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>6MD86-DAAA-AA0-0AAAA0-AH0111-13111B-AAA000-000AA0-CP2BA1</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val></Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>BF1307021962</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>Siprotec5</Val>
      </DA>
    </DOType>
    <DOType id="IO_BOX.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>ACME</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>0173</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val>v0.321</Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255"/>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>IO 24/8</Val>
      </DA>
    </DOType>

    <DOType id="AA1D1Q01Q1.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>Sprecher</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>311.130/G021</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val>8.51</Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>12345678</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>SPRECON-E</Val>
      </DA>
    </DOType>
    <DOType id="AA1D1Q02Q1.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>ABB</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>G</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val>2.8.5</Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>1VHR91421947</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>AC500</Val>
      </DA>
    </DOType>
    <DOType id="AA1D1Q02Q2.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>Hitachi</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>2.2.4</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val></Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>T1921117</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>Relion 670</Val>
      </DA>
    </DOType>
    <DOType id="AA1D1Q03Q1.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>Schneider</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>P139-3D904-F4-322-443-675-702-993</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val></Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>3.408811.2</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>MICOM</Val>
      </DA>
    </DOType>
    <DOType id="AA1D1Q03Q2.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>Schneider</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>M340-3D904-F4-322-443-675-702-993</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val></Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>3.305511.3</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>Modicon</Val>
      </DA>
    </DOType>
    <DOType id="AA1D1Q04Q1.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>Siemens</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>7SL87-DAAA-AA0-0AAAA0-A91111-12113B-ABD000-000AC0-CB1BA1</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val></Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255">
        <Val>BM1902003009</Val>
      </DA>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>Siprotec</Val>
      </DA>
    </DOType>
    <DOType id="TEMPLATE.LPHD1.PhyNam" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>ACME</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>8AK86-AAAA-AA0-0AAAA0-AB0123-32123A-AAA000-000ABC-CBAABC-CB0AB0-CA0CA0-BC1AB2</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val>v0.123</Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255"/>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>PROTEC 400</Val>
      </DA>
    </DOType>
    <DOType id="TEMPLATE.LPHD1.PhyNamMU" cdc="DPL">
      <DA name="vendor" fc="DC" bType="VisString255">
        <Val>ACME</Val>
      </DA>
      <DA name="hwRev" fc="DC" bType="VisString255">
        <Val>9AK62-AAAA-AA0-0AAAA0-AB0123-32123A-AAA000-000ABC-CBAABC-CB0AB0-CA0CA0-BC1AB2</Val>
      </DA>
      <DA name="swRev" fc="DC" bType="VisString255">
        <Val>v0.123</Val>
      </DA>
      <DA name="serNum" fc="DC" bType="VisString255"/>
      <DA name="model" fc="DC" bType="VisString255">
        <Val>MU 300</Val>
      </DA>
    </DOType>
    <DOType id="TEMPLATE.Mod" cdc="ENC">
      <DA name="stVal" fc="ST" bType="Enum" type="Mod"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>sbo-with-enhanced-security</Val>
      </DA>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="SBO" fc="CO" bType="ObjRef"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="TEMPLATE.Mod.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="TEMPLATE.Mod.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="TEMPLATE.Mod.Cancel"/>
    </DOType>
    <DOType id="TEMPLATE.INC" cdc="INC">
      <DA name="stVal" fc="ST" bType="INT32"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>sbo-with-enhanced-security</Val>
      </DA>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="SBO" fc="CO" bType="ObjRef"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="TEMPLATE.INT32.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="TEMPLATE.INT32.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="TEMPLATE.INT32.Cancel"/>
    </DOType>
    <DOType id="TEMPLATE.AutoRecSt.ENS" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="AutoRecSt"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.Beh" cdc="ENS" desc="Behaviour">
      <DA name="stVal" fc="ST" bType="Enum" type="Beh">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.TmSrcTyp" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="TmSrcTyp"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.TmsSyc" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="TmsSyc"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.TmSynLkd" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="TmSynLkd"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.INS" cdc="INS">
      <DA name="stVal" fc="ST" bType="INT32"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.SwTyp_EarthSwitch" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="SwTyp" dchg="true">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.SwTyp" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="SwTyp" dchg="true">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.Health" cdc="ENS">
      <DA name="stVal" fc="ST" bType="Enum" type="Health">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.XCBR1.OpCnt" cdc="INS">
      <DA name="stVal" fc="ST" bType="INT32"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
    </DOType>
    <DOType id="TEMPLATE.LLN0.NamPlt" cdc="LPL">
      <DA name="vendor" fc="DC" bType="VisString255"/>
      <DA name="swRev" fc="DC" bType="VisString255"/>
      <DA name="d" fc="DC" bType="VisString255"/>
      <DA name="configRev" fc="DC" bType="VisString255"/>
      <DA name="ldNs" fc="EX" bType="VisString255">
        <Val>IEC 61850-7-4:2007A</Val>
      </DA>
    </DOType>
    <DOType id="TEMPLATE.LN.NamPlt" cdc="LPL">
      <DA name="vendor" fc="DC" bType="VisString255"/>
      <DA name="swRev" fc="DC" bType="VisString255"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="TEMPLATE.SPS" cdc="SPS">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="TEMPLATE.SPS_true" cdc="SPS">
      <DA name="stVal" fc="ST" bType="BOOLEAN">
        </DA>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DOType id="TEMPLATE.SPC1" cdc="SPC">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>sbo-with-enhanced-security</Val>
      </DA>
      <DA name="sboTimeout" fc="CF" bType="INT32U"/>
      <DA name="operTimeout" fc="CF" bType="INT32U"/>
      <DA name="d" fc="DC" bType="VisString255"/>
      <DA name="SBOw" fc="CO" bType="Struct" type="TEMPLATE.SPC1.SBOw"/>
      <DA name="Oper" fc="CO" bType="Struct" type="TEMPLATE.SPC1.SBOw"/>
      <DA name="Cancel" fc="CO" bType="Struct" type="TEMPLATE.SPC1.Cancel"/>
    </DOType>
    <DOType id="IO_BOX.SPC1" cdc="SPC">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>direct-with-normal-security</Val>
      </DA>
      <DA name="Oper" fc="CO" bType="Struct" type="TEMPLATE.SPC1.SBOw"/>
    </DOType>
    <DOType id="TEMPLATE.SPC_status_only" cdc="SPC">
      <DA name="stVal" fc="ST" bType="BOOLEAN"/>
      <DA name="q" fc="ST" bType="Quality"/>
      <DA name="t" fc="ST" bType="Timestamp"/>
      <DA name="ctlModel" fc="CF" bType="Enum" type="CtlModelKind">
        <Val>status-only</Val>
      </DA>
      <DA name="d" fc="DC" bType="VisString255"/>
    </DOType>
    <DAType id="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw.origin">
      <BDA name="orCat" bType="Enum" type="OriginatorCategoryKind"/>
      <BDA name="orIdent" bType="Octet64"/>
    </DAType>
    <DAType id="AA1D1Q05Q1CBSW.LPHD1.Sim.SBOw">
      <BDA name="ctlVal" bType="BOOLEAN"/>
      <BDA name="origin" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="AA1D1Q05Q1CBSW.LPHD1.Sim.Cancel">
      <BDA name="ctlVal" bType="BOOLEAN"/>
      <BDA name="origin" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw">
      <BDA name="ctlVal" bType="Enum" type="Mod"/>
      <BDA name="origin" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="AA1D1Q05Q1CBSW.LLN0.Mod.Cancel">
      <BDA name="ctlVal" bType="Enum" type="Mod"/>
      <BDA name="origin" bType="Struct" type="AA1D1Q05Q1CBSW.LLN0.Mod.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="ValWithTrans">
      <BDA name="posVal" bType="INT8"/>
    </DAType>
    <DAType id="AnalogueValue">
      <BDA name="f" bType="FLOAT32"/>
    </DAType>
    <DAType id="AnalogueValue_PTOC">
      <BDA name="f" bType="FLOAT32">
        <Val>1800</Val>
      </BDA>
    </DAType>
    <DAType id="Units">
      <BDA name="SIUnit" bType="Enum" type="SIUnit"/>
      <BDA name="multiplier" bType="Enum" type="multiplier"/>
    </DAType>
    <DAType id="Units_PTOC">
      <BDA name="SIUnit" bType="Enum" type="SIUnit">
        <Val>A</Val>
      </BDA>
      <BDA name="multiplier" bType="Enum" type="multiplier">
        </BDA>
    </DAType>
    <DAType id="TEMPLATE.DPC.SBOw">
      <BDA name="ctlVal" bType="BOOLEAN"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="TEMPLATE.Mod.SBOw">
      <BDA name="ctlVal" bType="Enum" type="Mod"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="TEMPLATE.BSC.SBOw">
      <BDA name="ctlVal" bType="Tcmd"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="TEMPLATE.INT32.SBOw">
      <BDA name="ctlVal" bType="INT32"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="TEMPLATE.DPC.Cancel">
      <BDA name="ctlVal" bType="BOOLEAN"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="TEMPLATE.Mod.Cancel">
      <BDA name="ctlVal" bType="Enum" type="Mod"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="TEMPLATE.BSC.Cancel">
      <BDA name="ctlVal" bType="Tcmd"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="TEMPLATE.INT32.Cancel">
      <BDA name="ctlVal" bType="INT32"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="TEMPLATE.SBOw.origin">
      <BDA name="orCat" bType="Enum" type="OriginatorCategoryKind"/>
      <BDA name="orIdent" bType="Octet64"/>
    </DAType>
    <DAType id="TEMPLATE.SPC1.SBOw">
      <BDA name="ctlVal" bType="BOOLEAN"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
      <BDA name="Check" bType="Check"/>
    </DAType>
    <DAType id="TEMPLATE.SPC1.Cancel">
      <BDA name="ctlVal" bType="BOOLEAN"/>
      <BDA name="origin" bType="Struct" type="TEMPLATE.SBOw.origin"/>
      <BDA name="ctlNum" bType="INT8U"/>
      <BDA name="T" bType="Timestamp"/>
      <BDA name="Test" bType="BOOLEAN"/>
    </DAType>
    <DAType id="TEMPLATE.Vector">
      <BDA name="mag" bType="Struct" type="AnalogueValue"/>
      <BDA name="ang" bType="Struct" type="AnalogueValue"/>
    </DAType>
    <EnumType id="DirectionModeKind">
      <EnumVal ord="1">NonDirectional</EnumVal>
      <EnumVal ord="2">Forward</EnumVal>
      <EnumVal ord="3">Reverse</EnumVal>
    </EnumType>
    <EnumType id="CtlModelKind">
      <EnumVal ord="0">status-only</EnumVal>
      <EnumVal ord="1">direct-with-normal-security</EnumVal>
      <EnumVal ord="2">sbo-with-normal-security</EnumVal>
      <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
      <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
    </EnumType>
    <EnumType id="OriginatorCategoryKind">
      <EnumVal ord="0">not-supported</EnumVal>
      <EnumVal ord="1">bay-control</EnumVal>
      <EnumVal ord="2">station-control</EnumVal>
      <EnumVal ord="3">remote-control</EnumVal>
      <EnumVal ord="4">automatic-bay</EnumVal>
      <EnumVal ord="5">automatic-station</EnumVal>
      <EnumVal ord="6">automatic-remote</EnumVal>
      <EnumVal ord="7">maintenance</EnumVal>
      <EnumVal ord="8">process</EnumVal>
    </EnumType>
    <EnumType id="Beh">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="TrMod">
      <EnumVal ord="1">3 phase tripping</EnumVal>
      <EnumVal ord="2">1 or 3 phase tripping</EnumVal>
      <EnumVal ord="3">specific</EnumVal>
    </EnumType>
    <EnumType id="Mod">
      <EnumVal ord="1">on</EnumVal>
      <EnumVal ord="2">blocked</EnumVal>
      <EnumVal ord="3">test</EnumVal>
      <EnumVal ord="4">test/blocked</EnumVal>
      <EnumVal ord="5">off</EnumVal>
    </EnumType>
    <EnumType id="Health">
      <EnumVal ord="1">Ok</EnumVal>
      <EnumVal ord="2">Warning</EnumVal>
      <EnumVal ord="3">Alarm</EnumVal>
    </EnumType>
    <EnumType id="SwTyp">
      <EnumVal ord="1">Load Break</EnumVal>
      <EnumVal ord="2">Disconnector</EnumVal>
      <EnumVal ord="3">Earthing Switch</EnumVal>
      <EnumVal ord="4">High Speed Earthing Switch</EnumVal>
    </EnumType>
    <EnumType id="multiplier">
      <!--Source: IEC 61850-7-3:2003-->
      <EnumVal ord="-24">y</EnumVal>
      <EnumVal ord="-21">z</EnumVal>
      <EnumVal ord="-18">a</EnumVal>
      <EnumVal ord="-15">f</EnumVal>
      <EnumVal ord="-12">p</EnumVal>
      <EnumVal ord="-9">n</EnumVal>
      <EnumVal ord="-6">µ</EnumVal>
      <EnumVal ord="-3">m</EnumVal>
      <EnumVal ord="-2">c</EnumVal>
      <EnumVal ord="-1">d</EnumVal>
      <EnumVal ord="0"/>
      <EnumVal ord="1">da</EnumVal>
      <EnumVal ord="2">h</EnumVal>
      <EnumVal ord="3">k</EnumVal>
      <EnumVal ord="6">M</EnumVal>
      <EnumVal ord="9">G</EnumVal>
      <EnumVal ord="12">T</EnumVal>
      <EnumVal ord="15">P</EnumVal>
      <EnumVal ord="18">E</EnumVal>
      <EnumVal ord="21">Z</EnumVal>
      <EnumVal ord="24">Y</EnumVal>
    </EnumType>
    <EnumType id="AutoRecSt">
      <EnumVal ord="1">Ready</EnumVal>
      <EnumVal ord="2">In progress</EnumVal>
      <EnumVal ord="3">Successful</EnumVal>
      <EnumVal ord="4">Waiting for trip</EnumVal>
      <EnumVal ord="5">Trip issued by protection</EnumVal>
      <EnumVal ord="6">Fault disappeared</EnumVal>
      <EnumVal ord="7">Wait to complete</EnumVal>
      <EnumVal ord="8">Circuit breaker closed</EnumVal>
      <EnumVal ord="9">Cycle unsuccessful</EnumVal>
      <EnumVal ord="10">Unsuccessful</EnumVal>
      <EnumVal ord="11">Aborted</EnumVal>
    </EnumType>
    <EnumType id="FaultDirectionKind">
      <EnumVal ord="0">unknown</EnumVal>
      <EnumVal ord="1">forward</EnumVal>
      <EnumVal ord="2">backward</EnumVal>
      <EnumVal ord="3">both</EnumVal>
    </EnumType>
    <EnumType id="SIUnit">
      <!--Source: IEC 61850-7-3:2003-->
      <EnumVal ord="1"/>
      <EnumVal ord="2">m</EnumVal>
      <EnumVal ord="3">kg</EnumVal>
      <EnumVal ord="4">s</EnumVal>
      <EnumVal ord="5">A</EnumVal>
      <EnumVal ord="6">K</EnumVal>
      <EnumVal ord="7">mol</EnumVal>
      <EnumVal ord="8">cd</EnumVal>
      <EnumVal ord="9">deg</EnumVal>
      <EnumVal ord="10">rad</EnumVal>
      <EnumVal ord="11">sr</EnumVal>
      <EnumVal ord="21">Gy</EnumVal>
      <EnumVal ord="22">q</EnumVal>
      <EnumVal ord="23">°C</EnumVal>
      <EnumVal ord="24">Sv</EnumVal>
      <EnumVal ord="25">F</EnumVal>
      <EnumVal ord="26">C</EnumVal>
      <EnumVal ord="27">S</EnumVal>
      <EnumVal ord="28">H</EnumVal>
      <EnumVal ord="29">V</EnumVal>
      <EnumVal ord="30">ohm</EnumVal>
      <EnumVal ord="31">J</EnumVal>
      <EnumVal ord="32">N</EnumVal>
      <EnumVal ord="33">Hz</EnumVal>
      <EnumVal ord="34">lx</EnumVal>
      <EnumVal ord="35">Lm</EnumVal>
      <EnumVal ord="36">Wb</EnumVal>
      <EnumVal ord="37">T</EnumVal>
      <EnumVal ord="38">W</EnumVal>
      <EnumVal ord="39">Pa</EnumVal>
      <EnumVal ord="41">m²</EnumVal>
      <EnumVal ord="42">m³</EnumVal>
      <EnumVal ord="43">m/s</EnumVal>
      <EnumVal ord="44">m/s²</EnumVal>
      <EnumVal ord="45">m³/s</EnumVal>
      <EnumVal ord="46">m/m³</EnumVal>
      <EnumVal ord="47">M</EnumVal>
      <EnumVal ord="48">kg/m³</EnumVal>
      <EnumVal ord="49">m²/s</EnumVal>
      <EnumVal ord="50">W/m K</EnumVal>
      <EnumVal ord="51">J/K</EnumVal>
      <EnumVal ord="52">ppm</EnumVal>
      <EnumVal ord="53">1/s</EnumVal>
      <EnumVal ord="54">rad/s</EnumVal>
      <EnumVal ord="61">VA</EnumVal>
      <EnumVal ord="62">Watts</EnumVal>
      <EnumVal ord="63">VAr</EnumVal>
      <EnumVal ord="64">phi</EnumVal>
      <EnumVal ord="65">cos(phi)</EnumVal>
      <EnumVal ord="66">Vs</EnumVal>
      <EnumVal ord="67">V²</EnumVal>
      <EnumVal ord="68">As</EnumVal>
      <EnumVal ord="69">A²</EnumVal>
      <EnumVal ord="70">A²t</EnumVal>
      <EnumVal ord="71">VAh</EnumVal>
      <EnumVal ord="72">Wh</EnumVal>
      <EnumVal ord="73">VArh</EnumVal>
      <EnumVal ord="74">V/Hz</EnumVal>
    </EnumType>
      <EnumType id="TmSrcTyp">
      <EnumVal ord="1">Unknown</EnumVal>
      <EnumVal ord="2">SNTP</EnumVal>
      <EnumVal ord="3">PTP</EnumVal>
      <EnumVal ord="4">IRIG-B</EnumVal>
      <EnumVal ord="5">Substation internal</EnumVal>
    </EnumType>
      <EnumType id="TmsSyc">
      <EnumVal ord="1">InternalClock</EnumVal>
      <EnumVal ord="2">LocalAreaClock</EnumVal>
      <EnumVal ord="3">GlobalAreaClock</EnumVal>
    </EnumType>
      <EnumType id="TmSynLkd">
      <EnumVal ord="1">Locked</EnumVal>
      <EnumVal ord="2">Unlocked10s</EnumVal>
      <EnumVal ord="3">Unlocked100s</EnumVal>
      <EnumVal ord="4">Unlocked1000s</EnumVal>
      <EnumVal ord="5">UnlockedMoreThan1000s</EnumVal>
    </EnumType>
  </DataTypeTemplates>
</SCL>
