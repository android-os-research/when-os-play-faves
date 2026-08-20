.class public abstract Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppTransitionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 2

    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .registers 1

    return-void
.end method

.method public onAppTransitionStartingLocked(ZZJJJ)I
    .registers 9

    const/4 p0, 0x0

    return p0
.end method

.method public onAppTransitionTimeoutLocked()V
    .registers 1

    return-void
.end method
