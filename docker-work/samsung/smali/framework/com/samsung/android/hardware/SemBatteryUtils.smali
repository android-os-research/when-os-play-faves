.class public Lcom/samsung/android/hardware/SemBatteryUtils;
.super Ljava/lang/Object;
.source "SemBatteryUtils.java"


# static fields
.field public static final whitelist FLAG_AOD_ON:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_BRIGHTNESS_100:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_BRIGHTNESS_80:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_BRIGHTNESS_85:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_BRIGHTNESS_90:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_BRIGHTNESS_95:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_RESOLUTION_FHD:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_RESOLUTION_HD:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_RESOLUTION_WQHD:I = 0x60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_RESTRICT_DATA:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_RESTRICT_PERFORMANCE:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_BIG_DATA_LOGGING:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_BIG_DATA_UPLOADING:I = 0x5

.field public static final whitelist MODE_NORMAL:I = 0x0

.field public static final whitelist MODE_NORMAL_100:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_PERFORMANCE:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING:I = 0x1

.field public static final whitelist MODE_POWER_SAVING_IN_DARK_THEME:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_IN_GRAYSCALE:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_BLOCKING_DATA:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_LIMITING_APPLICATIONS:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_100:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_80:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_85:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_90:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_95:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_RESOLUTIION_FHD:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_RESOLUTIION_HD:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_RESOLUTIION_WQHD:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_RESTRICTING_BG_DATA:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_POWER_SAVING_WITH_RESTRICTING_PERFORMANCE:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_ULTRA_POWER_SAVING:I = 0x2

.field private static blacklist mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static whitelist getBatteryRemainingUsageTime(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .line 187
    if-eqz p0, :cond_20

    if-gez p1, :cond_5

    goto :goto_20

    .line 191
    :cond_5
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 192
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 193
    .local v1, "remainTime":I
    if-eqz v0, :cond_1f

    .line 194
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 195
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_1f

    .line 197
    :try_start_15
    invoke-interface {v2, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getRemainingUsageTime(I)I

    move-result v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1b

    move v1, v3

    .line 200
    goto :goto_1f

    .line 198
    :catch_1b
    move-exception v3

    .line 199
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    .end local v2    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return v1

    .line 188
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "remainTime":I
    :cond_20
    :goto_20
    const/4 v0, -0x2

    return v0
.end method

.method public static whitelist getBatteryRemainingUsageTime(Landroid/content/Context;II)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "flags"    # I

    .line 228
    if-eqz p0, :cond_20

    if-gez p1, :cond_5

    goto :goto_20

    .line 232
    :cond_5
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 234
    .local v1, "remainTime":I
    if-eqz v0, :cond_1f

    .line 235
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    .line 236
    .local v2, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v2, :cond_1f

    .line 238
    :try_start_15
    invoke-interface {v2, p1, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getRemainingUsageTimeWithSettings(II)I

    move-result v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1b

    move v1, v3

    .line 241
    goto :goto_1f

    .line 239
    :catch_1b
    move-exception v3

    .line 240
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 245
    .end local v2    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return v1

    .line 229
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "remainTime":I
    :cond_20
    :goto_20
    const/4 v0, -0x2

    return v0
.end method

.method private static declared-synchronized blacklist getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/hardware/SemBatteryUtils;

    monitor-enter v0

    .line 165
    :try_start_3
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_15

    .line 166
    const-string v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 167
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_15

    .line 168
    invoke-static {v1}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    .line 171
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_15
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    .line 164
    .end local p0    # "context":Landroid/content/Context;
    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method
