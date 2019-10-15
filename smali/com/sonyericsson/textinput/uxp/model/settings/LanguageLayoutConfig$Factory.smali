.class public Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "LanguageLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 923
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->access$2000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 924
    return-void
.end method
