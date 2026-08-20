.class public interface abstract Landroid/window/OnBackAnimationCallback;
.super Ljava/lang/Object;
.source "OnBackAnimationCallback.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# virtual methods
.method public blacklist onBackCancelled()V
    .registers 1

    .line 60
    return-void
.end method

.method public blacklist onBackProgressed(Landroid/window/BackEvent;)V
    .registers 2
    .param p1, "backEvent"    # Landroid/window/BackEvent;

    .line 55
    return-void
.end method

.method public blacklist onBackStarted()V
    .registers 1

    .line 46
    return-void
.end method
