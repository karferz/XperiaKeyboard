.class Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;
.super Ljava/lang/Object;
.source "UpgradePersonalizationVisualization.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->createSetupVisualisation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    packed-switch p2, :pswitch_data_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->access$300(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)V

    .line 135
    :cond_0
    return-void

    .line 122
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->access$200(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->access$100(Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
