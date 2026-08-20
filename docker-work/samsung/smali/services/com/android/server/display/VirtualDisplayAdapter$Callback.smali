.class public Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# static fields
.field public static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field public static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field public static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field public final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .registers 3

    .line 687
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 688
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .registers 2

    const/4 v0, 0x0

    .line 711
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDisplayResumed()V
    .registers 2

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dispatchDisplayStopped()V
    .registers 2

    const/4 v0, 0x2

    .line 719
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 694
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto :goto_25

    .line 702
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V

    goto :goto_25

    .line 699
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    goto :goto_25

    .line 696
    :cond_17
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {p0}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception p0

    const-string p1, "VirtualDisplayAdapter"

    const-string v0, "Failed to notify listener of virtual display event."

    .line 706
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method
