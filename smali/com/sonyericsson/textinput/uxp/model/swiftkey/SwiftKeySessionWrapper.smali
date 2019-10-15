.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;
.super Ljava/lang/Object;
.source "SwiftKeySessionWrapper.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mSession:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0
    .param p1, "swiftKeySession"    # Lcom/touchtype_fluency/util/SwiftKeySession;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 41
    return-void
.end method


# virtual methods
.method public addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/touchtype_fluency/Sequence$Type;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V

    .line 115
    return-void
.end method

.method public addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "messageStart"    # Lcom/touchtype_fluency/Sequence$Type;
    .param p3, "contactId"    # Ljava/lang/String;
    .param p4, "currentFieldHint"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .param p1, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z

    .line 77
    return-void
.end method

.method public createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .param p1, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 92
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 108
    return-void
.end method

.method public getSession()Lcom/touchtype_fluency/Session;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    return-object v0
.end method

.method public loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;)V
    .locals 1
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "loadProgressListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 126
    return-void
.end method

.method public mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 1
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "completionListener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 63
    return-void
.end method

.method public resetTemporaryModel()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 84
    return-void
.end method

.method public setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V
    .locals 1
    .param p1, "exclusionPattern"    # Lcom/touchtype_fluency/util/ExclusionPattern;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V

    .line 55
    return-void
.end method

.method public submitTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public writeDynamicModel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->writeDynamicModel()V

    .line 133
    return-void
.end method
