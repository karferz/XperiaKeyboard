.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;
.super Ljava/lang/Object;
.source "EmojiUsageDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReadListener"
.end annotation


# virtual methods
.method public abstract onDataReady(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
