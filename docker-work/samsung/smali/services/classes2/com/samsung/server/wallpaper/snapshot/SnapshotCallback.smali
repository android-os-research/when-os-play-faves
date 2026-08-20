.class public interface abstract Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;
.super Ljava/lang/Object;
.source "SnapshotCallback.java"


# virtual methods
.method public abstract requestBindWallpaper(II)V
.end method

.method public abstract requestClearWallpaper(II)V
.end method

.method public abstract requestInitializeThumnailFile(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
.end method

.method public abstract requestKeyguardListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestNotifyLockWallpaperChanged(II)V
.end method

.method public abstract requestNotifySemWallpaperColors(I)V
.end method

.method public abstract requestParseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
.end method

.method public abstract requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
.end method

.method public abstract requestSaveSettingsLocked(II)V
.end method

.method public abstract requestSetWallpaperComponent(ILandroid/content/ComponentName;)V
.end method

.method public abstract requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.end method

.method public abstract requestWriteWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
