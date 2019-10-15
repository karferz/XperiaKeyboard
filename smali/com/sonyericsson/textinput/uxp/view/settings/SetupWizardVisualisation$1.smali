.class Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$1;
.super Ljava/lang/Object;
.source "SetupWizardVisualisation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->initOptional()V
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
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;)Lcom/sonyericsson/ned/controller/IBurstHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "reinitialize"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 112
    return-void
.end method
