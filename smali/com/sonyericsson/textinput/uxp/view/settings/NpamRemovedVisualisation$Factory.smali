.class public Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "NpamRemovedVisualisation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;->access$200()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 210
    const-string v0, "minimal-input"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 211
    const-string v0, "show-npam-removed-notification"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 212
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;

    const-string v1, "show-npam-removed-notification"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation;-><init>(Z)V

    return-object v0
.end method
