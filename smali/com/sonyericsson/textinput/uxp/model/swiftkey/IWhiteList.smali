.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;
.super Ljava/lang/Object;
.source "IWhiteList.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# virtual methods
.method public abstract clearDatabase(Landroid/content/Context;)V
.end method

.method public abstract getAllWords(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract hasWord(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract putWord(Landroid/content/Context;Ljava/lang/String;)V
.end method
