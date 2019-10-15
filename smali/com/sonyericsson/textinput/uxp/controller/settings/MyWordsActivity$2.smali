.class Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;
.super Ljava/lang/Object;
.source "MyWordsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->initView()V
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
    .line 257
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$402(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$502(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;I)I

    .line 263
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$602(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$2;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;->access$800(Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;)V

    .line 265
    return-void
.end method
