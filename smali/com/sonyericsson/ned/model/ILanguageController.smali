.class public interface abstract Lcom/sonyericsson/ned/model/ILanguageController;
.super Ljava/lang/Object;
.source "ILanguageController.java"


# static fields
.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1


# virtual methods
.method public abstract getActiveLanguageIso3s()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveLanguages()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryLanguageIso3()Ljava/lang/String;
.end method

.method public abstract getPrimaryLanguageLocale()Ljava/util/Locale;
.end method

.method public abstract getPrimaryLayoutId()Ljava/lang/String;
.end method
