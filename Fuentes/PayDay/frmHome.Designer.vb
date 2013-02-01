<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmHome
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.butReportes = New System.Windows.Forms.Button()
        Me.butAjustes = New System.Windows.Forms.Button()
        Me.butPlanilla = New System.Windows.Forms.Button()
        Me.butColaboradores = New System.Windows.Forms.Button()
        Me.tipHome = New System.Windows.Forms.ToolTip(Me.components)
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.butReportes)
        Me.Panel1.Controls.Add(Me.butAjustes)
        Me.Panel1.Controls.Add(Me.butPlanilla)
        Me.Panel1.Controls.Add(Me.butColaboradores)
        Me.Panel1.Location = New System.Drawing.Point(12, 12)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(396, 424)
        Me.Panel1.TabIndex = 1
        '
        'butReportes
        '
        Me.butReportes.BackColor = System.Drawing.Color.DeepSkyBlue
        Me.butReportes.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butReportes.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butReportes.ForeColor = System.Drawing.Color.White
        Me.butReportes.Image = Global.PayDay.My.Resources.Resources.orderhistory64
        Me.butReportes.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butReportes.Location = New System.Drawing.Point(214, 28)
        Me.butReportes.Name = "butReportes"
        Me.butReportes.Size = New System.Drawing.Size(133, 102)
        Me.butReportes.TabIndex = 3
        Me.butReportes.Text = "Reportes"
        Me.butReportes.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.tipHome.SetToolTip(Me.butReportes, "Imprima Documentación y Reportes")
        Me.butReportes.UseVisualStyleBackColor = False
        '
        'butAjustes
        '
        Me.butAjustes.BackColor = System.Drawing.Color.DeepSkyBlue
        Me.butAjustes.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butAjustes.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butAjustes.ForeColor = System.Drawing.Color.White
        Me.butAjustes.Image = Global.PayDay.My.Resources.Resources.ProcessAccept64
        Me.butAjustes.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butAjustes.Location = New System.Drawing.Point(27, 308)
        Me.butAjustes.Name = "butAjustes"
        Me.butAjustes.Size = New System.Drawing.Size(133, 102)
        Me.butAjustes.TabIndex = 2
        Me.butAjustes.Text = "Ajustes"
        Me.butAjustes.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.tipHome.SetToolTip(Me.butAjustes, "Ajustes Generales del Sistema")
        Me.butAjustes.UseVisualStyleBackColor = False
        '
        'butPlanilla
        '
        Me.butPlanilla.BackColor = System.Drawing.Color.DeepSkyBlue
        Me.butPlanilla.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butPlanilla.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butPlanilla.ForeColor = System.Drawing.Color.White
        Me.butPlanilla.Image = Global.PayDay.My.Resources.Resources.calendar_selection_day64
        Me.butPlanilla.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butPlanilla.Location = New System.Drawing.Point(27, 168)
        Me.butPlanilla.Name = "butPlanilla"
        Me.butPlanilla.Size = New System.Drawing.Size(133, 102)
        Me.butPlanilla.TabIndex = 1
        Me.butPlanilla.Text = "Día de Pago"
        Me.butPlanilla.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.tipHome.SetToolTip(Me.butPlanilla, "Ejecución de Pagos")
        Me.butPlanilla.UseVisualStyleBackColor = False
        '
        'butColaboradores
        '
        Me.butColaboradores.BackColor = System.Drawing.Color.DeepSkyBlue
        Me.butColaboradores.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butColaboradores.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butColaboradores.ForeColor = System.Drawing.Color.White
        Me.butColaboradores.Image = Global.PayDay.My.Resources.Resources.Accept_Male_User64
        Me.butColaboradores.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butColaboradores.Location = New System.Drawing.Point(27, 28)
        Me.butColaboradores.Name = "butColaboradores"
        Me.butColaboradores.Size = New System.Drawing.Size(133, 102)
        Me.butColaboradores.TabIndex = 0
        Me.butColaboradores.Text = "Colaboradores"
        Me.butColaboradores.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.tipHome.SetToolTip(Me.butColaboradores, "Agregue, Edite y Consulte Colaboradores")
        Me.butColaboradores.UseVisualStyleBackColor = False
        '
        'frmHome
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(702, 457)
        Me.Controls.Add(Me.Panel1)
        Me.Font = New System.Drawing.Font("Segoe UI Light", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmHome"
        Me.Text = "Inicio"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents butColaboradores As System.Windows.Forms.Button
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents butPlanilla As System.Windows.Forms.Button
    Friend WithEvents butAjustes As System.Windows.Forms.Button
    Friend WithEvents butReportes As System.Windows.Forms.Button
    Friend WithEvents tipHome As System.Windows.Forms.ToolTip

End Class
