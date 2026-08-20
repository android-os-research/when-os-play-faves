.class public Lcom/android/server/location/nsflp/NSUtLogger;
.super Landroid/os/Handler;
.source "NSUtLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;
    }
.end annotation


# static fields
.field public static final ALLOWED_DIRECTORY_FILE_COUNT:I = 0x1f4

.field public static final ALLOWED_DIRECTORY_SIZE:J = 0x6400000L

.field public static final MSG_WRITE_DATA:I = 0x1

.field public static final SAVE_PATH:Ljava/lang/String; = "/data/log/gps/issuetracker/"

.field public static final TAG:Ljava/lang/String; = "NSUtLogger"

.field public static final TYPE_CRASH:I = 0x3

.field public static final TYPE_NMEA:I = 0x1

.field public static final TYPE_POS:I = 0x2


# instance fields
.field public mDirectorySize:J

.field public mFileCount:I

.field public mFileSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mOccurredExceptionCount:I


# direct methods
.method public static synthetic $r8$lambda$UuPY92wCLZnRKKWm36wY6Nfmpc8(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSUtLogger;->lambda$deleteOldFiles$0(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 4

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "NSUtLogger"

    if-eqz v0, :cond_22

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success deleteFile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 83
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "file is not existed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$deleteOldFiles$0(Ljava/io/File;)Z
    .registers 2

    .line 189
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crash_history.txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static makeFile(Ljava/io/File;)Z
    .registers 5

    const-string/jumbo v0, "isSuccess = "

    .line 226
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "NSUtLogger"

    if-nez v1, :cond_4f

    .line 228
    :try_start_c
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_25
    .catchall {:try_start_c .. :try_end_10} :catchall_23

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :catchall_23
    move-exception p0

    goto :goto_3c

    :catch_25
    move-exception p0

    .line 230
    :try_start_26
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    throw p0

    .line 236
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " exists"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return v2
.end method

.method public static writeFile(Ljava/io/File;[BZ)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-eqz p1, :cond_3d

    .line 66
    :try_start_b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_22

    .line 67
    :try_start_10
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 68
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_22

    const/4 p0, 0x1

    return p0

    :catchall_18
    move-exception p0

    .line 66
    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    :try_start_1e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occurred while open file"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSUtLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v0
.end method


# virtual methods
.method public final createFile(Ljava/io/File;)Z
    .registers 4

    const-string v0, "/data/log/gps/issuetracker/"

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSUtLogger;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "NSUtLogger"

    if-nez p0, :cond_11

    const-string p0, "createFile, directory is null"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 95
    :cond_11
    invoke-static {p1}, Lcom/android/server/location/nsflp/NSUtLogger;->makeFile(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "createFile, failed to make file"

    .line 96
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public final createFileSizeMap(Ljava/io/File;)J
    .registers 10

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2d

    .line 170
    array-length v2, p1

    if-nez v2, :cond_c

    goto :goto_2d

    .line 174
    :cond_c
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_2d

    aget-object v4, p1, v3

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 177
    iget-object v7, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget v4, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    :goto_2d
    return-wide v0
.end method

.method public deleteOldFiles(J)V
    .registers 14

    const-string v0, "NSUtLogger"

    .line 188
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/gps/issuetracker/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/android/server/location/nsflp/NSUtLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/location/nsflp/NSUtLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_15

    return-void

    .line 196
    :cond_15
    :try_start_15
    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_21} :catch_84

    .line 203
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_81

    aget-object v5, v1, v4

    .line 205
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 206
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-static {v5}, Lcom/android/server/location/nsflp/NSUtLogger;->deleteFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 209
    iget-wide v9, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    sub-long/2addr v9, v6

    iput-wide v9, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 210
    iget-object v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 214
    :cond_46
    iget v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    const/16 v6, 0x1f4

    if-ge v5, v6, :cond_7e

    iget-wide v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    const-wide/32 v7, 0x6400000

    cmp-long v5, v5, v7

    if-gez v5, :cond_7e

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteOldFiles, file count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", directory size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 220
    :cond_81
    :goto_81
    iput v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    return-void

    :catch_84
    move-exception p1

    .line 198
    iget p2, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOldFiles, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , count : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "NSUtLogger"

    .line 44
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_60

    .line 46
    :try_start_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;

    .line 48
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSUtLogger;->createFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo p0, "writeFile, cannot create file"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_25
    iget v2, p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->type:I

    iget-object p1, p1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->data:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/location/nsflp/NSUtLogger;->writeData(ILjava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2c} :catch_47
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_2c} :catch_2d

    goto :goto_60

    :catch_2d
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to writeUtLog, error="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :catch_47
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to writeUtLog, exception="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-void
.end method

.method public final makeDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 103
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "NSUtLogger"

    if-nez v0, :cond_20

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "Success to create the directory"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_19
    const-string p0, "Failed to create the directory"

    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-object p0
.end method

.method public final updateFileSizeMap(Ljava/io/File;)V
    .registers 9

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 246
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 247
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 249
    iget-wide v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    goto :goto_2f

    .line 251
    :cond_24
    iget-wide v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 252
    iget p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    .line 254
    :goto_2f
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeData(ILjava/io/File;Ljava/lang/String;)V
    .registers 12

    .line 121
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "NSUtLogger"

    if-nez p2, :cond_10

    const-string/jumbo p0, "writeData, file is null"

    .line 124
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_10
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/log/gps/issuetracker/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    if-nez v4, :cond_28

    .line 131
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileSizeMap:Ljava/util/Map;

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/server/location/nsflp/NSUtLogger;->createFileSizeMap(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    .line 136
    :cond_28
    iget v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mFileCount:I

    const/16 v4, 0x1f4

    const/4 v5, 0x3

    if-ge v3, v4, :cond_38

    iget-wide v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mDirectorySize:J

    const-wide/32 v6, 0x6400000

    cmp-long v3, v3, v6

    if-ltz v3, :cond_46

    .line 137
    :cond_38
    iget v3, p0, Lcom/android/server/location/nsflp/NSUtLogger;->mOccurredExceptionCount:I

    if-lt v3, v5, :cond_43

    const-string/jumbo p0, "writeData, occurred exception count is over so return"

    .line 138
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/nsflp/NSUtLogger;->deleteOldFiles(J)V

    .line 144
    :cond_46
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lcom/android/server/location/nsflp/NSUtLogger;->writeFile(Ljava/io/File;[BZ)Z

    move-result p3

    if-eqz p3, :cond_89

    .line 147
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "writeData, success write data "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSUtLogger;->updateFileSizeMap(Ljava/io/File;)V

    if-ne p1, v5, :cond_6e

    return-void

    .line 153
    :cond_6e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSUtLogger;->writeKmzFile(ILjava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 154
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".txt"

    const-string p3, ".kmz"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 155
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSUtLogger;->updateFileSizeMap(Ljava/io/File;)V

    goto :goto_8f

    :cond_89
    const-string/jumbo p0, "writeData, failed write data"

    .line 159
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    :goto_8f
    return-void
.end method

.method public final writeKmzFile(ILjava/io/File;)Z
    .registers 3

    .line 261
    new-instance p0, Lcom/android/server/location/nsflp/NSKmlWriter;

    invoke-direct {p0}, Lcom/android/server/location/nsflp/NSKmlWriter;-><init>()V

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->createKmzFile(ILjava/io/File;)Z

    move-result p0

    return p0
.end method
