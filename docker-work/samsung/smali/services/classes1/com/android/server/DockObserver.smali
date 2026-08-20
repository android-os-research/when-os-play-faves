.class public final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;,
        Lcom/android/server/DockObserver$ExtconStateConfig;,
        Lcom/android/server/DockObserver$ExtconStateProvider;,
        Lcom/android/server/DockObserver$LogRecent;
    }
.end annotation


# static fields
.field public static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field public static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field public static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field public static final DOCK_DEVICE_TYPE_CCIC:I = 0x1

.field public static final DOCK_DEVICE_TYPE_MUIC:I = 0x0

.field public static final DOCK_DEVICE_TYPE_NONE:I = -0x1

.field public static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field public mActualDockState:I

.field public mActualUsbpdIds:Ljava/lang/String;

.field public final mAllowTheaterModeWakeFromDock:Z

.field public final mCcicObserver:Landroid/os/UEventObserver;

.field public final mExtconStateConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/DockObserver$ExtconStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mLastUeventDevice:I

.field public final mLock:Ljava/lang/Object;

.field public mLogRecent:Lcom/android/server/DockObserver$LogRecent;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreviousDockState:I

.field public mReportedDockState:I

.field public mReportedUsbpdIds:Ljava/lang/String;

.field public mSystemReady:Z

.field public mUpdatesStopped:Z

.field public mUsbpdIds:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastUeventDevice(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreviousDockState(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReportedDockState(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatesStopped(Lcom/android/server/DockObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastUeventDevice(Lcom/android/server/DockObserver;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUsbpdIds(Lcom/android/server/DockObserver;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDockStateChange(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetActualDockStateLocked(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDockStateFromProviderLocked(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 71
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 72
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v1, -0x1

    .line 82
    iput v1, p0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 450
    new-instance v1, Lcom/android/server/DockObserver$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 496
    new-instance v1, Lcom/android/server/DockObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

    .line 520
    new-instance v3, Lcom/android/server/DockObserver$3;

    invoke-direct {v3, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v3, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string/jumbo v3, "power"

    .line 232
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "DockObserver"

    .line 233
    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 239
    new-instance v2, Lcom/android/server/DockObserver$LogRecent;

    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$LogRecent;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v2, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 243
    invoke-static {p1}, Lcom/android/server/DockObserver;->loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    const-string p1, "DOCK"

    .line 245
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 250
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found extcon info devPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", statePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 256
    iget v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 258
    invoke-virtual {v1, p1}, Lcom/android/server/ExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    goto :goto_a9

    :cond_a4
    const-string p1, "No extcon dock device found in this kernel."

    .line 260
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_a9
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez p1, :cond_109

    const/16 p1, 0x400

    :try_start_af
    new-array v1, p1, [C

    .line 269
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_b8} :catch_104
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b8} :catch_fd

    .line 271
    :try_start_b8
    invoke-virtual {v2, v1, v0, p1}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 272
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_f8

    .line 274
    :try_start_c7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    new-array v1, p1, [C

    .line 279
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_d3} :catch_104
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d3} :catch_fd

    .line 281
    :try_start_d3
    invoke-virtual {v2, v1, v0, p1}, Ljava/io/FileReader;->read([CII)I

    move-result p1

    .line 282
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v0, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 283
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput p1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_ef
    .catchall {:try_start_d3 .. :try_end_ef} :catchall_f3

    .line 285
    :try_start_ef
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_109

    :catchall_f3
    move-exception p1

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 286
    throw p1

    :catchall_f8
    move-exception p1

    .line 274
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 275
    throw p1
    :try_end_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_ef .. :try_end_fd} :catch_104
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fd} :catch_fd

    :catch_fd
    move-exception p1

    const-string v0, ""

    .line 290
    invoke-static {v4, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_109

    :catch_104
    const-string p1, "This kernel does not have ccic dock station support"

    .line 288
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_109
    :goto_109
    iget-object p0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string p1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method public static loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/DockObserver$ExtconStateConfig;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700bc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 209
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_68

    aget-object v4, p0, v3

    const-string v5, ","

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 212
    new-instance v5, Lcom/android/server/DockObserver$ExtconStateConfig;

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    const/4 v6, 0x1

    move v7, v6

    .line 213
    :goto_2a
    array-length v8, v4

    if-ge v7, v8, :cond_62

    .line 214
    aget-object v8, v4, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 215
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_49

    .line 218
    iget-object v9, v5, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    aget-object v10, v8, v2

    aget-object v8, v8, v6

    invoke-static {v10, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 216
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key-value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_65} :catch_69
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_65} :catch_69

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_68
    return-object v0

    :catch_69
    move-exception p0

    const-string v0, "DockObserver"

    const-string v1, "Could not parse extcon state config"

    .line 224
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I
    .registers 8

    .line 463
    iget-object p0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 465
    iget-object v2, v0, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 466
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_3c

    .line 467
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v1

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    if-nez v3, :cond_1a

    :cond_3f
    if-eqz v3, :cond_6

    .line 474
    iget p0, v0, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    return p0

    :cond_44
    return v1
.end method

.method public final handleDockStateChange()V
    .registers 6

    .line 361
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "DockObserver"

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    .line 369
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_43

    const-string p0, "DockObserver"

    const-string v1, "Device not provisioned, skipping dock broadcast"

    .line 371
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit v0

    return-void

    .line 376
    :cond_43
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    if-eqz v1, :cond_4f

    const/4 v2, 0x1

    .line 377
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v4, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DockObserver$LogRecent;->log(IILjava/lang/String;)V

    .line 382
    :cond_4f
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 384
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_7b

    iget-object v2, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    if-eqz v2, :cond_7b

    const-string v3, ""

    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "com.sec.intent.extra.DOCK_ID"

    .line 389
    iget-object v3, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    :cond_7b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 447
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_16

    .line 306
    iget-object p1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 307
    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 310
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_11

    .line 311
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 313
    :cond_11
    monitor-exit p1

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    :goto_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 300
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService-IA;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setActualDockStateLocked(I)V
    .registers 5

    .line 318
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 322
    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    if-eqz v1, :cond_e

    const/4 v2, 0x0

    .line 324
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DockObserver$LogRecent;->log(IILjava/lang/String;)V

    .line 329
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_15

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    :cond_15
    return-void
.end method

.method public setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 485
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .registers 4

    const-string v0, "DOCK"

    .line 490
    invoke-virtual {p1, v0}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 493
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method public final setDockStateLocked(I)V
    .registers 5

    .line 335
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_32

    .line 336
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 339
    iget-object p1, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 342
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz p1, :cond_32

    .line 344
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez p1, :cond_24

    .line 345
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "theater_mode_on"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2f

    .line 347
    :cond_24
    iget-object p1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "android.server:DOCK"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 350
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_32
    return-void
.end method

.method public final updateLocked()V
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 357
    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
