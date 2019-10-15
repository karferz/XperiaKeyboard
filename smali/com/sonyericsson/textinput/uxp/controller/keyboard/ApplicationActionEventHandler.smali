.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;
.super Ljava/lang/Object;
.source "ApplicationActionEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/collaboration/Bindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler$Factory;
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

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 17
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->REQUIRED:[Ljava/lang/Class;

    .line 20
    new-array v0, v2, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "perform-application-action"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->REQUIRED:[Ljava/lang/Class;

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
    .line 51
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
    .line 56
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    if-ne p2, v0, :cond_0

    .line 57
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .line 59
    :cond_0
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 27
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
    .line 63
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v0

    return v0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 47
    return-void
.end method
