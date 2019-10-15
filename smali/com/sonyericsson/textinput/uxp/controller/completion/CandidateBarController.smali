.class public Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
.super Ljava/lang/Object;
.source "CandidateBarController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;
.implements Lcom/sonyericsson/ned/controller/INextWordPredictionListener;
.implements Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;
.implements Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;,
        Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;,
        Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;
    }
.end annotation


# static fields
.field public static final COMMAND_REMOVE_CANDIDATE_NAME:Ljava/lang/String; = "remove-candidate"

.field private static final DEBUG:Z = false

.field private static final DO_DEBUG:Z = false

.field public static final LONG_PRESS_TIMEOUT:I = 0x1f4

.field public static final MIN_TEXT_SIZE_SCALE:F = 0.7f

.field public static final NO_INDEX:I = -0x1

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

.field private mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

.field private mExploreByTouch:Z

.field private mIsAllowedToBeShown:Z

.field private mIsPredictionActivated:Z

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mLanguageSettings:Lcom/sonyericsson/ned/model/ILanguageController;

.field public mOrientation:I

.field private mShowPredictionCandidates:Z

.field private mSource:Ljava/lang/Object;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->REQUIRED:[Ljava/lang/Class;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mShowPredictionCandidates:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsAllowedToBeShown:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsPredictionActivated:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mExploreByTouch:Z

    return p1
.end method

.method private getDirection()I
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mLanguageSettings:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getDirection(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isCandidateViewAccessManagerValid()Z
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    if-nez v1, :cond_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 158
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mSource:Ljava/lang/Object;

    .line 162
    :cond_1
    return v0

    .line 157
    .end local v0    # "isValid":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeCandidates()V
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mSource:Ljava/lang/Object;

    .line 104
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getDirection()I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->UNDEFINED:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;-><init>([Lcom/sonyericsson/ned/model/CodePointString;IIIILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 104
    invoke-virtual {v7, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 108
    :cond_0
    return-void
.end method

.method private setCandidateBarVisibility()V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsPredictionActivated:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->removeCandidates()V

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsAllowedToBeShown:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private startSelection(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->startSelection(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 123
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
    .line 77
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    if-ne p2, v0, :cond_1

    .line 78
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    if-ne p2, v0, :cond_2

    .line 80
    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .end local p1    # "instance":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    goto :goto_0

    .line 87
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_3

    .line 88
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    goto :goto_0

    .line 89
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_4

    .line 90
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mLanguageSettings:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 91
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_0

    .line 92
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->dispose()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    .line 253
    :cond_0
    return-void
.end method

.method public getCandidateListSource()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mSource:Ljava/lang/Object;

    return-object v0
.end method

.method public getCandidateViewContainer()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewContainer:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

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
    .line 98
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mExploreByTouch:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->setExploreByTouch(Z)V

    .line 239
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->removeCandidates()V

    .line 241
    :cond_0
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public isPredictionActivated()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsPredictionActivated:Z

    return v0
.end method

.method public onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 116
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->startSelection(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 117
    return-void
.end method

.method public onCandidatesCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 112
    return-void
.end method

.method public onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 8
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "stemCharsLength"    # I
    .param p3, "composingCandidateIndex"    # I
    .param p4, "defaultCandidateIndex"    # I
    .param p5, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "cursorPos"    # I
    .param p7, "nbrCorrectionCandidates"    # I
    .param p8, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mShowPredictionCandidates:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mSource:Ljava/lang/Object;

    .line 134
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getDirection()I

    move-result v4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 136
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    move-object v1, p5

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;-><init>([Lcom/sonyericsson/ned/model/CodePointString;IIIILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 134
    invoke-virtual {v7, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->setCandidateBarVisibility()V

    .line 140
    :cond_0
    return-void
.end method

.method public onInputViewFinished()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsAllowedToBeShown:Z

    .line 204
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->setCandidateBarVisibility()V

    .line 205
    return-void
.end method

.method public onInputViewStarted()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mIsAllowedToBeShown:Z

    .line 198
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->setCandidateBarVisibility()V

    .line 199
    return-void
.end method

.method public onNewExternalSuggestions(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 8
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v2, -0x1

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mSource:Ljava/lang/Object;

    .line 146
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getDirection()I

    move-result v4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    sget-object v6, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->EXTERNAL:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;-><init>([Lcom/sonyericsson/ned/model/CodePointString;IIIILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 146
    invoke-virtual {v7, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->setCandidateBarVisibility()V

    .line 151
    :cond_0
    return-void
.end method

.method public onNextWordSelected(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->removeCandidates()V

    .line 233
    return-void
.end method

.method public onNextWordSelectionStarted(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 8
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "defaultCandidateIndex"    # I

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mShowPredictionCandidates:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->isCandidateViewAccessManagerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mSource:Ljava/lang/Object;

    .line 217
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mCandidateViewAccess:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    const/4 v2, -0x1

    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->getDirection()I

    move-result v4

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 219
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    sget-object v6, Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;->NEXT_WORDS:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    move-object v1, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;-><init>([Lcom/sonyericsson/ned/model/CodePointString;IIIILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V

    .line 217
    invoke-virtual {v7, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 220
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->setCandidateBarVisibility()V

    .line 223
    :cond_0
    return-void
.end method

.method public onRemoveNextWords(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->removeCandidates()V

    .line 228
    return-void
.end method
