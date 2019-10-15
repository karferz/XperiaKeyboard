.class Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;
.super Ljava/lang/Object;
.source "RemoveDictionaryWordsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->showRemoveWordDialog(Lcom/sonyericsson/ned/model/CodePointString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

.field final synthetic val$word:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->val$word:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->access$000(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;)Lcom/sonyericsson/ned/model/IUserDictionary;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->val$word:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/IUserDictionary;->removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->val$word:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->access$100(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    .line 101
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->access$200(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;

    .line 102
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->access$200(Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009d

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 100
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController;->access$300(Landroid/widget/Toast;)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    return-void
.end method
