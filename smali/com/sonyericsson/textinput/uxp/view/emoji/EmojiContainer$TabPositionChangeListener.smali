.class final Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;
.super Ljava/lang/Object;
.source "EmojiContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabPositionChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$1;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)V

    return-void
.end method


# virtual methods
.method public getLatestTabPositionChange()Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;->values()[Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->access$400(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public onEmojiTabPositionChange(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V
    .locals 2
    .param p1, "tabPosition"    # Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    .prologue
    .line 547
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer$TabPositionChangeListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;)Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView;->scrollToPage(I)V

    .line 549
    return-void
.end method
