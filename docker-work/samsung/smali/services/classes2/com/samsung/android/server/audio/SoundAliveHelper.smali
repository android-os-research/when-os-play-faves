.class public Lcom/samsung/android/server/audio/SoundAliveHelper;
.super Ljava/lang/Object;
.source "SoundAliveHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.SoundAliveHelper"

.field public static sIsSoundAliveExist:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSoundAliveExist(Landroid/content/Context;)Z
    .registers 4

    .line 37
    sget-boolean v0, Lcom/samsung/android/server/audio/SoundAliveHelper;->sIsSoundAliveExist:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 41
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.android.app.soundalive.compatibility.SAContentProvider"

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sput-boolean v1, Lcom/samsung/android/server/audio/SoundAliveHelper;->sIsSoundAliveExist:Z

    return v1
.end method

.method public static notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/SoundAliveHelper;->wasStreamActiveRecently(II)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 53
    :cond_c
    invoke-static {p0}, Lcom/samsung/android/server/audio/SoundAliveHelper;->isSoundAliveExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 57
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify dvfs state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", screen : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.SoundAliveHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.sec.android.app.soundalive.compatibility.SAContentProvider"

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "SCREEN_STATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5d} :catch_5e

    goto :goto_64

    :catch_5e
    move-exception p0

    const-string p1, "notifyDVFSToSoundAlive"

    .line 64
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_64
    return-void
.end method

.method public static wasStreamActiveRecently(II)Z
    .registers 3

    .line 69
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 70
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
