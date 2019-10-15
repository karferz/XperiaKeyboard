.class public Lcom/sonyericsson/textinput/uxp/test/TestHook;
.super Ljava/lang/Object;
.source "TestHook.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/ned/model/ILoadDictionaryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;
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

.field private static sInstance:Lcom/sonyericsson/textinput/uxp/test/TestHook;


# instance fields
.field private mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

.field private mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

.field private final mDictionaries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

.field private mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

.field private mHasPredictiveEngine:Z

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mLanguageController:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mDictionaries:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sonyericsson/textinput/uxp/test/TestHook;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->sInstance:Lcom/sonyericsson/textinput/uxp/test/TestHook;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/test/TestHook;)Lcom/sonyericsson/textinput/uxp/test/TestHook;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestHook;

    .prologue
    .line 26
    sput-object p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->sInstance:Lcom/sonyericsson/textinput/uxp/test/TestHook;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/test/TestHook;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestHook;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mHasPredictiveEngine:Z

    return p1
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
    .line 72
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
    .line 49
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    if-ne p2, v0, :cond_1

    .line 50
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-ne p2, v0, :cond_2

    .line 52
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    goto :goto_0

    .line 53
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_3

    .line 54
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 55
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_4

    .line 56
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 57
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    if-ne p2, v0, :cond_5

    .line 58
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    goto :goto_0

    .line 59
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    if-ne p2, v0, :cond_6

    .line 60
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    goto :goto_0

    .line 61
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    if-ne p2, v0, :cond_7

    .line 62
    check-cast p1, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    goto :goto_0

    .line 63
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_8

    .line 64
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mLanguageController:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    goto :goto_0

    .line 65
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_8
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    if-ne p2, v0, :cond_0

    .line 66
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    goto :goto_0
.end method

.method public getCandidateBarController()Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mCandidateBarController:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    return-object v0
.end method

.method public getCandidateView()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    return-object v0
.end method

.method public getCurrentShiftState()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getCurrentCase()I

    move-result v0

    return v0
.end method

.method public getEmojiBottomRow()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mEmojiBottomRow:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiBottomRow;

    return-object v0
.end method

.method public getEmojiContainer()Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mEmojiContainer:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiContainer;

    return-object v0
.end method

.method public getKeyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    return-object v0
.end method

.method public getLanguageController()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mLanguageController:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    return-object v0
.end method

.method public getLanguageLayoutProvider()Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    return-object v0
.end method

.method public getLoadedLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mDictionaries:Ljava/util/Set;

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
    .line 77
    sget-object v0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPersistentSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method public hasPredictiveEngine()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mHasPredictiveEngine:Z

    return v0
.end method

.method public onDictionariesLoaded(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "dictionaries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mDictionaries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestHook;->mDictionaries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 112
    return-void
.end method
