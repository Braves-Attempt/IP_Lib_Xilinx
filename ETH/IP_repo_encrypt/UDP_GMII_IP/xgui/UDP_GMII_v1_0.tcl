# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LOCAL_IP_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LOCAL_PORT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TARGET" -parent ${Page_0}


}

proc update_PARAM_VALUE.LOCAL_IP_ADDR { PARAM_VALUE.LOCAL_IP_ADDR } {
	# Procedure called to update LOCAL_IP_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOCAL_IP_ADDR { PARAM_VALUE.LOCAL_IP_ADDR } {
	# Procedure called to validate LOCAL_IP_ADDR
	return true
}

proc update_PARAM_VALUE.LOCAL_PORT { PARAM_VALUE.LOCAL_PORT } {
	# Procedure called to update LOCAL_PORT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOCAL_PORT { PARAM_VALUE.LOCAL_PORT } {
	# Procedure called to validate LOCAL_PORT
	return true
}

proc update_PARAM_VALUE.TARGET { PARAM_VALUE.TARGET } {
	# Procedure called to update TARGET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TARGET { PARAM_VALUE.TARGET } {
	# Procedure called to validate TARGET
	return true
}


proc update_MODELPARAM_VALUE.LOCAL_IP_ADDR { MODELPARAM_VALUE.LOCAL_IP_ADDR PARAM_VALUE.LOCAL_IP_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOCAL_IP_ADDR}] ${MODELPARAM_VALUE.LOCAL_IP_ADDR}
}

proc update_MODELPARAM_VALUE.LOCAL_PORT { MODELPARAM_VALUE.LOCAL_PORT PARAM_VALUE.LOCAL_PORT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOCAL_PORT}] ${MODELPARAM_VALUE.LOCAL_PORT}
}

proc update_MODELPARAM_VALUE.TARGET { MODELPARAM_VALUE.TARGET PARAM_VALUE.TARGET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TARGET}] ${MODELPARAM_VALUE.TARGET}
}

