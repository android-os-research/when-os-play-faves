.class public Lcom/samsung/android/server/audio/SamsungMusicHelper;
.super Ljava/lang/Object;
.source "SamsungMusicHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.SamsungMusicHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScreenOffMusicEnabled(Landroid/content/Context;)Z
    .registers 10

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.music.shared"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    const/4 v7, 0x1

    if-eqz v1, :cond_14

    move v1, v7

    goto :goto_15

    :cond_14
    move v1, v6

    .line 39
    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.samsung.android.app.music.chn.setting"

    invoke-virtual {p0, v3, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    move p0, v7

    goto :goto_24

    :cond_23
    move p0, v6

    :goto_24
    const-string v8, "AS.SamsungMusicHelper"

    if-nez v1, :cond_30

    if-nez p0, :cond_30

    const-string p0, "ScreenOffMusicProvider does not exist"

    .line 43
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 52
    :cond_30
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3d

    move-object v2, v3

    .line 54
    :cond_3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v1, "setting/ready_screen_off_music"

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_4f} :catch_8d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 59
    :try_start_53
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_89

    if-eqz p0, :cond_72

    .line 60
    :try_start_59
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_60

    goto :goto_72

    .line 63
    :cond_60
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v0

    goto :goto_78

    :catchall_70
    move-exception v0

    goto :goto_7e

    :cond_72
    :goto_72
    const-string/jumbo v0, "screen off music query failed"

    .line 61
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_70

    :goto_78
    if-eqz p0, :cond_8d

    .line 67
    :try_start_7a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_89

    goto :goto_8d

    :goto_7e
    if-eqz p0, :cond_88

    .line 59
    :try_start_80
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception p0

    :try_start_85
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    throw v0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_8d
    :cond_8d
    :goto_8d
    return v6
.end method
