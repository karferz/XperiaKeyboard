.class public interface abstract Lcom/touchtype_fluency/Predictor;
.super Ljava/lang/Object;
.source "Predictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/Predictor$SearchType;
    }
.end annotation


# virtual methods
.method public abstract clearLayoutKeys()V
.end method

.method public abstract get(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public abstract getCorrections(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public abstract getInputMapper()Lcom/touchtype_fluency/InputMapper;
.end method

.method public abstract getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;
.end method

.method public abstract getKeyPressModel(Ljava/lang/String;)Lcom/touchtype_fluency/KeyPressModel;
.end method

.method public abstract getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;
.end method

.method public abstract getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;
.end method

.method public abstract getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;
.end method

.method public abstract getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMostLikelyLanguage(Lcom/touchtype_fluency/Sequence;)Ljava/lang/String;
.end method

.method public abstract getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;
.end method

.method public abstract getSearchType()Lcom/touchtype_fluency/Predictor$SearchType;
.end method

.method public abstract listKeyPressModels()[Ljava/lang/String;
.end method

.method public abstract queryTerm(Ljava/lang/String;)Z
.end method

.method public abstract queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z
.end method

.method public abstract queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;Ljava/lang/String;)Z
.end method

.method public abstract removeKeyPressModel(Ljava/lang/String;)V
.end method

.method public abstract setLayoutKeys(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSearchType(Lcom/touchtype_fluency/Predictor$SearchType;)V
.end method
