.class public interface abstract Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;
.super Ljava/lang/Object;
.source "AbstractPreconditionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateChangedListener"
.end annotation


# virtual methods
.method public abstract onChanged(II)V
.end method

.method public abstract onPackageReplaced(Z)V
.end method

.method public abstract onPackageRestarted()V
.end method
