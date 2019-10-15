.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getEmojiLayout()[Lcom/sonyericsson/textinput/uxp/test/TestEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$keys:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;->val$keys:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 823
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->access$300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)Lcom/sonyericsson/textinput/uxp/test/TestHook;

    move-result-object v7

    .line 824
    .local v7, "testHook":Lcom/sonyericsson/textinput/uxp/test/TestHook;
    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/test/TestHook;->getEmojiContainer()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    move-result-object v1

    .line 826
    .local v1, "emojiContainer":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->staticCellsInPage()Ljava/util/List;

    move-result-object v6

    .line 828
    .local v6, "staticCells":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 829
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_5

    .line 830
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .line 831
    .local v0, "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 833
    :cond_0
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->findCellCenterCoordinates(I)Landroid/graphics/Point;

    move-result-object v3

    .line 834
    .local v3, "point":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 836
    .local v4, "rect":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    .line 837
    new-instance v4, Landroid/graphics/Rect;

    .end local v4    # "rect":Landroid/graphics/Rect;
    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Point;->x:I

    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 840
    .restart local v4    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;->val$keys:Ljava/util/ArrayList;

    new-instance v11, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 841
    :goto_1
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-direct {v11, v8, v4, v9}, Lcom/sonyericsson/textinput/uxp/test/TestEmoji;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Z)V

    .line 840
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .restart local v3    # "point":Landroid/graphics/Point;
    .restart local v4    # "rect":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 845
    .end local v0    # "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$10;->jobComplete()V

    .line 846
    return-void
.end method
