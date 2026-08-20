.class public Lcom/android/server/powerstats/PowerStatsDataStorage;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;,
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;,
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;,
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
    }
.end annotation


# static fields
.field public static final DELETE_AGE_MILLIS:J = 0xa4cb800L

.field public static final MILLISECONDS_PER_HOUR:J = 0x36ee80L

.field public static final ROTATE_AGE_MILLIS:J = 0xdbba00L

.field public static final TAG:Ljava/lang/String; = "PowerStatsDataStorage"


# instance fields
.field public final mDataStorageDir:Ljava/io/File;

.field public final mDataStorageFilename:Ljava/lang/String;

.field public final mFileRotator:Lcom/android/internal/util/FileRotator;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 11

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 167
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 168
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 170
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_39

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_39

    .line 171
    sget-object p1, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mDataStorageDir does not exist: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    goto :goto_84

    .line 176
    :cond_39
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 177
    :goto_3f
    array-length v0, p1

    if-ge p3, v0, :cond_72

    .line 194
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    aget-object v1, p1, p3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 199
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 200
    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6f
    add-int/lit8 p3, p3, 0x1

    goto :goto_3f

    .line 205
    :cond_72
    new-instance p1, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const-wide/32 v3, 0xdbba00

    const-wide/32 v5, 0xa4cb800

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    :goto_84
    return-void
.end method


# virtual methods
.method public deleteLogs()V
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 251
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_2d

    .line 252
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 253
    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 255
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 256
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2d
    return-void
.end method

.method public read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;

    invoke-direct {v1, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;-><init>(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    return-void
.end method

.method public write([B)V
    .registers 6

    if-eqz p1, :cond_44

    .line 221
    array-length v0, p1

    if-lez v0, :cond_44

    .line 222
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 226
    :try_start_e
    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>([BLcom/android/server/powerstats/PowerStatsDataStorage$DataElement-IA;)V

    .line 227
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;

    invoke-static {v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->-$$Nest$mtoByteArray(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;-><init>([B)V

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 229
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception p1

    .line 231
    sget-object v0, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write to on-device storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_3f
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_44
    return-void
.end method
