.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getEmojiBottomRow()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$keys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const v13, 0x7f0f006e

    const v9, 0x7f0f006b

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 900
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v5

    .line 901
    .local v5, "tester":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getEmojiBottomRow()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    move-result-object v3

    .line 903
    .local v3, "emojiBottomRow":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, "bottomRowKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 907
    .local v4, "location":[I
    invoke-virtual {v3, v9}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 908
    .local v7, "toggleView":Landroid/view/View;
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 909
    new-instance v6, Lcom/sonyericsson/textinput/uxp/test/TestKey;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v8, v8, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/test/TestService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    aget v9, v4, v11

    aget v10, v4, v12

    invoke-direct {v6, v8, v9, v10}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Ljava/lang/String;II)V

    .line 911
    .local v6, "toggleKey":Lcom/sonyericsson/textinput/uxp/test/TestKey;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    invoke-virtual {v3, v13}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 914
    .local v2, "deleteView":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 915
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestKey;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v8, v8, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/test/TestService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    aget v9, v4, v11

    aget v10, v4, v12

    invoke-direct {v1, v8, v9, v10}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Ljava/lang/String;II)V

    .line 917
    .local v1, "deleteKey":Lcom/sonyericsson/textinput/uxp/test/TestKey;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->val$keys:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 920
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$12;->jobComplete()V

    .line 921
    return-void
.end method
