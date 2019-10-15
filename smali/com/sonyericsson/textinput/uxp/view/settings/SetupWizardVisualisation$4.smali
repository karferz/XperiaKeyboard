.class Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;
.super Ljava/lang/Object;
.source "SetupWizardVisualisation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->createSetupVisualisation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$500(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$200(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$4;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$600(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->show()V

    .line 178
    :cond_0
    return-void
.end method
