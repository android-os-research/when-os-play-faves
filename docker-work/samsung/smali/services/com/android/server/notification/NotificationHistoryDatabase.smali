.class public Lcom/android/server/notification/NotificationHistoryDatabase;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_HISTORY_DELETION:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final DEFAULT_CURRENT_VERSION:I = 0x1

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final HISTORY_RETENTION_DAYS:I = 0x1

.field public static final HISTORY_RETENTION_MS:I = 0x5265c00

.field public static final INVALID_FILE_TIME_MS:J = -0x1L

.field public static final REQUEST_CODE_DELETION:I = 0x1

.field public static final SCHEME_DELETION:Ljava/lang/String; = "delete"

.field public static final TAG:Ljava/lang/String; = "NotiHistoryDatabase"

.field public static final WRITE_BUFFER_INTERVAL_MS:J = 0x124f80L


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mBuffer:Landroid/app/NotificationHistory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentVersion:I

.field public final mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

.field public final mFileWriteHandler:Landroid/os/Handler;

.field public final mHistoryDir:Ljava/io/File;

.field public final mHistoryFiles:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mVersionFile:Ljava/io/File;

.field public final mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;


# direct methods
.method public static synthetic $r8$lambda$WusY7wQm1vEW3s6f_GskFVqUAnM(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->lambda$indexFilesLocked$0(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoryDir(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleDeletion(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/io/File;JI)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetACTION_HISTORY_DELETION()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 61
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CLEANUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 383
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$1;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    .line 92
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 p1, 0x1

    .line 93
    iput p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    .line 94
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 95
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "version"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    .line 96
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "history"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    .line 97
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    .line 98
    new-instance p1, Landroid/app/NotificationHistory;

    invoke-direct {p1}, Landroid/app/NotificationHistory;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 99
    new-instance p1, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    return-void
.end method

.method public static synthetic lambda$indexFilesLocked$0(Ljava/io/File;Ljava/io/File;)I
    .registers 4

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide p0

    .line 140
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 354
    :try_start_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 355
    invoke-static {v0, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_10
    .catchall {:try_start_1 .. :try_end_8} :catchall_e

    if-eqz v0, :cond_d

    .line 361
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    goto :goto_30

    :catch_10
    move-exception p1

    :try_start_11
    const-string p2, "NotiHistoryDatabase"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    throw p1
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_e

    :goto_30
    if-eqz v0, :cond_35

    .line 361
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 363
    :cond_35
    throw p0
.end method

.method public static safeParseLong(Ljava/lang/String;)J
    .registers 3

    .line 377
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    :catch_5
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, p1}, Landroid/app/NotificationHistory;->addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 196
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 197
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    const-wide/32 v1, 0x124f80

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final checkVersionAndBuildLocked()V
    .registers 4

    .line 150
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_22

    .line 151
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    .line 152
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    goto :goto_23

    :catchall_18
    move-exception v1

    .line 150
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    :try_start_1e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    const/4 v1, 0x0

    .line 156
    :goto_23
    iget v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    if-eq v1, v0, :cond_68

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 157
    :try_start_2f
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3b} :catch_5a

    .line 158
    :try_start_3b
    iget p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 159
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_50

    .line 161
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5a

    goto :goto_68

    :catchall_50
    move-exception p0

    .line 157
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v0

    :try_start_56
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw p0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p0

    const-string v0, "NotiHistoryDatabase"

    const-string v1, "Failed to write new version"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_68
    :goto_68
    return-void
.end method

.method public deleteConversations(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/util/Set;)V

    .line 184
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final deleteFile(Landroid/util/AtomicFile;)V
    .registers 4

    .line 309
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_22
    invoke-virtual {p1}, Landroid/util/AtomicFile;->delete()V

    .line 314
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->removeFilePathFromHistory(Ljava/lang/String;)V

    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 188
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;J)V
    .registers 5

    .line 178
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V

    .line 179
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disableHistory()V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 249
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    goto :goto_9

    .line 251
    :cond_19
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 252
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 253
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public forceWriteToDisk()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final indexFilesLocked()V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 140
    :cond_e
    new-instance v1, Lcom/android/server/notification/NotificationHistoryDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/notification/NotificationHistoryDatabase$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 143
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 144
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    return-void
.end method

.method public init()V
    .registers 5

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "delete"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_17
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_30

    .line 119
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not create history directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_38
    .catchall {:try_start_17 .. :try_end_35} :catchall_36

    goto :goto_40

    :catchall_36
    move-exception p0

    goto :goto_50

    :catch_38
    move-exception v1

    :try_start_39
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "could not create needed files"

    .line 123
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->checkVersionAndBuildLocked()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->indexFilesLocked()V

    const/4 v1, 0x1

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->prune(IJ)V

    .line 129
    monitor-exit v0

    return-void

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_36

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3

    .line 173
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prune(IJ)V
    .registers 11

    .line 260
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 262
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 p2, 0x5

    mul-int/lit8 p3, p1, -0x1

    .line 263
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 265
    iget-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_19
    if-ltz p2, :cond_6f

    .line 266
    iget-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/AtomicFile;

    .line 268
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 269
    sget-boolean v4, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v4, :cond_59

    const-string v4, "NotiHistoryDatabase"

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " created on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_59
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_65

    .line 275
    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteFile(Landroid/util/AtomicFile;)V

    goto :goto_6c

    .line 279
    :cond_65
    invoke-virtual {p3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p3

    .line 278
    invoke-virtual {p0, p3, v2, v3, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;JI)V

    :goto_6c
    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    .line 282
    :cond_6f
    monitor-exit v0

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public readNotificationHistory()Landroid/app/NotificationHistory;
    .registers 8

    .line 203
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 205
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    .line 207
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_4e

    .line 209
    :try_start_1f
    new-instance v3, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 210
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v3

    .line 209
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_2c
    .catchall {:try_start_1f .. :try_end_2b} :catchall_4e

    goto :goto_13

    :catch_2c
    move-exception v3

    :try_start_2d
    const-string v4, "NotiHistoryDatabase"

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 216
    :cond_4c
    monitor-exit v0

    return-object v1

    :catchall_4e
    move-exception p0

    .line 217
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2d .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public readNotificationHistory(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;
    .registers 11

    .line 222
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 225
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5b

    .line 227
    :try_start_1a
    new-instance v3, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 229
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setPackage(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v3

    .line 230
    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v3

    .line 231
    invoke-virtual {v3, p3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setMaxNotifications(I)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v3

    .line 227
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 233
    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_36} :catch_39
    .catchall {:try_start_1a .. :try_end_36} :catchall_5b

    if-ne p3, v2, :cond_e

    goto :goto_59

    :catch_39
    move-exception v3

    :try_start_3a
    const-string v4, "NotiHistoryDatabase"

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 242
    :cond_59
    :goto_59
    monitor-exit v0

    return-object v1

    :catchall_5b
    move-exception p0

    .line 243
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public removeFilePathFromHistory(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 298
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 299
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 300
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    if-eqz v0, :cond_9

    .line 301
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 302
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_28
    return-void
.end method

.method public final scheduleDeletion(Ljava/io/File;J)V
    .registers 9

    .line 323
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling deletion for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "delete"

    .line 329
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 331
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0xc000000

    .line 326
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 334
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final scheduleDeletion(Ljava/io/File;JI)V
    .registers 7

    const v0, 0x5265c00

    mul-int/2addr p4, v0

    int-to-long v0, p4

    add-long/2addr p2, v0

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;J)V

    return-void
.end method

.method public unregisterFileCleanupReceiver()V
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 368
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleanupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    return-void
.end method

.method public final writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 341
    :try_start_4
    iget p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {v0, p2, p0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V

    .line 342
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    const/4 p0, 0x0

    .line 346
    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_11
    move-exception p0

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 347
    throw p0
.end method
