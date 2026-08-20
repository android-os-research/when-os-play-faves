.class public Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "AnnouncementAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;,
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio2Srv.AnnAggr"


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIsClosed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field public final mLock:Ljava/lang/Object;

.field public final mModuleWatchers:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$monListUpdated(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->onListUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 40
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient-IA;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/IAnnouncementListener;

    iput-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 52
    :try_start_22
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 54
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 125
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 127
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 128
    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->close()V

    goto :goto_1e

    .line 130
    :cond_2e
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 131
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final onListUpdated()V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_10

    const-string p0, "BcRadio2Srv.AnnAggr"

    const-string v1, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    .line 87
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v0

    return-void

    .line 90
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 92
    iget-object v3, v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3e

    goto :goto_1b

    .line 95
    :cond_2d
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {p0, v1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_3e

    goto :goto_3c

    :catch_33
    move-exception p0

    :try_start_34
    const-string v1, "BcRadio2Srv.AnnAggr"

    const-string/jumbo v2, "mListener.onListUpdated() failed: "

    .line 97
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-nez v1, :cond_25

    .line 106
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher-IA;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2b

    .line 109
    :try_start_d
    invoke-virtual {p1, p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_1b
    .catchall {:try_start_d .. :try_end_11} :catchall_2b

    .line 114
    :try_start_11
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V

    .line 115
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    return-void

    :catch_1b
    move-exception p0

    const-string p1, "BcRadio2Srv.AnnAggr"

    const-string p2, "Failed to add announcement listener"

    .line 111
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    monitor-exit v0

    return-void

    .line 104
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_2b
    move-exception p0

    .line 116
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2b

    throw p0
.end method
