.class public Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GatedCallback"
.end annotation


# instance fields
.field public mCallback:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mGate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mRun:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 3084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3085
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .registers 3

    .line 3090
    monitor-enter p0

    const/4 v0, 0x1

    .line 3091
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    .line 3092
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 3094
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    move-object v1, v0

    .line 3096
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_17

    if-eqz v1, :cond_16

    .line 3099
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    .line 3096
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public run()V
    .registers 3

    .line 3106
    monitor-enter p0

    const/4 v0, 0x1

    .line 3107
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mRun:Z

    .line 3108
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mGate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 3110
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$PendingIntentSender$GatedCallback;->mCallback:Ljava/lang/Runnable;

    move-object v1, v0

    .line 3112
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_17

    if-eqz v1, :cond_16

    .line 3115
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    .line 3112
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
