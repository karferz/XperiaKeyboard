.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;
.super Ljava/lang/Object;
.source "IXKeyContentProvider.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Optional;


# virtual methods
.method public abstract getAllContent()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasContentToShow()Z
.end method
