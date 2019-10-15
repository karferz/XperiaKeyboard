.class public Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "AccessPersonalizationGuideInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;
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

    .line 122
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog;->access$100()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 123
    const-string v0, "force-setup-wizard-decision"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 124
    return-void
.end method
