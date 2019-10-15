.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getEmojiTabs()[Lcom/sonyericsson/textinput/uxp/test/TestKey;
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
    .line 861
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 864
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v5

    .line 865
    .local v5, "tester":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getEmojiContainer()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->getEmojiTabView()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;

    move-result-object v1

    .line 867
    .local v1, "emojiTabView":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v4, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 870
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 871
    .local v0, "child":Landroid/view/View;
    instance-of v6, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    if-eqz v6, :cond_0

    .line 873
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 874
    .local v3, "location":[I
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 876
    new-instance v6, Lcom/sonyericsson/textinput/uxp/test/TestKey;

    const-string v7, ""

    const/4 v8, 0x0

    aget v8, v3, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    .end local v3    # "location":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;->val$keys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 882
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$11;->jobComplete()V

    .line 883
    return-void
.end method
