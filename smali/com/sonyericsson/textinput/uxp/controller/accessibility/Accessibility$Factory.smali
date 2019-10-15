.class public Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "Accessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 265
    const-string v0, "explore-by-touch"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 266
    const-string v0, "obscured.password"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 267
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;

    const-string v1, "obscured.password"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility;-><init>(Z)V

    return-object v0
.end method
