.class final Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;
.super Ljava/lang/Object;
.source "EmojiBottomRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatDelete"
.end annotation


# instance fields
.field private mDeleteKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

.field private final mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

.field private mRepeatCount:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)V
    .locals 0
    .param p1, "emojiBottomRow"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .line 232
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "x2"    # Z

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->rescheduleRepeatTimer(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->cancelRepeatTimer()V

    return-void
.end method

.method private cancelRepeatTimer()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$700(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method private getDelay(Z)I
    .locals 1
    .param p1, "resetCounter"    # Z

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mRepeatCount:I

    .line 243
    const/16 v0, 0x190

    .line 247
    :goto_0
    return v0

    .line 246
    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mRepeatCount:I

    .line 247
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mRepeatCount:I

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PointerStream;->getRepeatInterval(I)I

    move-result v0

    goto :goto_0
.end method

.method private rescheduleRepeatTimer(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "resetCounter"    # Z

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mDeleteKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->cancelRepeatTimer()V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$700(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->getDelay(Z)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mDeleteKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;->access$600(Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->mDeleteKey:Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow$RepeatDelete;->rescheduleRepeatTimer(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V

    .line 238
    return-void
.end method
