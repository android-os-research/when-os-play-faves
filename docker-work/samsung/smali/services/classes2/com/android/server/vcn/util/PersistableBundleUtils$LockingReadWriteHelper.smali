.class public Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/util/PersistableBundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockingReadWriteHelper"
.end annotation


# instance fields
.field public final mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field public final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-string v0, "fileName was null"

    .line 337
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFromDisk()Landroid/os/PersistableBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 349
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_38

    if-nez v1, :cond_21

    const/4 v0, 0x0

    .line 358
    :goto_17
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 354
    :cond_21
    :try_start_21
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_38

    .line 355
    :try_start_26
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2e

    .line 356
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_38

    goto :goto_17

    :catchall_2e
    move-exception v0

    .line 354
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    .line 358
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 359
    throw v0
.end method

.method public writeToDisk(Landroid/os/PersistableBundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bundle was null"

    .line 368
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    :try_start_5
    iget-object v0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 377
    :cond_22
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_41

    .line 378
    :try_start_27
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_37

    .line 379
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_41

    .line 381
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_37
    move-exception p1

    .line 377
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    .line 381
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->mDiskLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    throw p1
.end method
