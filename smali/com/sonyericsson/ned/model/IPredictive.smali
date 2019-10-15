.class public interface abstract Lcom/sonyericsson/ned/model/IPredictive;
.super Ljava/lang/Object;
.source "IPredictive.java"


# virtual methods
.method public abstract getCurrentVietnameseWord(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract getDefaultCandidateIndex()I
.end method

.method public abstract getExactMatch()Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract getNumberOfKeys()I
.end method

.method public abstract getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract getReopenWordPrediction(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
.end method

.method public abstract getVietnameseComposingLength()I
.end method

.method public abstract hasPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
.end method

.method public abstract isDisambiguationCandidate(II)Z
.end method

.method public abstract isExactMatchAvailableInDictionary()Z
.end method

.method public abstract isNewWord(Lcom/sonyericsson/ned/model/CodePointString;)Z
.end method

.method public abstract isPredictionsPending()Z
.end method

.method public abstract isSpellingCandidate(I)Z
.end method

.method public abstract isWordDelimiter(I)Z
.end method

.method public abstract processPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
.end method

.method public abstract registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V
.end method

.method public abstract removeAllIndices()V
.end method

.method public abstract removeLastIndex()I
.end method

.method public abstract setCase(IZ)V
.end method

.method public abstract setPredictionContext(Lcom/sonyericsson/ned/model/CodePointString;)V
.end method

.method public abstract shallAcceptWordBeforeTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
.end method

.method public abstract shallAddSpaceBeforeTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
.end method

.method public abstract unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V
.end method

.method public abstract useSpaceAsWordSeparator()Z
.end method
