.class public Lcom/android/server/vr/RefreshRateModeController;
.super Ljava/lang/Object;
.source "RefreshRateModeController.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "RefreshRateMode"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mIsDaydreamPersistentVrModeEnabled:Z

.field public mIsDaydreamVrModeEnabled:Z

.field public mIsNormalRefreshRate:Z

.field public mIsPersistentVrModeEnabled:Z

.field public mIsVrModeEnabled:Z

.field public mLastRefreshRateMode:I

.field public final mLock:Ljava/lang/Object;

.field public final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public mRefreshRateMode:I

.field public mRequestNormalRefreshRate:Z

.field public final mService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsDaydreamPersistentVrModeEnabled(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNormalRefreshRate(Lcom/android/server/vr/RefreshRateModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastRefreshRateMode(Lcom/android/server/vr/RefreshRateModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRefreshRateMode(Lcom/android/server/vr/RefreshRateModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/vr/RefreshRateModeController;)Lcom/android/server/vr/XrManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mService:Lcom/android/server/vr/XrManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDaydreamPersistentVrModeEnabled(Lcom/android/server/vr/RefreshRateModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNormalRefreshRate(Lcom/android/server/vr/RefreshRateModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRefreshRateMode(Lcom/android/server/vr/RefreshRateModeController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 25
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$1;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 79
    new-instance v0, Lcom/android/server/vr/RefreshRateModeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/RefreshRateModeController$2;-><init>(Lcom/android/server/vr/RefreshRateModeController;)V

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 107
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/server/vr/RefreshRateModeController;->mService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public changeRefreshRate(Z)V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    .line 66
    sget-boolean v1, Lcom/android/server/vr/RefreshRateModeController;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "RefreshRateMode"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeRefreshRate mIsDaydreamVrModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-eqz p1, :cond_2b

    .line 70
    invoke-virtual {p0}, Lcom/android/server/vr/RefreshRateModeController;->updateNormalRefreshModeLocked()V

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/vr/RefreshRateModeController;->setRefreshRateModeSetting(I)V

    goto :goto_33

    .line 73
    :cond_2b
    iget p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/vr/RefreshRateModeController;->setRefreshRateModeSetting(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/vr/RefreshRateModeController;->updateNormalRefreshModeLocked()V

    .line 76
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "RefreshRateModeController:"

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastRefreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsNormalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRequestNormalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRequestNormalRefreshRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsDaydreamVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsDaydreamPersistentVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsPersistentVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getNormalRefreshRateMode()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 170
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 171
    iget p0, v0, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-nez p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public getRefreshRateModeSetting()I
    .registers 4

    .line 176
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "refresh_rate_mode"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public isNormalRefreshModeNeeded()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamVrModeEnabled:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsVrModeEnabled:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsDaydreamPersistentVrModeEnabled:Z

    if-nez v0, :cond_13

    iget-boolean p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsPersistentVrModeEnabled:Z

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isNormalRefreshRate()Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    return p0
.end method

.method public onSystemServiceReady()V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/vr/RefreshRateModeController;->getRefreshRateModeSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    .line 114
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "refresh_rate_mode"

    .line 115
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/vr/RefreshRateModeController$3;

    new-instance v3, Landroid/os/Handler;

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/vr/RefreshRateModeController$3;-><init>(Lcom/android/server/vr/RefreshRateModeController;Landroid/os/Handler;)V

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/vr/RefreshRateModeController;->getNormalRefreshRateMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    .line 131
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/XrManagerService;->updateLowPersistenceModeAllowedLocked()V

    .line 133
    iget-object v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 135
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_53

    .line 137
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, p0}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_53
    return-void
.end method

.method public setRefreshRateModeSetting(I)V
    .registers 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRefreshRateModeSetting refreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RefreshRateMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput p1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    .line 184
    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "refresh_rate_mode"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public updateNormalRefreshModeLocked()V
    .registers 4

    .line 146
    invoke-virtual {p0}, Lcom/android/server/vr/RefreshRateModeController;->isNormalRefreshModeNeeded()Z

    move-result v0

    .line 147
    iget-boolean v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mRequestNormalRefreshRate:Z

    if-eq v1, v0, :cond_51

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNormalRefreshModeLocked requestNormalRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRefreshRateMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastRefreshRateMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsNormalRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/RefreshRateModeController;->mIsNormalRefreshRate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefreshRateMode"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-boolean v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRequestNormalRefreshRate:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_4b

    .line 153
    iget v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    if-ne v0, v1, :cond_51

    .line 154
    iget v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mRefreshRateMode:I

    iput v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    goto :goto_51

    .line 157
    :cond_4b
    iget v0, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    if-eq v0, v1, :cond_51

    .line 158
    iput v1, p0, Lcom/android/server/vr/RefreshRateModeController;->mLastRefreshRateMode:I

    :cond_51
    :goto_51
    return-void
.end method
