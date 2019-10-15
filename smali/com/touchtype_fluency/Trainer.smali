.class public interface abstract Lcom/touchtype_fluency/Trainer;
.super Ljava/lang/Object;
.source "Trainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/Trainer$ModelFileVersion;
    }
.end annotation


# virtual methods
.method public abstract addSequence(Lcom/touchtype_fluency/Sequence;)V
.end method

.method public abstract addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract addTermMapping(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addTermMapping(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract addToBlacklist(Ljava/lang/String;)V
.end method

.method public abstract clearBlacklist()V
.end method

.method public abstract getBlacklist()Ljava/lang/String;
.end method

.method public abstract getBlacklistedTerms()[Ljava/lang/String;
.end method

.method public abstract getLearnedParameters()Lcom/touchtype_fluency/ParameterSet;
.end method

.method public abstract getNgramCounts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNgramCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/Term;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNovelTerms()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTermCounts()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTermCounts(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TagSelector;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/Term;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTermsFromThreshold(J)[Lcom/touchtype_fluency/Term;
.end method

.method public abstract learnFrom(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public abstract learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V
.end method

.method public abstract learnFrom(Lcom/touchtype_fluency/TouchHistory;[Ljava/lang/String;)V
.end method

.method public abstract learnMappings()V
.end method

.method public abstract learnMappings(Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract learnMappingsFrom(Lcom/touchtype_fluency/Prediction;)V
.end method

.method public abstract learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
.end method

.method public abstract learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract learnMappingsFrom(Lcom/touchtype_fluency/Prediction;Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
.end method

.method public abstract removeFromBlacklist(Ljava/lang/String;)V
.end method

.method public abstract removeTerm(Ljava/lang/String;)V
.end method

.method public abstract removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract removeTerm(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeTerm(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V
.end method

.method public abstract resetLearnedParameters()V
.end method

.method public abstract setBlacklist(Ljava/lang/String;)V
.end method

.method public abstract setParameterLearning(Z)V
.end method

.method public abstract write()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/touchtype_fluency/TagSelector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/touchtype_fluency/TagSelector;Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/touchtype_fluency/Trainer$ModelFileVersion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
