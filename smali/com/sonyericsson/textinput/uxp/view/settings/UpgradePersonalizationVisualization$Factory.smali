.class public Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "UpgradePersonalizationVisualization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;
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

    .line 181
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization;->access$400()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 182
    const-string v0, "upgrade-visualization"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 183
    return-void
.end method
