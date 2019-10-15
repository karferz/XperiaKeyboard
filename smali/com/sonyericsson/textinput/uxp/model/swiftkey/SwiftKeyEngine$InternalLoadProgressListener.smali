.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;
.super Lcom/touchtype_fluency/util/LoadProgressListener;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalLoadProgressListener"
.end annotation


# instance fields
.field private mCharacterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 3067
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/LoadProgressListener;-><init>()V

    return-void
.end method

.method static synthetic access$4502(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 3067
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mCharacterMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 3067
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 5
    .param p1, "success"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3085
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3087
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3088
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3090
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$3700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3092
    if-eqz p1, :cond_0

    .line 3093
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {v1, v2, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3094
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setDictionariesLoaded(Z)V

    .line 3095
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mCharacterMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    .line 3097
    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mCharacterMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mContext:Landroid/content/Context;

    .line 3096
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/touchtype_fluency/Predictor;Ljava/util/Map;Landroid/content/Context;)V

    .line 3100
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mCharacterMap:Ljava/util/Map;

    .line 3101
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->mContext:Landroid/content/Context;

    .line 3105
    :cond_0
    return-void

    .line 3088
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLoaded(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 3
    .param p1, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "success"    # Z

    .prologue
    .line 3121
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$4200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3123
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3124
    monitor-exit v1

    .line 3129
    :cond_0
    return-void

    .line 3124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
