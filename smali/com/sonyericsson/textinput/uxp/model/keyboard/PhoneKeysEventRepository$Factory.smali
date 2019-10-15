.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "PhoneKeysEventRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 47
    return-void
.end method
