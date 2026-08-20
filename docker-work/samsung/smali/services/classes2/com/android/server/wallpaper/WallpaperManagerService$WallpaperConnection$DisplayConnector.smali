.class final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayConnector"
.end annotation


# instance fields
.field public mDimensionsChanged:Z

.field public final mDisplayId:I

.field public mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field public mPaddingChanged:Z

.field public final mToken:Landroid/os/Binder;

.field public final synthetic this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V
    .registers 3

    .line 1934
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 1935
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 15

    .line 1959
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const-string v1, "WallpaperManagerService"

    if-nez v0, :cond_c

    const-string p0, "WallpaperService is not connected yet"

    .line 1960
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1964
    :cond_c
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    return-void

    .line 1969
    :cond_1a
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmSemService(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    .line 1970
    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->isVirtualWallpaperDisplay(I)Z

    move-result v0

    if-nez v0, :cond_35

    return-void

    .line 1976
    :cond_35
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1978
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetDisplayDataOrCreate(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 1980
    :try_start_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    const/16 v6, 0x7dd

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    move-object v4, p1

    invoke-interface/range {v3 .. v11}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_7a} :catch_7b

    goto :goto_97

    :catch_7b
    move-exception v0

    const-string v2, "Failed attaching wallpaper on display"

    .line 1985
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1986
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_97

    .line 1987
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getConnectedEngineSize()I

    move-result p1

    if-nez p1, :cond_97

    .line 1988
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mbindWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_97
    :goto_97
    return-void
.end method

.method public disconnectLocked()V
    .registers 5

    .line 1996
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 1999
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_17

    .line 2000
    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    const/4 v0, 0x0

    .line 2004
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method

.method public ensureStatusHandled()V
    .registers 7

    .line 1939
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetDisplayDataOrCreate(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 1940
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    const/4 v2, 0x0

    const-string v3, "WallpaperManagerService"

    if-eqz v1, :cond_23

    .line 1942
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-interface {v1, v4, v5}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v1

    const-string v4, "Failed to set wallpaper dimensions"

    .line 1944
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1946
    :goto_21
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 1948
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    if-eqz v1, :cond_37

    .line 1950
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception v0

    const-string v1, "Failed to set wallpaper padding"

    .line 1952
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1954
    :goto_35
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    :cond_37
    return-void
.end method
