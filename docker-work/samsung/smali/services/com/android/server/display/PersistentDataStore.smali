.class public final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PersistentDataStore$Injector;,
        Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;,
        Lcom/android/server/display/PersistentDataStore$StableDeviceValues;,
        Lcom/android/server/display/PersistentDataStore$DisplayState;
    }
.end annotation


# static fields
.field public static final ATTR_DEVICE_ADDRESS:Ljava/lang/String; = "deviceAddress"

.field public static final ATTR_DEVICE_ALIAS:Ljava/lang/String; = "deviceAlias"

.field public static final ATTR_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final ATTR_MAC_ADDRESS:Ljava/lang/String; = "macAddress"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final ATTR_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final ATTR_UNIQUE_ID:Ljava/lang/String; = "unique-id"

.field public static final ATTR_USER_SERIAL:Ljava/lang/String; = "user-serial"

.field public static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field public static final BRIGHTNESS_CONFIG_HISTORY_PATH_1:Ljava/lang/String; = "/data/log/Brightness_Configurations_1"

.field public static final BRIGHTNESS_CONFIG_HISTORY_PATH_2:Ljava/lang/String; = "/data/log/Brightness_Configurations_2"

.field public static final BRIGHTNESS_CONFIG_POSITION:Ljava/lang/String; = "/data/log/BC_Position"

.field public static final FILE_LIMIT:I = 0x186a0

.field public static final MAX_INITIATED_DEVICE_LIST_SIZE:I = 0x3

.field public static final POS_FIRST:I = 0x1

.field public static final POS_INITIAL:I = 0x0

.field public static final POS_SECOND:I = 0x2

.field public static final TAG:Ljava/lang/String; = "DisplayManager.PersistentDataStore"

.field public static final TAG_BRIGHTNESS_CONFIGURATION:Ljava/lang/String; = "brightness-configuration"

.field public static final TAG_BRIGHTNESS_CONFIGURATIONS:Ljava/lang/String; = "brightness-configurations"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "brightness-value"

.field public static final TAG_COLOR_MODE:Ljava/lang/String; = "color-mode"

.field public static final TAG_DISPLAY:Ljava/lang/String; = "display"

.field public static final TAG_DISPLAY_MANAGER_STATE:Ljava/lang/String; = "display-manager-state"

.field public static final TAG_DISPLAY_STATES:Ljava/lang/String; = "display-states"

.field public static final TAG_INITIATED_DEVICE:Ljava/lang/String; = "initiated-device"

.field public static final TAG_INITIATED_MIRRORING_UUID:Ljava/lang/String; = "initiated-mirroring-uuid"

.field public static final TAG_REMEMBERED_INITIATED_DEVICE:Ljava/lang/String; = "remembered-initiated-device"

.field public static final TAG_REMEMBERED_WIFI_DISPLAYS:Ljava/lang/String; = "remembered-wifi-displays"

.field public static final TAG_STABLE_DEVICE_VALUES:Ljava/lang/String; = "stable-device-values"

.field public static final TAG_STABLE_DISPLAY_HEIGHT:Ljava/lang/String; = "stable-display-height"

.field public static final TAG_STABLE_DISPLAY_WIDTH:Ljava/lang/String; = "stable-display-width"

.field public static final TAG_WIFI_DISPLAY:Ljava/lang/String; = "wifi-display"


# instance fields
.field public mDirty:Z

.field public final mDisplayStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/PersistentDataStore$DisplayState;",
            ">;"
        }
    .end annotation
.end field

.field public final mFileAccessLock:Ljava/lang/Object;

.field public mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field public final mHandler:Landroid/os/Handler;

.field public mInitiatedMirroringUuid:Ljava/lang/String;

.field public mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

.field public mIsFitToActiveDisplay:Z

.field public mLoaded:Z

.field public mRememberedInitiatedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRememberedWifiDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public final mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;


