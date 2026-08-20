.class public Lcom/samsung/android/server/audio/OmcRingtoneManager;
.super Ljava/lang/Object;
.source "OmcRingtoneManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.OmcRingtoneManager"

.field public static sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;


# instance fields
.field public mExcludeNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExcludeRingtones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->loadExcludedSoundsFromCsc()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/OmcRingtoneManager;
    .registers 2

    .line 44
    sget-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/OmcRingtoneManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    .line 47
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->sInstance:Lcom/samsung/android/server/audio/OmcRingtoneManager;

    return-object p0
.end method


# virtual methods
.method public getExcludedNotifications()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    return-object p0
.end method

.method public getExcludedRingtones()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    return-object p0
.end method

.method public final getExcludedRingtonesFromCsc(Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_22

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/media/audio/ringtones/exclude_ringtones"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_40

    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_40

    .line 75
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/media/audio/notifications/exclude_notifications"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_40

    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 81
    :cond_40
    :goto_40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v2, "AS.OmcRingtoneManager"

    if-eqz p1, :cond_80

    .line 83
    :try_start_4d
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_57} :catch_79

    .line 84
    :goto_57
    :try_start_57
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    if-ne p2, v0, :cond_65

    .line 86
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeRingtones:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 88
    :cond_65
    iget-object v3, p0, Lcom/samsung/android/server/audio/OmcRingtoneManager;->mExcludeNotifications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_6f

    goto :goto_57

    .line 91
    :cond_6b
    :try_start_6b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_79

    goto :goto_99

    :catchall_6f
    move-exception p0

    .line 83
    :try_start_70
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p1

    :try_start_75
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_78
    throw p0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_79} :catch_79

    :catch_79
    move-exception p0

    const-string p1, "File exception"

    .line 92
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    .line 95
    :cond_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "There is no sounds(type:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") list to remove"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_99
    return-void
.end method

.method public loadExcludedSoundsFromCsc()V
    .registers 3

    const-string/jumbo v0, "persist.sys.omc_respath"

    .line 59
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/OmcRingtoneManager;->getExcludedRingtonesFromCsc(Ljava/lang/String;I)V

    :cond_15
    return-void
.end method
