.class public Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;
.super Ljava/lang/Object;
.source "EmojiSelectionHandler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/textinput/uxp/view/grid/PagedGridView$CellEventListener;


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mCursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

.field private mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fireOnFeedback()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    if-eqz v1, :cond_0

    .line 110
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 111
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;->onFeedback()V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    if-ne p2, v0, :cond_0

    .line 64
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mFeedbackListeners:[Lcom/sonyericsson/textinput/uxp/controller/IFeedbackListener;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-ne p2, v0, :cond_2

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    .line 56
    :cond_0
    :goto_0
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_1

    .line 57
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    .line 59
    :cond_1
    return-void

    .line 50
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_3

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/sonyericsson/ned/controller/ICursor;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 52
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    goto :goto_0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public onCellPressed(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->fireOnFeedback()V

    .line 78
    return-void
.end method

.method public onCellReleased(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 9
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    const/4 v8, 0x1

    .line 82
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 84
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 85
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    invoke-direct {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 86
    .local v1, "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    .line 87
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v8}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    .line 89
    .local v2, "spaceAfterCursor":Z
    if-eqz v2, :cond_1

    .line 90
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mCursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v4}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/controller/ICursor;->setPosition(I)V

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v5, 0x0

    new-instance v6, Lcom/sonyericsson/ned/controller/Command;

    const-string v7, "toggle-keyboard-mode"

    invoke-direct {v6, v7}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    new-instance v5, Lcom/sonyericsson/ned/controller/Command;

    const-string v6, "hide-emojis"

    invoke-direct {v5, v6}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 106
    .end local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    .end local v2    # "spaceAfterCursor":Z
    :cond_0
    :goto_1
    return-void

    .line 92
    .restart local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    .restart local v2    # "spaceAfterCursor":Z
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    goto :goto_0

    .line 97
    .end local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    .end local v2    # "spaceAfterCursor":Z
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getTemporalVariantLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getTemporalVariantLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 101
    .local v0, "cellLabel":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_2
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    invoke-direct {v3, v0, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;-><init>(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    invoke-direct {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;-><init>(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 103
    .restart local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiSelectionHandler;->mKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;

    invoke-interface {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/OnVirtualKeyboardActionListener;->onRelease(Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;)V

    goto :goto_1

    .line 99
    .end local v0    # "cellLabel":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "pointEventContainer":Lcom/sonyericsson/textinput/uxp/model/keyboard/PointEventContainer;
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getVisualLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getVisualLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    goto :goto_2
.end method
