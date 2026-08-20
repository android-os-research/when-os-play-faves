.class public abstract Lcom/android/server/location/settings/SettingsStore;
.super Ljava/lang/Object;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/location/settings/SettingsStore$VersionedSettings;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mFile:Landroid/util/AtomicFile;

.field public mInitialized:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FL-gDajWxpcghSfXfrSr3vNQbPw(Lcom/android/server/location/settings/SettingsStore;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/settings/SettingsStore;->lambda$writeLazily$1(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDZmDQA9SWentQWNke5Bb0J8Yeg(Lcom/android/server/location/settings/SettingsStore;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/settings/SettingsStore;->lambda$deleteFile$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private synthetic lambda$deleteFile$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 143
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$writeLazily$1(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 5

    const/4 v0, 0x0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    invoke-interface {p1}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 155
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/settings/SettingsStore;->write(Ljava/io/DataOutput;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    .line 156
    iget-object p1, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_23
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_30

    :catchall_1c
    move-exception p1

    .line 161
    iget-object p0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 162
    throw p1

    :catch_23
    move-exception p1

    .line 158
    iget-object p0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string p0, "LocationManagerService"

    const-string v0, "failure serializing location settings"

    .line 159
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteFile()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 141
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/settings/SettingsStore;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 146
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flushFile()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 134
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 136
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get()Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/settings/SettingsStore;->initializeCache()V

    .line 111
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized initializeCache()V
    .registers 8

    monitor-enter p0

    .line 84
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/settings/SettingsStore;->mInitialized:Z

    if-nez v0, :cond_89

    .line 85
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_8b

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-eqz v0, :cond_5f

    .line 86
    :try_start_12
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_41
    .catchall {:try_start_12 .. :try_end_1d} :catchall_8b

    .line 87
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/location/settings/SettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 88
    invoke-interface {v4}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v4

    if-ge v4, v2, :cond_2f

    move v4, v3

    goto :goto_30

    :cond_2f
    move v4, v1

    :goto_30
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_37

    .line 89
    :try_start_33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_41
    .catchall {:try_start_33 .. :try_end_36} :catchall_8b

    goto :goto_5f

    :catchall_37
    move-exception v4

    .line 86
    :try_start_38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v4
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_8b

    :catch_41
    move-exception v0

    :try_start_42
    const-string v4, "LocationManagerService"

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error reading location settings ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), falling back to defaults"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_8b

    if-nez v0, :cond_87

    .line 97
    :try_start_63
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    new-array v5, v1, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/location/settings/SettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 99
    invoke-interface {v0}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v0

    if-ge v0, v2, :cond_7c

    move v1, v3

    :cond_7c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_7f} :catch_80
    .catchall {:try_start_63 .. :try_end_7f} :catchall_8b

    goto :goto_87

    :catch_80
    move-exception v0

    .line 101
    :try_start_81
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 105
    :cond_87
    :goto_87
    iput-boolean v3, p0, Lcom/android/server/location/settings/SettingsStore;->mInitialized:Z
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_8b

    .line 107
    :cond_89
    monitor-exit p0

    return-void

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onChange(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/DataInput;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized update(Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TT;TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/settings/SettingsStore;->initializeCache()V

    .line 117
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 118
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_32

    if-eqz v1, :cond_19

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_19
    :try_start_19
    iput-object p1, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/SettingsStore$VersionedSettings;

    .line 124
    invoke-interface {p1}, Lcom/android/server/location/settings/SettingsStore$VersionedSettings;->getVersion()I

    move-result v1

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/SettingsStore;->writeLazily(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/settings/SettingsStore;->onChange(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_32

    .line 129
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract write(Ljava/io/DataOutput;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeLazily(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/settings/SettingsStore;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
