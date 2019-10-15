.class Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;
.super Ljava/lang/Object;
.source "SetupWizardVisualisation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$200(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)V

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$400(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
