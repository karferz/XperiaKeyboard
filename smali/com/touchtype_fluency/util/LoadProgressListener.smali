.class public abstract Lcom/touchtype_fluency/util/LoadProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 0
    .param p1, "completed"    # Z

    .prologue
    .line 24
    return-void
.end method

.method public onLoaded(Lcom/touchtype_fluency/util/LanguagePack;Z)V
    .locals 0
    .param p1, "language"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "success"    # Z

    .prologue
    .line 16
    return-void
.end method
