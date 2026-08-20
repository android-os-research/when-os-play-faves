.class public Lcom/samsung/server/wallpaper/OMCWallpaper;
.super Ljava/lang/Object;
.source "OMCWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MSG_OMC_WALLPAPER_UPDATED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OMCWallpaper"

.field public static final UPDATE_OMC_WALLPAPER:Ljava/lang/String; = "com.samsung.intent.action.RSCUPDATE_START"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mOMCWallpaperUpdatedReceiver:Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/OMCWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/server/wallpaper/OMCWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/OMCWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    const-string v0, "OMCWallpaper"

    .line 61
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 65
    iput-object p3, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-void
.end method


# virtual methods
.method public checkTSSActivation(Z)V
    .registers 7

    const-string v0, "OMCWallpaper"

    const-string v1, "checkTSSActivation"

    .line 154
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/wallpaper_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 160
    :try_start_28
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    const/4 v1, 0x0

    goto :goto_35

    :cond_33
    const-string v1, "false"

    :goto_35
    const-string v2, "mdc.singlesku.activated"

    .line 165
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTSSActivation, old= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 168
    iget-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->handleOMCWallpaperUpdated()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivation(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    goto :goto_87

    :cond_69
    const-string/jumbo v0, "true"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 175
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "tss_activated"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_87

    if-ne v0, v3, :cond_87

    .line 177
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public getOperatorWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "OMCWallpaper"

    const-string v1, "getOperatorWallpaperBitmap()"

    .line 106
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_11

    return-object p1

    .line 115
    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    move-exception p0

    const-string v1, "getDefaultWallpaperFile error:"

    .line 117
    invoke-static {v0, v1, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p1

    :goto_1e
    if-nez v1, :cond_21

    return-object p1

    .line 125
    :cond_21
    :try_start_21
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_25} :catch_30
    .catchall {:try_start_21 .. :try_end_25} :catchall_2e

    .line 130
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_39

    :catch_29
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    :catchall_2e
    move-exception p0

    goto :goto_3a

    :catch_30
    move-exception p0

    :try_start_31
    const-string v2, "Can\'t decode stream"

    .line 127
    invoke-static {v0, v2, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2e

    .line 130
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_29

    :goto_39
    return-object p1

    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    :goto_42
    throw p0
.end method

.method public needToUpdateOMCWallpaper(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "OMCWallpaper"

    if-eqz p1, :cond_1c

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1c

    const-string/jumbo p0, "user wallpaper is being used"

    .line 140
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 144
    :cond_1c
    iget-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p1, v2, p0}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2e

    return v2

    :cond_2e
    const-string p0, "no omc wallpaper"

    .line 148
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public registerOMCWallpaperUpdatedReceiver()V
    .registers 4

    const-string v0, "OMCWallpaper"

    const-string/jumbo v1, "registerOMCWallpaperUpdatedReceiver"

    .line 90
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.RSCUPDATE_START"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver-IA;)V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mOMCWallpaperUpdatedReceiver:Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    .line 95
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final saveTSSActivation(Ljava/lang/String;)V
    .registers 5

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saveTSSActivation, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OMCWallpaper"

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/wallpaper_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    :try_start_32
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v1

    .line 191
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3a
    const/4 v1, 0x0

    .line 195
    :try_start_3b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_5b
    .catchall {:try_start_3b .. :try_end_40} :catchall_59

    .line 196
    :try_start_40
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo p0, "save done"

    .line 197
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_56
    .catchall {:try_start_40 .. :try_end_4f} :catchall_53

    .line 203
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_65

    goto :goto_69

    :catchall_53
    move-exception p0

    move-object v1, v2

    goto :goto_6a

    :catch_56
    move-exception p0

    move-object v1, v2

    goto :goto_5c

    :catchall_59
    move-exception p0

    goto :goto_6a

    :catch_5b
    move-exception p0

    .line 199
    :goto_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    if-eqz v1, :cond_69

    .line 203
    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_69
    :goto_69
    return-void

    :goto_6a
    if-eqz v1, :cond_74

    .line 203
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    :cond_74
    :goto_74
    throw p0
.end method

.method public final saveTSSActivationSettings(Ljava/lang/String;)V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 215
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string/jumbo v0, "tss_activated"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2d
    return-void
.end method

.method public updateOmcWallpaper(Ljava/lang/String;)V
    .registers 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMCWallpaperUpdatedReceiver : onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMCWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.intent.action.RSCUPDATE_START"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 83
    iget-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 84
    iget-object p1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    :cond_2c
    iget-object p0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_31
    return-void
.end method
