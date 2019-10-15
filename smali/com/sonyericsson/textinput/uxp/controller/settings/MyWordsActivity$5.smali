.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->showWordAlertDialog()V
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
    .line 347
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 351
    packed-switch p2, :pswitch_data_0

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 364
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1400(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->EDIT_WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$5;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$800(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
