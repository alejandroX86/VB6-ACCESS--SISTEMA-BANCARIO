VERSION 5.00
Begin VB.Form FRMOV 
   BackColor       =   &H80000012&
   Caption         =   "MOVIMIENTOS REALIZADOS"
   ClientHeight    =   9645
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15000
   Icon            =   "FORM2.frx":0000
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   Picture         =   "FORM2.frx":57E2
   ScaleHeight     =   9645
   ScaleWidth      =   15000
   WindowState     =   2  'Maximized
   Begin VB.CommandButton CMDSALIR 
      BackColor       =   &H00FFFF00&
      Caption         =   "&SALIR"
      Height          =   975
      Left            =   6840
      Picture         =   "FORM2.frx":1C9ED
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   8040
      Width           =   1455
   End
   Begin VB.CommandButton CMDREG 
      BackColor       =   &H00FFFF00&
      Enabled         =   0   'False
      Height          =   735
      Left            =   2400
      Picture         =   "FORM2.frx":1CE2F
      Style           =   1  'Graphical
      TabIndex        =   16
      ToolTipText     =   "REGISTRAR"
      Top             =   5520
      Width           =   975
   End
   Begin VB.CommandButton CMDCANCELAR 
      BackColor       =   &H00FFFF00&
      Enabled         =   0   'False
      Height          =   735
      Left            =   6960
      Picture         =   "FORM2.frx":1D271
      Style           =   1  'Graphical
      TabIndex        =   15
      ToolTipText     =   "CANCELAR"
      Top             =   5520
      Width           =   975
   End
   Begin VB.Frame FRADATOS2 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   3855
      Left            =   2160
      TabIndex        =   5
      Top             =   3720
      Width           =   6135
      Begin VB.TextBox TXTFEC 
         Height          =   285
         Left            =   840
         Locked          =   -1  'True
         TabIndex        =   14
         Top             =   2640
         Width           =   1455
      End
      Begin VB.TextBox TXTH 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "hh:mm:ss AMPM"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   10250
            SubFormatType   =   4
         EndProperty
         Height          =   285
         Left            =   840
         Locked          =   -1  'True
         TabIndex        =   13
         Top             =   3000
         Width           =   1455
      End
      Begin VB.Frame FRAOPERACION 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   735
         Left            =   1560
         TabIndex        =   9
         Top             =   1680
         Visible         =   0   'False
         Width           =   2295
         Begin VB.TextBox TXTMON 
            Height          =   375
            Left            =   120
            TabIndex        =   10
            Top             =   240
            Width           =   2055
         End
      End
      Begin VB.Frame FRAOP 
         BackColor       =   &H00000000&
         Caption         =   "¿QUE OPERACION DESEA REALIZAR?"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   1215
         Left            =   480
         TabIndex        =   6
         Top             =   360
         Width           =   4455
         Begin VB.OptionButton OPTOP 
            BackColor       =   &H00000000&
            Caption         =   "RETIRO"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFF00&
            Height          =   735
            Index           =   1
            Left            =   2520
            MaskColor       =   &H00FFFFFF&
            Picture         =   "FORM2.frx":1D6B3
            Style           =   1  'Graphical
            TabIndex        =   8
            Top             =   360
            Width           =   1215
         End
         Begin VB.OptionButton OPTOP 
            BackColor       =   &H00000000&
            Caption         =   "DEPOSITO"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFF00&
            Height          =   735
            Index           =   0
            Left            =   840
            MaskColor       =   &H00FFFFFF&
            Picture         =   "FORM2.frx":1DAF5
            Style           =   1  'Graphical
            TabIndex        =   7
            Top             =   360
            Width           =   1215
         End
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "HORA"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   195
         Left            =   120
         TabIndex        =   12
         Top             =   3000
         Width           =   525
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "FECHA"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   195
         Left            =   120
         TabIndex        =   11
         Top             =   2640
         Width           =   570
      End
   End
   Begin VB.CommandButton CMDIT 
      BackColor       =   &H00FFFF00&
      Caption         =   "&INICIAR TRANSACCION"
      Height          =   975
      Left            =   2160
      MaskColor       =   &H00FFFF00&
      Picture         =   "FORM2.frx":1DF37
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   8040
      Width           =   1455
   End
   Begin VB.Frame FRADATOS 
      BackColor       =   &H80000007&
      Enabled         =   0   'False
      Height          =   2775
      Left            =   2160
      TabIndex        =   1
      Top             =   1080
      Width           =   6135
      Begin VB.TextBox TXTNC 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   525
         Left            =   1560
         TabIndex        =   3
         Top             =   1680
         Width           =   2535
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "NRO. DE CUENTA"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFF00&
         Height          =   360
         Left            =   1560
         TabIndex        =   2
         Top             =   840
         Width           =   3375
      End
   End
   Begin VB.Image Image1 
      Height          =   6000
      Left            =   9240
      Picture         =   "FORM2.frx":1E379
      Stretch         =   -1  'True
      Top             =   1560
      Visible         =   0   'False
      Width           =   3075
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "MOVIMIENTOS CAJERO   BANCO DE SAN MIGUEL"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   480
      Width           =   10410
   End
