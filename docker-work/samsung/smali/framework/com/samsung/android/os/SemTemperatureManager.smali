.class public Lcom/samsung/android/os/SemTemperatureManager;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    }
.end annotation


# static fields
.field public static final whitelist HMT_LEVEL_DANGEROUS:I = 0x2

.field public static final whitelist HMT_LEVEL_NORMAL:I = 0x0

.field public static final whitelist HMT_LEVEL_WARNING:I = 0x1

.field private static blacklist LOG_TAG:Ljava/lang/String; = null

.field private static final blacklist SDHMS_VALUE_HMT_LEVEL:I = 0x2

.field private static final blacklist SDHMS_VALUE_SIOP_LEVEL:I = 0x1

.field public static final whitelist UNSUPPORTED:I = -0x3e7

.field private static blacklist mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

.field private static blacklist mThermistorList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/os/SemTemperatureManager$Thermistor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 1

    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemTemperatureManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static whitelist getHeadMountTheaterLevel(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 214
    .local v0, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_10

    .line 216
    const/4 v1, 0x2

    :try_start_7
    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 217
    :catch_c
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    const/16 v1, -0x3e7

    return v1
.end method

.method public static whitelist getOverheatingProtectionLevel(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 191
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 193
    .local v0, "svc":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_10

    .line 195
    const/4 v1, 0x1

    :try_start_7
    invoke-interface {v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getSsrmStatus(I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 196
    :catch_c
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    const/16 v1, -0x3e7

    return v1
.end method

.method private static declared-synchronized blacklist getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .registers 4

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v0

    .line 148
    :try_start_3
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_26

    .line 149
    const-string/jumbo v1, "sdhms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 150
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_26

    .line 151
    invoke-static {v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2a

    .line 152
    if-eqz v2, :cond_26

    .line 154
    :try_start_18
    new-instance v2, Lcom/samsung/android/os/SemTemperatureManager$1;

    invoke-direct {v2}, Lcom/samsung/android/os/SemTemperatureManager$1;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    .line 162
    goto :goto_26

    .line 160
    :catch_22
    move-exception v2

    .line 161
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 166
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    :goto_26
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 147
    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static whitelist getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    .registers 2
    .param p0, "thermistorType"    # I

    .line 252
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 253
    :cond_a
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->initThermistorList()V

    .line 256
    :cond_d
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    return-object v0
.end method

.method public static whitelist getThermistorList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/os/SemTemperatureManager$Thermistor;",
            ">;"
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 231
    :cond_a
    invoke-static {}, Lcom/samsung/android/os/SemTemperatureManager;->initThermistorList()V

    .line 234
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/os/SemTemperatureManager$Thermistor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 236
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_36

    .line 237
    sget-object v2, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 241
    .end local v1    # "i":I
    :cond_39
    return-object v0
.end method

.method private static declared-synchronized blacklist initThermistorList()V
    .registers 5

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v0

    .line 171
    :try_start_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v2, 0xa

    if-ge v1, v2, :cond_25

    .line 174
    new-instance v2, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;-><init>(ILcom/samsung/android/os/SemTemperatureManager$Thermistor-IA;)V

    .line 175
    .local v2, "t":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    invoke-virtual {v2}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v3

    const/16 v4, -0x3e7

    if-eq v3, v4, :cond_22

    .line 176
    sget-object v3, Lcom/samsung/android/os/SemTemperatureManager;->mThermistorList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_27

    .line 173
    .end local v2    # "t":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 179
    .end local v1    # "i":I
    :cond_25
    monitor-exit v0

    return-void

    .line 170
    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method
