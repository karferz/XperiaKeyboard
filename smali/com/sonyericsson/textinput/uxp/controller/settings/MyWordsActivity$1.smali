.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dictionaryReady()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
