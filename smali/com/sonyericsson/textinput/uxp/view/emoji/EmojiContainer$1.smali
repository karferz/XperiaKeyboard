.class Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;
.super Ljava/lang/Object;
.source "EmojiContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellPressed(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 250
    return-void
.end method

.method public onCellReleased(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 3
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->isExcludedFromDynamic()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getTemporalVariantLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 243
    .local v0, "labelToNote":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->access$200(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->noteUsage(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->access$102(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;Z)Z

    .line 245
    .end local v0    # "labelToNote":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getTemporalVariantLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_0
.end method
