.class public interface abstract Lcom/touchtype_fluency/util/Storage;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(Ljava/io/File;)V
.end method

.method public abstract fileExists(Ljava/io/File;)Z
.end method

.method public abstract getLanguageDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getPreinstallDirectory()Ljava/io/File;
.end method

.method public abstract getTempDirectory()Ljava/io/File;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract loadConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
