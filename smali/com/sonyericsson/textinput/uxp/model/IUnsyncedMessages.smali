.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;
.super Ljava/lang/Object;
.source "IUnsyncedMessages.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/collaboration/Optional;


# virtual methods
.method public abstract clearDatabase(Landroid/content/Context;)V
.end method

.method public abstract read(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract write(Landroid/content/Context;Ljava/lang/String;)V
.end method
