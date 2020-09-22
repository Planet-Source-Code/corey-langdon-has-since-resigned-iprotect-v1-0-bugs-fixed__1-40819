VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Simple IP Masker"
   ClientHeight    =   5205
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4440
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   4440
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4440
      Top             =   5040
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   0
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add New Mask"
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   4815
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Text            =   "IP.frx":0000
      Top             =   360
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
URL = InputBox("What is the Website?")
IP = InputBox("What is the fake ip?")
Text1.Text = Text1.Text + vbCrLf + IP + "  " + URL
End Sub

Private Sub Command2_Click()
MsgBox ("Save as HOSTS in the Windows directory!")
CommonDialog1.Filter = "File (*.*)|*.*"
CommonDialog1.ShowSave
If CommonDialog1.FileName <> "" Then
    Open CommonDialog1.FileName For Output As #1
    Print #1, Text1.Text
    Close #1
End If
End Sub

Private Sub Form_Load()
Text1.Text = Text1.Text + vbCrLf
End Sub

