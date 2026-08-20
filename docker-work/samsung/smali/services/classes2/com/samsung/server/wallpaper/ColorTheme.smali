.class public Lcom/samsung/server/wallpaper/ColorTheme;
.super Ljava/lang/Object;
.source "ColorTheme.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ColorTheme"


# instance fields
.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mOverlayManager:Landroid/content/om/IOverlayManager;


# direct methods
.method public static synthetic $r8$lambda$rzdt6ZyGnT19tuy7AUPKY1MzKks(Lcom/samsung/server/wallpaper/ColorTheme;Lcom/samsung/server/wallpaper/ColorThemeData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/server/wallpaper/ColorTheme;->lambda$applyWallpaperColors$1(Lcom/samsung/server/wallpaper/ColorThemeData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trLsX_YLTPNLLG68LFoyq6-6x_k(Lcom/samsung/server/wallpaper/ColorTheme;Ljava/util/List;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/ColorTheme;->lambda$applyWallpaperColors$0(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private synthetic lambda$applyWallpaperColors$0(Ljava/util/List;II)V
    .registers 7

    :try_start_0
    const-string v0, "ColorTheme"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyWallpaperColors, colors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/ColorTheme;->initOverlayManager()V

    .line 32
    iget-object p0, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->applyWallpaperColors(Ljava/util/List;II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_23
    return-void
.end method

.method private synthetic lambda$applyWallpaperColors$1(Lcom/samsung/server/wallpaper/ColorThemeData;)V
    .registers 5

    :try_start_0
    const-string v0, "ColorTheme"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyWallpaperColors, colorThemeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/ColorTheme;->initOverlayManager()V

    if-nez p1, :cond_23

    .line 46
    iget-object p0, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, v0}, Landroid/content/om/IOverlayManager;->applyWallpaperColors(Ljava/util/List;II)V

    goto :goto_39

    .line 48
    :cond_23
    iget-object p0, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/ColorThemeData;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/ColorThemeData;->getSaturationNum()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/ColorThemeData;->getLuminanceNum()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Landroid/content/om/IOverlayManager;->applyWallpaperColors(Ljava/util/List;II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_39
    return-void
.end method


# virtual methods
.method public applyWallpaperColors(Lcom/samsung/server/wallpaper/ColorThemeData;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/server/wallpaper/ColorTheme;Lcom/samsung/server/wallpaper/ColorThemeData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public applyWallpaperColors(Ljava/util/List;IILcom/samsung/server/wallpaper/SemWallpaperData;)V
    .registers 6

    if-eqz p1, :cond_b

    .line 24
    new-instance v0, Lcom/samsung/server/wallpaper/ColorThemeData;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/server/wallpaper/ColorThemeData;-><init>(Ljava/util/List;II)V

    invoke-virtual {p4, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setColorThemeData(Lcom/samsung/server/wallpaper/ColorThemeData;)V

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p4, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setColorThemeData(Lcom/samsung/server/wallpaper/ColorThemeData;)V

    .line 28
    :goto_f
    iget-object p4, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/ColorTheme$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/server/wallpaper/ColorTheme;Ljava/util/List;II)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final initOverlayManager()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "overlay"

    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/ColorTheme;->mOverlayManager:Landroid/content/om/IOverlayManager;

    :cond_11
    return-void
.end method
