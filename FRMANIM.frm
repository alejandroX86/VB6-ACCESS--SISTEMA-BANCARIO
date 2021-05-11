VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FRMANIM 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14895
   Icon            =   "FRMANIM.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "FRMANIM.frx":57E2
   ScaleHeight     =   9000
   ScaleWidth      =   14895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer TMRBARR 
      Interval        =   300
      Left            =   120
      Top             =   120
   End
   Begin MSComctlLib.ProgressBar PRBSIS 
      Height          =   495
      Left            =   1440
      TabIndex        =   5
      Top             =   7800
      Width           =   9135
      _ExtentX        =   16113
      _ExtentY        =   873
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   240
      Left            =   120
      TabIndex        =   7
      Top             =   6720
      Width           =   75
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "INICIANDO SISTEMA..... "
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   4920
      TabIndex        =   6
      Top             =   8400
      Width           =   3480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Left            =   120
      TabIndex        =   4
      Top             =   6360
      Width           =   75
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Left            =   120
      TabIndex        =   3
      Top             =   6000
      Width           =   75
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   240
      Left            =   120
      TabIndex        =   2
      Top             =   5640
      Width           =   75
   End
   Begin VB.Label LBLSIS 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   615
      Left            =   3000
      TabIndex        =   0
      Top             =   600
      Width           =   150
   End
   Begin VB.Label LBLB 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   615
      Left            =   2160
      TabIndex        =   1
      Top             =   4440
      Width           =   150
   End
   Begin VB.Image IMGSIS 
      Height          =   2325
      Left            =   12600
      Picture         =   "FRMANIM.frx":25C2D
      Top             =   -120
      Visible         =   0   'False
      Width           =   2835
   End
End
Attribute VB_Name = "FRMANIM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub TMRBARR_Timer()
With PRBSIS
.Value = .Value + 4
If .Value = 100 Then
Unload Me
MDISIS.Show
End If
End With
End Sub
