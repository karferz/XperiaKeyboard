.class public Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;
.super Ljava/lang/Object;
.source "SwapPunctuationHintVisualisation.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/ned/model/ISwapPunctuationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;,
        Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;
    }
.end annotation


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
.field private mContext:Landroid/content/Context;

.field private mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

.field private final mMaxTimes:I

.field private mNumberConsecutive:I

.field private mPreviousCommittedText:Lcom/sonyericsson/ned/model/CodePointString;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mShownNumber:I

.field private mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

.field private mSwapProvider:Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxTimes"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mMaxTimes:I

    .line 41
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private increaseHintShownCount()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 49
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mShownNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mShownNumber:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setSwapPunctuationHintCounter(I)V

    .line 50
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 51
    return-void
.end method

.method private showHint()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mContext:Landroid/content/Context;

    const v1, 0x7f070099

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mToast:Landroid/widget/Toast;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->increaseHintShownCount()V

    .line 69
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
    .line 77
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 82
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 83
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mContext:Landroid/content/Context;

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_2

    .line 85
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 86
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

    if-ne p2, v0, :cond_0

    .line 87
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mSwapProvider:Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 45
    return-void
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
    .line 93
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSwapPunctuationHintCounter()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mShownNumber:I

    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 57
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mPreviousCommittedText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 58
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 59
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    if-ne v0, v1, :cond_0

    .line 152
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    goto :goto_0
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 133
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p4, v0}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mPreviousCommittedText:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 135
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mPreviousCommittedText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p4, v0}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    goto :goto_0

    .line 140
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 141
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 144
    :cond_2
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mPreviousCommittedText:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->swapPunctuationAvoided()V

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mSwapProvider:Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

    invoke-interface {v0, p4}, Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;->isSwapPunctuation(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    if-ne v0, v1, :cond_2

    .line 116
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 119
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 127
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 171
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mSwapProvider:Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;

    invoke-interface {v0, p4}, Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;->isSwapPunctuation(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    goto :goto_0
.end method

.method public onSwap()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mNumberConsecutive:I

    .line 176
    return-void
.end method

.method public swapPunctuationAvoided()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mPreviousCommittedText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 98
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mInsertedText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 99
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mShownNumber:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mMaxTimes:I

    if-ge v0, v1, :cond_1

    .line 100
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mNumberConsecutive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mNumberConsecutive:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->showHint()V

    .line 103
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;->mState:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 105
    :cond_1
    return-void
.end method