# direct methods
.method public static synthetic $r8$lambda$H69Qr_J3Haoq4dQ-SWaLnHyCO-w(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->lambda$save$0(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 195
    new-instance v0, Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;Landroid/os/Handler;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 176
    new-instance v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;-><init>(Lcom/android/server/display/PersistentDataStore$StableDeviceValues-IA;)V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 179
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 206
    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$save$0(Ljava/io/ByteArrayOutputStream;)V
    .registers 7

    .line 582
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 585
    :try_start_5
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore$Injector;->startWrite()Ljava/io/OutputStream;

    move-result-object v2

    .line 586
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 587
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_19
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    .line 592
    :try_start_11
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    :goto_13
    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_30

    goto :goto_26

    :catchall_17
    move-exception p1

    goto :goto_28

    :catch_19
    move-exception p1

    :try_start_1a
    const-string v3, "DisplayManager.PersistentDataStore"

    const-string v4, "Failed to save display manager persistent store data."

    .line 589
    invoke-static {v3, v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_17

    if-eqz v2, :cond_26

    .line 592
    :try_start_23
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    goto :goto_13

    .line 595
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    if-eqz v2, :cond_2f

    .line 592
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 594
    :cond_2f
    throw p1

    :catchall_30
    move-exception p0

    .line 595
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw p0
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 11

    if-eqz p1, :cond_46

    .line 232
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1c

    .line 237
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    move-object v4, v0

    .line 239
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    .line 241
    new-instance p0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object p0

    :cond_46
    return-object p1
.end method

.method public applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 8

    if-eqz p1, :cond_1f

    .line 251
    array-length v0, p1

    const/4 v1, 0x0

    move-object v3, p1

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1e

    .line 253
    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    .line 254
    aget-object v5, p1, v2

    if-eq v4, v5, :cond_1b

    if-ne v3, p1, :cond_19

    .line 256
    new-array v3, v0, [Landroid/hardware/display/WifiDisplay;

    .line 257
    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :cond_19
    aput-object v4, v3, v2

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    move-object p1, v3

    :cond_1f
    return-object p1
.end method

.method public final clearState()V
    .registers 1

    .line 541
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, "PersistentDataStore"

    .line 782
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  RememberedWifiDisplays:"

    .line 785
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ": "

    const-string v5, "    "

    if-eqz v3, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/WifiDisplay;

    .line 788
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    goto :goto_3e

    :cond_6a
    const-string v0, "  DisplayStates:"

    .line 790
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "      "

    if-eqz v2, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/display/PersistentDataStore$DisplayState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move v1, v7

    goto :goto_79

    :cond_b2
    const-string v0, "  StableDeviceValues:"

    .line 796
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "  GlobalBrightnessConfigurations:"

    .line 798
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final findRememberedWifiDisplay(Ljava/lang/String;)I
    .registers 5

    .line 295
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 297
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_13

    .line 287
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 288
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public getBrightness(Lcom/android/server/display/DisplayDevice;)F
    .registers 4

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p1, :cond_1c

    .line 328
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    .line 331
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p0

    if-nez p0, :cond_17

    return v0

    .line 335
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness()F

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 464
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 465
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessConfigurationForDisplayLocked(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    .line 455
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 456
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    if-eqz p0, :cond_12

    .line 458
    invoke-virtual {p0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorMode(Lcom/android/server/display/DisplayDevice;)I
    .registers 4

    .line 305
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 308
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p0

    if-nez p0, :cond_14

    return v1

    .line 312
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getColorMode()I

    move-result p0

    return p0
.end method

.method public final getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;
    .registers 4

    .line 469
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 470
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 472
    new-instance v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    const/4 p2, 0x0

    invoke-direct {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$DisplayState-IA;)V

    .line 473
    iget-object p2, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    :cond_1d
    return-object v0
.end method

.method public getInitiatedMirroringUuid()Ljava/lang/String;
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getRememberedActiveDisplayFitStatus()Z
    .registers 1

    .line 492
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 493
    iget-boolean p0, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    return p0
.end method

.method public getRememberedInitiatedDevices()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 498
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_12

    .line 220
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/WifiDisplay;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 2

    .line 226
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 227
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/display/WifiDisplay;

    return-object p0
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 1

    .line 400
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 401
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-static {p0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->-$$Nest$mgetDisplaySize(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;)F
    .registers 4

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p1, :cond_1c

    .line 365
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    .line 368
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p0

    if-nez p0, :cond_17

    return v0

    .line 372
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getRefreshRate()F

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    return v0
.end method

.method public getUserPreferredResolution(Lcom/android/server/display/DisplayDevice;)Landroid/graphics/Point;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 389
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1b

    .line 392
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    .line 396
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getResolution()Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public final load()V
    .registers 6

    .line 545
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_39

    .line 550
    :try_start_6
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore$Injector;->openRead()Ljava/io/InputStream;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_c} :catch_37
    .catchall {:try_start_6 .. :try_end_c} :catchall_39

    .line 557
    :try_start_c
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 558
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Landroid/util/TypedXmlPullParser;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_13} :catch_19
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 566
    :goto_13
    :try_start_13
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_39

    goto :goto_31

    :catchall_17
    move-exception p0

    goto :goto_33

    :catch_19
    move-exception v2

    :try_start_1a
    const-string v3, "DisplayManager.PersistentDataStore"

    const-string v4, "Failed to load display manager persistent store data."

    .line 563
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V

    goto :goto_13

    :catch_25
    move-exception v2

    const-string v3, "DisplayManager.PersistentDataStore"

    const-string v4, "Failed to load display manager persistent store data."

    .line 560
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_17

    goto :goto_13

    .line 568
    :goto_31
    :try_start_31
    monitor-exit v0

    return-void

    .line 566
    :goto_33
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 567
    throw p0

    .line 552
    :catch_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    .line 568
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final loadDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 661
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 662
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 663
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "unique-id"

    .line 664
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 669
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 673
    new-instance v3, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-direct {v3, v1}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$DisplayState-IA;)V

    .line 674
    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 670
    :cond_36
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Found duplicate display."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 666
    :cond_3e
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Missing unique-id attribute on display."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    return-void
.end method

.method public final loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "display-manager-state"

    .line 604
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 605
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 606
    :cond_9
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 607
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedWifiDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 610
    :cond_1f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display-states"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 613
    :cond_2e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stable-device-values"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 614
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 616
    :cond_40
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightness-configurations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 617
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 620
    :cond_51
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-active-display-fit-status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedActiveDisplayFitStatusFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 623
    :cond_61
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-initiated-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedInitiatedDevicesFromXml(Landroid/util/TypedXmlPullParser;)V

    .line 626
    :cond_71
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "initiated-mirroring-uuid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedInitiatedMirroringUuidFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_9

    :cond_82
    return-void
.end method

.method public loadIfNeeded()V
    .registers 2

    .line 480
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 481
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->load()V

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    :cond_a
    return-void
.end method

.method public final loadRememberedActiveDisplayFitStatusFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "activeDisplayFitStatus"

    .line 683
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadRememberedActiveDisplayFitStatusFromXml activeDisplayFitStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager.PersistentDataStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "true"

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    return-void
.end method

.method public final loadRememberedInitiatedDevicesFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 690
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 691
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 692
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "initiated-device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "macAddress"

    .line 693
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 698
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 699
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove invalid device  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager.PersistentDataStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 704
    :cond_44
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 706
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 695
    :cond_59
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Missing macAddress attribute on initiated-device."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    return-void
.end method

.method public final loadRememberedInitiatedMirroringUuidFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "uuid"

    .line 714
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    return-void
.end method

.method public final loadRememberedWifiDisplaysFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 635
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 636
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 637
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "deviceAddress"

    .line 638
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "deviceName"

    .line 639
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "deviceAlias"

    .line 640
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "deviceType"

    .line 642
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_51

    if-eqz v5, :cond_51

    .line 647
    invoke-virtual {p0, v4}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_49

    .line 652
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/display/WifiDisplay;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 648
    :cond_49
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Found duplicate wifi display device address."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 644
    :cond_51
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Missing deviceAddress or deviceName attribute on wifi-display."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    return-void
.end method

.method public rememberActiveDisplayFitStatus(Z)Z
    .registers 3

    .line 502
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 503
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 506
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 507
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    const/4 p0, 0x1

    return p0
.end method

.method public rememberInitiatedDevice(Ljava/lang/String;)Z
    .registers 5

    .line 512
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 515
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 516
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    .line 520
    :goto_14
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x3

    if-le p1, v2, :cond_27

    .line 522
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 525
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return v0
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .registers 4

    .line 267
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 269
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_23

    .line 271
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 272
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 277
    :cond_23
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    const/4 p0, 0x1

    return p0
.end method

.method public final save()V
    .registers 4

    .line 574
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 576
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 577
    invoke-virtual {p0, v1}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 578
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 580
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 581
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p0

    const-string v0, "DisplayManager.PersistentDataStore"

    const-string v1, "Failed to process the XML serializer."

    .line 598
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 210
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->save()V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    :cond_a
    return-void
.end method

.method public final saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    .line 720
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "display-manager-state"

    .line 721
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "remembered-wifi-displays"

    .line 722
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/WifiDisplay;

    const-string/jumbo v5, "wifi-display"

    .line 724
    invoke-interface {p1, v1, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAddress"

    invoke-interface {p1, v1, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceName"

    invoke-interface {p1, v1, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 728
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAlias"

    invoke-interface {p1, v1, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    :cond_51
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 732
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "deviceType"

    invoke-interface {p1, v1, v6, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    :cond_60
    invoke-interface {p1, v1, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1e

    .line 736
    :cond_64
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "display-states"

    .line 737
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 739
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 740
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/PersistentDataStore$DisplayState;

    const-string v6, "display"

    .line 741
    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "unique-id"

    .line 742
    invoke-interface {p1, v1, v7, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 743
    invoke-virtual {v4, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 744
    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_76

    .line 746
    :cond_a0
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "stable-device-values"

    .line 747
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 749
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "brightness-configurations"

    .line 750
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 752
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "remembered-active-display-fit-status"

    .line 755
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    iget-boolean v3, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activeDisplayFitStatus"

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveToXml remembered active display fit status value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManager.PersistentDataStore"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "remembered-changed-view-mode"

    .line 760
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "remembered-initiated-device"

    .line 763
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_104
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_120

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "initiated-device"

    .line 765
    invoke-interface {p1, v1, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "macAddress"

    .line 766
    invoke-interface {p1, v1, v6, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    invoke-interface {p1, v1, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_104

    .line 769
    :cond_120
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "initiated-mirroring-uuid"

    .line 771
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    if-eqz p0, :cond_133

    const-string/jumbo v3, "uuid"

    .line 773
    invoke-interface {p1, v1, v3, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    :cond_133
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public setBrightness(Lcom/android/server/display/DisplayDevice;F)Z
    .registers 5

    .line 339
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    if-nez v0, :cond_e

    goto :goto_1d

    :cond_e
    const/4 p1, 0x1

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setBrightness(F)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 345
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return p1

    :cond_1d
    :goto_1d
    return v1
.end method

.method public setBrightnessConfigurationForDisplayLocked(Landroid/hardware/display/BrightnessConfiguration;Lcom/android/server/display/DisplayDevice;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    .line 441
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1d

    .line 444
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p2

    .line 445
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 446
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return v1

    :cond_1d
    :goto_1d
    return v0
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 5

    .line 414
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 415
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 418
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 421
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 429
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 431
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 434
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {p0, p4, p5, p6}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    .registers 5

    .line 316
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 319
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p1

    .line 320
    invoke-virtual {p1, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setColorMode(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 321
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return v0

    :cond_1b
    return v1
.end method

.method public final setDirty()V
    .registers 2

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    return-void
.end method

.method public setInitiatedMirroringUuid(Ljava/lang/String;)V
    .registers 2

    .line 530
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 531
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 532
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return-void
.end method

.method public setStableDisplaySize(Landroid/graphics/Point;)V
    .registers 3

    .line 405
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 406
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->setDisplaySize(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 407
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    :cond_e
    return-void
.end method

.method public setUserPreferredRefreshRate(Lcom/android/server/display/DisplayDevice;F)Z
    .registers 6

    .line 352
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    if-nez v0, :cond_e

    goto :goto_21

    .line 356
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p1

    .line 357
    invoke-virtual {p1, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setRefreshRate(F)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 358
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return v0

    :cond_21
    :goto_21
    return v2
.end method

.method public setUserPreferredResolution(Lcom/android/server/display/DisplayDevice;II)Z
    .registers 7

    .line 376
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    if-nez v0, :cond_e

    goto :goto_21

    .line 380
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p1

    .line 381
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setResolution(II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 382
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    return v0

    :cond_21
    :goto_21
    return v2
.end method
