.class Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$1;
.super Ljava/lang/Object;
.source "AccessPersonalizationGuideInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->createSetupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->access$000(Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 101
    :cond_0
    return-void
.end method
