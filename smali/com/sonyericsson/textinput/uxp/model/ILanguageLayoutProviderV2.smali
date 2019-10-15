.class public interface abstract Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;
.super Ljava/lang/Object;
.source "ILanguageLayoutProviderV2.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;


# virtual methods
.method public abstract findLanguageIso3ForLayoutId(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract findLayoutIdForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomCountryCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getKeyboardLayoutName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLanguageCandidatesId(Ljava/lang/String;)I
.end method

.method public abstract getLanguagePunctuations(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getLanguageSwapPunctuations(Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract getTemplateLayoutXmlId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract hasForcedSecondaryPrints(Ljava/lang/String;)Z
.end method

.method public abstract isSupportedLanguageIso3(Ljava/lang/String;)Z
.end method

.method public abstract isSupportedLayoutId(Ljava/lang/String;)Z
.end method

.method public abstract isTraceAllowedForLanguage(Ljava/lang/String;I)Z
.end method
