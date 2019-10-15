.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$8;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->setDismissListener(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$8;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$8;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 428
    return-void
.end method
