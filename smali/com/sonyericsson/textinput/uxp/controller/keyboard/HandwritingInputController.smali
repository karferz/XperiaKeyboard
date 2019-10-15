.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;
.super Ljava/lang/Object;
.source "HandwritingInputController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;
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

.field private static final START_HANDWRITING_EVENT:Lcom/sonyericsson/ned/controller/Command;

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private final mHandwritingInputMethodId:Ljava/lang/String;

.field private mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sonyericsson/ned/controller/Command;

    const-string v1, "start-handwriting"

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->START_HANDWRITING_EVENT:Lcom/sonyericsson/ned/controller/Command;

    .line 22
    new-array v0, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->START_HANDWRITING_EVENT:Lcom/sonyericsson/ned/controller/Command;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 25
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "handwritingInputMethodId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->mHandwritingInputMethodId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->REQUIRED:[Ljava/lang/Class;

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
    .line 38
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
    .line 43
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    if-ne p2, v0, :cond_0

    .line 44
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .line 46
    :cond_0
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 55
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
    .line 50
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->START_HANDWRITING_EVENT:Lcom/sonyericsson/ned/controller/Command;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->match(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController;->mHandwritingInputMethodId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->switchInputMethod(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    .line 69
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
    .line 74
    return-void
.end method
