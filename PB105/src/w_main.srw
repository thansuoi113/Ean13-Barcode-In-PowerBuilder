$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_addrow from commandbutton within w_main
end type
type st_4 from statictext within w_main
end type
type st_3 from statictext within w_main
end type
type st_2 from statictext within w_main
end type
type st_1 from statictext within w_main
end type
type dw_1 from datawindow within w_main
end type
type cb_close from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2272
integer height = 2064
boolean titlebar = true
string title = "EAN13 Barcode"
boolean controlmenu = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_addrow cb_addrow
st_4 st_4
st_3 st_3
st_2 st_2
st_1 st_1
dw_1 dw_1
cb_close cb_close
end type
global w_main w_main

on w_main.create
this.cb_addrow=create cb_addrow
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.dw_1=create dw_1
this.cb_close=create cb_close
this.Control[]={this.cb_addrow,&
this.st_4,&
this.st_3,&
this.st_2,&
this.st_1,&
this.dw_1,&
this.cb_close}
end on

on w_main.destroy
destroy(this.cb_addrow)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.dw_1)
destroy(this.cb_close)
end on

type cb_addrow from commandbutton within w_main
integer x = 37
integer y = 1056
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "&Add Row"
end type

event clicked;
Long ll_row

ll_row = dw_1.InsertRow(0)
dw_1.SetRow(ll_row)
dw_1.ScrollToRow(ll_row)
dw_1.SetColumn("code_digits")

dw_1.SetFocus()
end event

type st_4 from statictext within w_main
integer x = 73
integer y = 1408
integer width = 2139
integer height = 192
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "To install the font in Windows 10, open the Fonts applet in the Windows Control Panel, then drag/drop the .ttf file into the main area of the Fonts applet. Once installed, the font is available for use. Its name is ~"Code EAN13 Regular~"."
boolean focusrectangle = false
end type

type st_3 from statictext within w_main
integer x = 73
integer y = 1760
integer width = 2139
integer height = 208
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "These values are concatenated and translated by the ~"f_ean13_encode~" global function to a sequence of code points within the EAN 13 font, via an expression in a DataWindow computed field."
boolean focusrectangle = false
end type

type st_2 from statictext within w_main
integer x = 73
integer y = 1632
integer width = 2139
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "The code digits column must contain 12 digits [0-9 only]."
boolean focusrectangle = false
end type

type st_1 from statictext within w_main
integer x = 73
integer y = 1216
integer width = 2139
integer height = 132
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "You MUST install the EAN 13 TrueType font included in the zip file with this sample application in order to be able to display EAN 13 barcodes."
boolean focusrectangle = false
end type

type dw_1 from datawindow within w_main
integer x = 37
integer width = 2194
integer height = 1024
integer taborder = 10
string title = "none"
string dataobject = "d_ean13_barcode"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;
// To create a barcode, perform the steps listed below:

/*
Long ll_row

ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,"code_digits","00000000000") // 12 digits [0-9]
*/
end event

type cb_close from commandbutton within w_main
integer x = 1829
integer y = 1056
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "&Close"
end type

event clicked;
Close(Parent)
end event

