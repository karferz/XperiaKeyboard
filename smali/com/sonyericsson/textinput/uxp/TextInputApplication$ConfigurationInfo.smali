.class Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;
.super Ljava/lang/Object;
.source "TextInputApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/TextInputApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationInfo"
.end annotation


# instance fields
.field public config:Landroid/content/res/Configuration;

.field public locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;->setAll(Landroid/content/res/Configuration;)V

    .line 317
    return-void
.end method


# virtual methods
.method public setAll(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 320
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;->locale:Ljava/util/Locale;

    .line 321
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;->config:Landroid/content/res/Configuration;

    .line 322
    return-void
.end method
