.class public Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SetupWizardVisualisation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 257
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;->access$700()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 258
    const-string v0, "setup-wizard-visualisation"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 259
    const-string v0, "minimal-input"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 260
    const-string v0, "force-setup-wizard-decision"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;

    const-string v1, "force-setup-wizard-decision"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation;-><init>(Z)V

    return-object v0
.end method
