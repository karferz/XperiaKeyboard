.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;->dictionaryReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    .line 122
    return-void
.end method
