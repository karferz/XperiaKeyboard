.class final Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;
.super Ljava/lang/Object;
.source "EmojiUsageTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmojiUsageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;-><init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)I
    .locals 5
    .param p1, "cell1"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .param p2, "cell2"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$100(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$100(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/Map;

    move-result-object v2

    .line 374
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    .local v0, "cell1Count":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$100(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$100(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/Map;

    move-result-object v2

    .line 376
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 378
    .local v1, "cell2Count":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 379
    const/4 v3, -0x1

    .line 390
    :cond_0
    :goto_2
    return v3

    .end local v0    # "cell1Count":I
    .end local v1    # "cell2Count":I
    :cond_1
    move v0, v3

    .line 374
    goto :goto_0

    .restart local v0    # "cell1Count":I
    :cond_2
    move v1, v3

    .line 376
    goto :goto_1

    .line 382
    .restart local v1    # "cell2Count":I
    :cond_3
    if-le v0, v1, :cond_4

    .line 383
    const/4 v3, 0x1

    goto :goto_2

    .line 386
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->compareTo(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v3

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 370
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    check-cast p2, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;->compare(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)I

    move-result v0

    return v0
.end method
