.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    }
.end annotation


# static fields
.field public static final ADD_DELAY_BEFORE_SAVE_FOR_TEST:Z = false

.field public static final DEBUG:Z = false

.field public static final SAVE_DELAY_MS_FOR_TEST:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field public final SAVE_WAIT_TIMEOUT_MS:J

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mPendingItems:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunnable:Ljava/lang/Runnable;

.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$-1g27ExM8UzJH_SvMl8E9yZUE78(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->lambda$waitForAllSavesLocked$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTyI8zwnwwg8BpWOL1clEGh2JGE(Lcom/android/server/pm/ShortcutBitmapSaver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 11

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 64
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    .line 80
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 109
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    .line 220
    new-instance v0, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutBitmapSaver;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic lambda$waitForAllSavesLocked$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 120
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 313
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending saves: Num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Executor="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    .line 318
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_30

    .line 321
    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .registers 2

    .line 138
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 139
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 140
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final processPendingItems()Z
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x800

    .line 253
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_84

    .line 254
    :try_start_6
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    .line 255
    monitor-exit v2

    return v3

    .line 257
    :cond_11
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 258
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_81

    .line 260
    :try_start_1a
    iget-object v2, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_84

    .line 263
    :try_start_1c
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_7f

    const/4 v5, 0x1

    if-nez v4, :cond_30

    .line 299
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 304
    :cond_2c
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return v5

    .line 273
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 274
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    .line 273
    invoke-virtual {v4, v6, v2}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v4

    .line 275
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;

    move-result-object v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3e} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_3e} :catch_5f
    .catchall {:try_start_30 .. :try_end_3e} :catchall_7f

    .line 278
    :try_start_3e
    iget-object v3, v3, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_5a

    .line 280
    :try_start_43
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4d} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_4d} :catch_5f
    .catchall {:try_start_43 .. :try_end_4d} :catchall_7f

    .line 299
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_56

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 304
    :cond_56
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return v5

    :catchall_5a
    move-exception v3

    .line 280
    :try_start_5b
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 281
    throw v3
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5f} :catch_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_7f

    :catch_5f
    move-exception v3

    :try_start_60
    const-string v4, "ShortcutService"

    const-string v6, "Unable to write bitmap to file"

    .line 287
    invoke-static {v4, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_72

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_72
    .catchall {:try_start_60 .. :try_end_72} :catchall_7f

    .line 299
    :cond_72
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7b

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 304
    :cond_7b
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return v5

    :catchall_7f
    move-exception v0

    goto :goto_88

    :catchall_81
    move-exception v3

    .line 258
    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_88
    if-eqz v2, :cond_96

    .line 299
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_93

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 304
    :cond_93
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 306
    :cond_96
    throw v0
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    const/4 p0, 0x0

    .line 149
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    const/4 p0, 0x0

    .line 150
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const p0, 0x8a0c

    .line 153
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .registers 10

    .line 160
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_24

    const-string p0, "ShortcutService"

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing icon: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_24
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 175
    :try_start_28
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 176
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 175
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 178
    invoke-static {v1, p2}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3c} :catch_a3
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_3c} :catch_a3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_3c} :catch_a3
    .catchall {:try_start_28 .. :try_end_3c} :catchall_a1

    .line 180
    :try_start_3c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/high16 v4, 0x10000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_9a

    .line 181
    :try_start_43
    invoke-virtual {p2, p3, p4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p3

    if-nez p3, :cond_50

    const-string p3, "ShortcutService"

    const-string p4, "Unable to compress bitmap"

    .line 182
    invoke-static {p3, p4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_50
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 185
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 186
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_90

    .line 187
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_9a

    if-eq p2, v1, :cond_62

    .line 190
    :try_start_5f
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_a3
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_62} :catch_a3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5f .. :try_end_62} :catch_a3
    .catchall {:try_start_5f .. :try_end_62} :catchall_a1

    .line 197
    :cond_62
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/16 p2, 0x808

    .line 200
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p2

    const/4 p4, 0x5

    if-ne p2, p4, :cond_76

    const/16 p2, 0x200

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 208
    :cond_76
    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$PendingItem-IA;)V

    .line 209
    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter p1

    .line 210
    :try_start_7f
    iget-object p3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {p3, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit p1
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_8d

    .line 217
    iget-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_8d
    move-exception p0

    .line 211
    :try_start_8e
    monitor-exit p1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :catchall_90
    move-exception p0

    .line 180
    :try_start_91
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception p1

    :try_start_96
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_99
    throw p0
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception p0

    if-eq p2, v1, :cond_a0

    .line 190
    :try_start_9d
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_a0
    throw p0
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_a3
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_a1} :catch_a3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_a1} :catch_a3
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p0

    goto :goto_af

    :catch_a3
    move-exception p0

    :try_start_a4
    const-string p1, "ShortcutService"

    const-string p2, "Unable to write bitmap to file"

    .line 194
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_a1

    .line 197
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_af
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 198
    throw p0
.end method

.method public waitForAllSavesLocked()Z
    .registers 6

    .line 118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 120
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/pm/ShortcutBitmapSaver$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    .line 123
    :try_start_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 126
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string v0, "Timed out waiting on saving bitmaps."

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    const-string p0, "ShortcutService"

    const-string/jumbo v0, "interrupted"

    .line 128
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 p0, 0x0

    return p0
.end method
