.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadCancelled(Ljava/lang/String;)V
.end method

.method public abstract onDownloadFailed(Ljava/lang/String;)V
.end method

.method public abstract onDownloadFinished(Ljava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;II)V
.end method
