.class final Lcom/touchtype_fluency/util/SwiftKeySession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private synthetic b:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->b:Lcom/touchtype_fluency/util/SwiftKeySession;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->b:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->a:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/io/File;)Z

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->b:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->b:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/touchtype_fluency/util/LoadProgressListener;->onLoaded(Lcom/touchtype_fluency/util/LanguagePack;Z)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession$2;->b:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    .line 255
    return-void
.end method
