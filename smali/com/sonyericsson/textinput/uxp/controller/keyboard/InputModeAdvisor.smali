.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;
.super Ljava/lang/Object;
.source "InputModeAdvisor.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;
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
.field private mCurrentMode:Ljava/lang/String;

.field private mInputModeAdvisorListeners:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

.field private mIsEmojiMode:Z

.field private mOtherMode:Ljava/lang/String;

.field private final mStateMachine:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;

.field private final mTriggers:[Ljava/lang/String;

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "inputMethod"    # Ljava/lang/String;
    .param p3, "triggers"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    .line 35
    const-string v0, "input-mode-symbols"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "input-mode-text"

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mOtherMode:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mTriggers:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "toggle-keyboard-mode"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "pending-symbols-mode"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "drag-select-symbols-mode"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "command-key-released"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "show-emojis"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "hide-emojis"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 45
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;

    invoke-direct {v0, p2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mStateMachine:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;

    .line 46
    return-void

    .line 35
    :cond_0
    const-string v0, "input-mode-symbols"

    goto :goto_0
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private changeCurrentInputMode()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    .line 104
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mOtherMode:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mOtherMode:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->fireOnInputModeAdvice(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private fireOnInputModeAdvice(Ljava/lang/String;)V
    .locals 4
    .param p1, "advice"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mInputModeAdvisorListeners:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 163
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;->onInputModeAdvice(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;
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
    .line 54
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

    if-ne p2, v0, :cond_0

    .line 55
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mInputModeAdvisorListeners:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mInputModeAdvisorListeners:[Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
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
    .line 50
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0xa

    return v0
.end method

.method public getCurrentInputMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    return-object v0
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
    .line 63
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 3
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string v2, "show-emojis"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mIsEmojiMode:Z

    .line 87
    :goto_0
    return v1

    .line 76
    :cond_0
    const-string v2, "hide-emojis"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mIsEmojiMode:Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mStateMachine:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->parseEvent(Lcom/sonyericsson/ned/controller/EventObject;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;

    move-result-object v0

    .line 83
    .local v0, "stateChange":Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->isChangeInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->changeCurrentInputMode()V

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState$InputModeChange;->isHandledEvent()Z

    move-result v1

    goto :goto_0
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 138
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 114
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mIsEmojiMode:Z

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v1, "input-mode-symbols"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mStateMachine:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeState;->isAllowSpace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->mTriggers:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 126
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p4, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->changeCurrentInputMode()V

    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 169
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 144
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 159
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 155
    return-void
.end method
