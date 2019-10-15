.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictionaryConfigurationListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEngineFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

.field private final mLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engineFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2906
    .local p3, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2907
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mContext:Landroid/content/Context;

    .line 2908
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mEngineFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .line 2909
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mLanguages:Ljava/util/Set;

    .line 2911
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 2912
    return-void
.end method

.method static synthetic access$2900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mEngineFlow:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;->mLanguages:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public onLanguagePacksConfigured(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .prologue
    .line 2923
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$2300()V

    .line 2924
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2947
    return-void
.end method
