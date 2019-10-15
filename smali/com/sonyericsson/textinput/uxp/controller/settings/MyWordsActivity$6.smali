.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->showEditWordAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

.field final synthetic val$editTextField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->val$editTextField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->val$editTextField:Landroid/widget/EditText;

    .line 384
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 385
    .local v0, "newWord":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1200(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/ned/model/IUserDictionary;

    move-result-object v2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v2, v1}, Lcom/sonyericsson/ned/model/IUserDictionary;->removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 393
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->isNoContentString()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$1200(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/ned/model/IUserDictionary;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/ned/model/IUserDictionary;->addWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 395
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->notifyDataSetChanged()V

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$6;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 401
    return-void
.end method
