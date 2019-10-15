.class public Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;
.super Ljava/lang/Object;
.source "VoiceInputController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController$Factory;
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

.field private final mIsVoiceEnabled:Z

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->REQUIRED:[Ljava/lang/Class;

    .line 29
    new-array v0, v2, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "voice-input"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isVoiceEnabled"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->mIsVoiceEnabled:Z

    .line 38
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->REQUIRED:[Ljava/lang/Class;

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
    .line 93
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
    .line 42
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    if-ne p2, v0, :cond_1

    .line 43
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_0

    .line 45
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0
.end method

.method public getAllContent()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f02005c

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "retVal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    const/4 v2, 0x2

    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;-><init>(IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 82
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    invoke-virtual {v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->setKeyPrimaryIcon(I)V

    .line 83
    invoke-virtual {v0, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->setListNormalIcon(I)V

    .line 84
    const v2, 0x7f020055

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->setKeySecondaryIcon(I)V

    .line 85
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->mIsVoiceEnabled:Z

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->enable(Z)V

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v1
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 74
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
    .line 51
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public hasContentToShow()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 61
    const-string v0, "voice-input"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    const-string v1, "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->switchInputMethod(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    .line 65
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
    .line 70
    return-void
.end method
