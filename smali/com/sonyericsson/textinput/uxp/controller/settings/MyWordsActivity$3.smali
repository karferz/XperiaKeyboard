.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->addWord(Lcom/sonyericsson/ned/model/CodePointString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

.field final synthetic val$word:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;->val$word:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;->val$word:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$3;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method
