.class public Lcom/android/server/remoteappmode/AnrCollector;
.super Ljava/lang/Object;
.source "AnrCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;
    }
.end annotation


# static fields
.field public static final GET_LAST_ANR_TIME:Ljava/lang/String; = "ltw_get_anr_time"

.field public static final PREFS_REMOTE_APP_MODE:Ljava/lang/String; = "remote_app_mode_prefs"

.field public static final TAG:Ljava/lang/String; = "AnrCollector"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$_-ljuYgN92TlcfvEDxzWdBtES1E(Lcom/android/server/remoteappmode/AnrCollector;Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/AnrCollector;->isAnrFileModifiedLater(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wPLkOxz-TGkAEYS716lJKpX47jA(Lcom/android/server/remoteappmode/AnrCollector;Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/remoteappmode/AnrCollector;->lambda$getLastAnrFile$0(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/remoteappmode/AnrCollector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$getLastAnrFile$0(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/android/server/remoteappmode/AnrCollector;->isAnrFileFromPackage(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/AnrCollector;->getLastAnrFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gatLastAnr - lastAnrFile : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnrCollector"

    invoke-static {v0, p1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance p1, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;

    invoke-direct {p1, p0, p2}, Lcom/android/server/remoteappmode/AnrCollector$WriteANRInfoThread;-><init>(Ljava/io/File;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getLastAnrFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_43

    .line 45
    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/remoteappmode/AnrCollector;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/remoteappmode/AnrCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/remoteappmode/AnrCollector;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/io/File;

    .line 55
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/remoteappmode/AnrCollector;->setLastGettingAnrTime(J)V

    :cond_43
    :goto_43
    return-object v2
.end method

.method public final getLastGettingAnrTime()J
    .registers 6

    const-wide/16 v0, 0x0

    .line 76
    :try_start_2
    iget-object v2, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_12

    .line 77
    iget-object v2, p0, Lcom/android/server/remoteappmode/AnrCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "remote_app_mode_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    .line 80
    :cond_12
    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ltw_get_anr_time"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return-wide v0

    :catch_1c
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AnrCollector"

    invoke-static {v2, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public final isAnrFileFromPackage(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAnrFileFromPackage started - target file : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AnrCollector"

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 110
    :try_start_1d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_85
    .catchall {:try_start_1d .. :try_end_27} :catchall_83

    move v1, p0

    .line 112
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x1e

    if-ge v1, v5, :cond_79

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "cmd"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAnrFileFromPackage - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string/jumbo p1, "isAnrFileFromPackage - return true"

    .line 117
    invoke-static {v0, p1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_6d} :catch_80
    .catchall {:try_start_28 .. :try_end_6d} :catchall_7d

    .line 128
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_75
    const/4 p0, 0x1

    return p0

    :cond_77
    move v1, v4

    goto :goto_28

    .line 128
    :cond_79
    :try_start_79
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_8f

    goto :goto_93

    :catchall_7d
    move-exception p0

    move-object v1, v2

    goto :goto_9a

    :catch_80
    move-exception p1

    move-object v1, v2

    goto :goto_86

    :catchall_83
    move-exception p0

    goto :goto_9a

    :catch_85
    move-exception p1

    .line 124
    :goto_86
    :try_start_86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_83

    if-eqz v1, :cond_93

    .line 128
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_93
    :goto_93
    const-string/jumbo p1, "isAnrFileFromPackage - return false"

    .line 135
    invoke-static {v0, p1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :goto_9a
    if-eqz v1, :cond_a4

    .line 128
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    :cond_a4
    :goto_a4
    throw p0
.end method

.method public final isAnrFileModifiedLater(Ljava/io/File;)Z
    .registers 8

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 93
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/AnrCollector;->getLastGettingAnrTime()J

    move-result-wide v2

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isAnrFileModifiedLater - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "lastModified : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", lastTimestamp : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AnrCollector"

    .line 95
    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-lez p0, :cond_45

    const/4 v1, 0x1

    :cond_45
    return v1
.end method

.method public final setLastGettingAnrTime(J)V
    .registers 6

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_10

    .line 63
    iget-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "remote_app_mode_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    .line 66
    :cond_10
    iget-object p0, p0, Lcom/android/server/remoteappmode/AnrCollector;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "ltw_get_anr_time"

    .line 67
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnrCollector"

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method
