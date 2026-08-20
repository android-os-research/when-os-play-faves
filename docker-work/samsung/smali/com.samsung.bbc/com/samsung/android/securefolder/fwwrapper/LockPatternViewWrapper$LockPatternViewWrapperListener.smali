.class public interface abstract Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;
.super Ljava/lang/Object;
.source "LockPatternViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LockPatternViewWrapperListener"
.end annotation


# virtual methods
.method public abstract onPatternCellAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onPatternCleared()V
.end method

.method public abstract onPatternDetected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onPatternStart()V
.end method
