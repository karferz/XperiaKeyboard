.class public interface abstract Lcom/touchtype_fluency/util/ProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_THRESHOLD:J


# virtual methods
.method public abstract getInsufficientStorageThreshold()J
.end method

.method public abstract onComplete(Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;)V
.end method

.method public abstract onProgress(II)V
.end method
