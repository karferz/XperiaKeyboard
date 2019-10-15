.class public Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "ResourceLookupProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 310
    const-string v0, "floating-keyboard-type"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 312
    const-string v0, "enable-one-handed-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 313
    const-string v0, "enable-numeric-keys"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 318
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    const-string v1, "floating-keyboard-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable-one-handed-keyboard"

    .line 319
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "enable-numeric-keys"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;-><init>(Ljava/lang/String;ZZLcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$1;)V

    return-object v0
.end method
