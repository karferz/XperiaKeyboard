.class public Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;
.super Ljava/lang/Object;
.source "LanguageUpdateController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController$Factory;
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
.field private final mIsAllowingDowloadDictionaryDialog:Z

.field private mLanguageController:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

.field private mTokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isAllowingDowloadDictionaryDialog"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mIsAllowingDowloadDictionaryDialog:Z

    .line 35
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private refreshAndEventualAutoDownload()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mTokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mLanguageController:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    .line 92
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mIsAllowingDowloadDictionaryDialog:Z

    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->refreshAndEventualAutoDownload(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Z)V

    .line 94
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
    .line 44
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
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    if-ne p2, v0, :cond_1

    .line 50
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mLanguageController:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-ne p2, v0, :cond_2

    .line 52
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    goto :goto_0

    .line 53
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    if-ne p2, v0, :cond_3

    .line 54
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mTokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    goto :goto_0

    .line 55
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    if-ne p2, v0, :cond_0

    .line 56
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mTokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    invoke-interface {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 78
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
    .line 39
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mTokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->mTokenProvider:Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    invoke-interface {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->refreshAndEventualAutoDownload()V

    goto :goto_0
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController;->refreshAndEventualAutoDownload()V

    .line 83
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    return-void
.end method