End
Attribute VB_Name = "FRMOV"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' En este formulario se hará uso del "Maestro_Detalle"
' al momento de grabar el movimiento, así como la
' actualización del campo "Monto" ubicado en la Tabla
' "Cuenta"
Public BUS As String
Private Sub CMDCANCELAR_Click()
FRAOP.Enabled = True
End Sub

Private Sub CMDIT_Click()
FRADATOS.Enabled = True
CMDCANCELAR.Enabled = True
MsgBox ("POR FAVOR, INGRESE SU NUMERO DE CUENTA")
TXTNC.SetFocus
End Sub

Private Sub CMDREG_Click()
'Este procedimiento grabará los datos en la tabla
' "Movimientos".
If OPTOP(0).Value = True Then COP = "OP-1"
If OPTOP(1).Value = True Then COP = "OP-2"
CAMPOS = "(NROCTA,CODOPE,MONTOMOV,FECHAMOV,HORAMOV)"
VALORES = "('" + TXTNC + "','" + COP + "', " + TXTMON + " ,#" + TXTFEC + "#,'" + TXTH + "')"
XGRABA = "INSERT INTO MOVIMIENTOS " + CAMPOS + " VALUES " + VALORES
CN.Execute XGRABA
MsgBox ("LA OPERACION SE HA REALIZADO SATISFACTORIAMENTE")
'Este procedimiento actualizará el monto que se encuentra
'en la tabla "Cuenta"
If OPTOP(0).Value = True Then
CAMBIOS = "MONTO= " + BUS + "  +  " + TXTMON + " "
XACT = "UPDATE CUENTA SET " + CAMBIOS + " WHERE NROCTA='" + TXTNC + "'"
CN.Execute XACT
RS.Requery
End If
If OPTOP(1).Value = True Then
CAMBIOS = "MONTO= " + BUS + "  -  " + TXTMON + " "
SQLACT = "UPDATE CUENTA SET " + CAMBIOS + " WHERE NROCTA='" + TXTNC + "'"
CN.Execute SQLACT
RS.Requery
End If
End Sub

Private Sub CMDSALIR_Click()
If MsgBox("¿ESTA SEGURO?", vbYesNo, "SISTEMA BANCARIO") = vbYes Then
   Unload Me
   MDISIS.Show
End If
End Sub

Private Sub Form_Load()
If RS.State = 1 Then RS.Close
SQL = "SELECT*FROM CUENTA"
RS.Open SQL, CN, adOpenDynamic, adLockOptimistic
TXTFEC = Date
TXTH = Time
End Sub

Private Sub OPTOP_Click(Index As Integer)
If OPTOP(0).Value = True Then
FRAOP.Enabled = False
FRAOPERACION.Visible = True
FRAOPERACION.Caption = "MONTO A DEPOSITAR"
Else
FRAOP.Enabled = False
FRAOPERACION.Visible = True
FRAOPERACION.Caption = "MONTO A RETIRAR"
End If
End Sub

Private Sub TXTMON_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
BUS = BUSCARDATONUM("CUENTA", "MONTO", RS(5), 5)
If OPTOP(1).Value = True And BUS > VAL(TXTMON) Then
   MsgBox ("USTED PUEDE REALIZAR LA TRANSACCION")
   CMDREG.Enabled = True
   CMDCANCELAR.Enabled = False
   Else
   MsgBox ("SU CUENTA SOLO POSEE LA CANTIDAD DE " & "S/. " & "$ " & "£ " & BUS)
End If
If OPTOP(0).Value = True Then
   MsgBox ("A CONTINUACION SE REALIZARA EL DEPOSITO")
   CMDREG.Enabled = True
   CMDCANCELAR.Enabled = False
End If
End If
End Sub

Private Sub TXTNC_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Dim CADBUS As String
CADBUS = "NROCTA='" + TXTNC + "'"
RS.MoveFirst
RS.Find CADBUS
If RS.EOF Then
MsgBox ("NO EXISTE SU NUMERO DE CUENTA")
TXTNC = ""
Else
MsgBox ("SU NUMERO DE CUENTA A SIDO ACEPTADA")
FRADATOS2.Enabled = True
TXTNC.Enabled = False
End If
End If
End Sub
