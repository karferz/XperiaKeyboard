.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;
.super Ljava/lang/Object;
.source "TabHandler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler$Factory;
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

.field private static final TAB_EVENT:Lcom/sonyericsson/ned/controller/Command;

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v1, "send-tab-event"

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->TAB_EVENT:Lcom/sonyericsson/ned/controller/Command;

    .line 20
    new-array v0, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->TAB_EVENT:Lcom/sonyericsson/ned/controller/Command;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    aput-object v1, v0, v2

    const-class v1, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
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
    .line 32
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
    .line 37
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    if-ne p2, v0, :cond_1

    .line 38
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_0

    .line 40
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    return v0
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
    .line 46
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->TAB_EVENT:Lcom/sonyericsson/ned/controller/Command;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    const/16 v1, 0x3d

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->sendDownUpKeyEvents(I)V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 72
    return-void
.end method
