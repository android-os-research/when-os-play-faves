.class public Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.super Ljava/lang/Object;
.source "SemHalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;,
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;
    }
.end annotation


# static fields
.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static final IFACE_TYPES_BY_PRIORITY:[I

.field private static final TAG:Ljava/lang/String; = "SemHalDeviceManager"

.field private static final VDBG:Z = false


# instance fields
.field private mDbg:Z

.field private mDebugChipsInfo:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

.field private final mISehWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mIsReady:Z

.field private mIsVendorHalSupported:Z

.field private final mLock:Ljava/lang/Object;

.field private final mManagerStatusListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

.field private mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

.field private final mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

.field private mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;


# direct methods
.method public static synthetic $r8$lambda$-HprVPWNaVMijodti_o5qhz-yaI(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getVendorConnFileInfo$15(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7YEuazv9ONLjuyhNXGBj73B4YIY(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getTwtParameters$18(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9g4RXCEG4T2Zw7Uq-LGgEmTLEZo(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$3(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZr27GsSnZAfVH3ZtFP3xqivCjQ(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$8(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aci6viYcoT8btbAObDEqZikriXg(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$5(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BKaoT2ZK4TZED4XQoqdXTVxjrFc(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$new$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$DBi9CuuwB6j-fn2eR5kAEX2jUzo(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$6(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$F3hBigcV-CiqqlzceJGjR1rPdLo(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$7(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ik5aC-D06mzQ53tHkQGImXwnqxE(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$12(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1etIFLs3n0PuZmyiQ28hYovu0I(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getName$13(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N1RklTjOXY9JIvILBbz8wEnkOak(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$9(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RcfK0H4VpznzE6cuCZWCwIAgVyQ(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getVendorProperty$16(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XpWG3dgdJ0Zwwu6O2ghpyw7IxGk(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$11(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YI0KOrnuJo_nQmazLmIZduUX4HY(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$new$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPHNvHxGHddpYpXFwysrPsBWLko(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getVendorConnFileInfo$14(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apKBlGjgSyTpg-PwIzz03avDUT0(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$10(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b0zWUM81lEjeZdUu5Q9q5al6fXE(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$new$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkXFa8uw0HzHtUW0YWI_QgAhAvg(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getAllChipInfo$4(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ws4YTXOiatWEa_Eyt4_3tI1jgNA(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->lambda$getChipsetVendorName$17(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitISehWifiIfNecessary(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initISehWifiIfNecessary()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetIFACE_TYPES_BY_PRIORITY()[I
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 494
    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->IFACE_TYPES_BY_PRIORITY:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDebugChipsInfo:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsVendorHalSupported:Z

    .line 158
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mISehWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 168
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 178
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 401
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-void
.end method

.method private createIface(ILcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;
    .registers 8

    .line 446
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    if-eqz p2, :cond_1a

    const-string p2, "SemHalDeviceManager"

    .line 447
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createIface: ifaceType="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 451
    :try_start_1d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getAllChipInfo()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_2d

    const-string p0, "SemHalDeviceManager"

    const-string p1, "createIface: no chip info found"

    .line 453
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit p2

    return-object p3

    .line 457
    :cond_2d
    array-length v0, p0

    if-lez v0, :cond_6b

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    aget-object v1, v1, p1

    if-eqz v1, :cond_6b

    if-eqz p4, :cond_5c

    .line 458
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_42

    goto :goto_5c

    .line 462
    :cond_42
    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    aget-object p0, p0, p1

    array-length p1, p0

    :goto_49
    if-ge v0, p1, :cond_6b

    aget-object v1, p0, v0

    .line 463
    iget-object v2, v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 464
    iget-object p0, v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    monitor-exit p2

    return-object p0

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 459
    :cond_5c
    :goto_5c
    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    aget-object p0, p0, p1

    array-length p1, p0

    if-lez p1, :cond_6b

    .line 460
    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    monitor-exit p2

    return-object p0

    .line 468
    :cond_6b
    monitor-exit p2

    return-object p3

    :catchall_6d
    move-exception p0

    .line 469
    monitor-exit p2
    :try_end_6f
    .catchall {:try_start_1d .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method private getAllChipInfo()[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;
    .registers 19

    move-object/from16 v0, p0

    .line 541
    iget-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    const-string v0, "SemHalDeviceManager"

    const-string v2, "getAllChipInfo: called but mWifi is null!?"

    .line 543
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1ff

    return-object v3

    .line 548
    :cond_13
    :try_start_13
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 549
    new-instance v5, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v5}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 552
    iget-object v6, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    new-instance v7, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2, v5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getChipIds(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipIdsCallback;)V

    .line 560
    iget-boolean v6, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_1e5
    .catchall {:try_start_13 .. :try_end_2a} :catchall_1ff

    if-nez v6, :cond_2e

    .line 561
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1ff

    return-object v3

    .line 565
    :cond_2e
    :try_start_2e
    iget-object v6, v5, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_41

    const-string v0, "SemHalDeviceManager"

    const-string v2, "Should have at least 1 chip!"

    .line 566
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3f} :catch_1e5
    .catchall {:try_start_2e .. :try_end_3f} :catchall_1ff

    .line 567
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_1ff

    return-object v3

    .line 571
    :cond_41
    :try_start_41
    iget-object v6, v5, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    .line 573
    new-instance v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v7}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 574
    iget-object v5, v5, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v4

    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1dd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 575
    iget-object v10, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda1;

    invoke-direct {v12, v2, v7}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v10, v11, v12}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getChip(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi$getChipCallback;)V

    .line 583
    iget-boolean v10, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_75} :catch_1e5
    .catchall {:try_start_41 .. :try_end_75} :catchall_1ff

    if-nez v10, :cond_79

    .line 584
    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_1ff

    return-object v3

    .line 587
    :cond_79
    :try_start_79
    new-instance v10, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v10}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 588
    iget-object v11, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v11, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    new-instance v12, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda2;

    invoke-direct {v12, v2, v10}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda2;-><init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v11, v12}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    .line 597
    iget-boolean v11, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_8c} :catch_1e5
    .catchall {:try_start_79 .. :try_end_8c} :catchall_1ff

    if-nez v11, :cond_90

    .line 598
    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_1ff

    return-object v3

    .line 601
    :cond_90
    :try_start_90
    new-instance v11, Landroid/util/MutableBoolean;

    invoke-direct {v11, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 602
    new-instance v12, Landroid/util/MutableInt;

    invoke-direct {v12, v4}, Landroid/util/MutableInt;-><init>(I)V

    .line 603
    iget-object v13, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v13, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    new-instance v14, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;

    invoke-direct {v14, v2, v11, v12}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;-><init>(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;)V

    invoke-interface {v13, v14}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    .line 614
    iget-boolean v13, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_a8} :catch_1e5
    .catchall {:try_start_90 .. :try_end_a8} :catchall_1ff

    if-nez v13, :cond_ac

    .line 615
    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_1ff

    return-object v3

    .line 618
    :cond_ac
    :try_start_ac
    new-instance v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v13}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 619
    new-instance v14, Landroid/util/MutableInt;

    invoke-direct {v14, v4}, Landroid/util/MutableInt;-><init>(I)V

    .line 621
    iget-object v15, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v15, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, v13}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda4;-><init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v15, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    .line 630
    iget-boolean v4, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_c4} :catch_1e5
    .catchall {:try_start_ac .. :try_end_c4} :catchall_1ff

    if-nez v4, :cond_c8

    .line 631
    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_1ff

    return-object v3

    .line 634
    :cond_c8
    :try_start_c8
    iget-object v4, v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 635
    iget-object v15, v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_da
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_105

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    move-object/from16 v16, v5

    .line 636
    iget-object v5, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    move-object/from16 v17, v15

    new-instance v15, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda5;

    invoke-direct {v15, v2, v3, v4, v14}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda5;-><init>(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v5, v3, v15}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    .line 648
    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_fa} :catch_1e5
    .catchall {:try_start_c8 .. :try_end_fa} :catchall_1ff

    if-nez v3, :cond_ff

    .line 649
    :try_start_fc
    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_1ff

    const/4 v1, 0x0

    return-object v1

    :cond_ff
    move-object/from16 v5, v16

    move-object/from16 v15, v17

    const/4 v3, 0x0

    goto :goto_da

    :cond_105
    move-object/from16 v16, v5

    const/4 v3, 0x0

    .line 653
    :try_start_108
    iput v3, v14, Landroid/util/MutableInt;->value:I

    .line 654
    iget-object v3, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;

    invoke-direct {v5, v2, v13}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;-><init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v3, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    .line 663
    iget-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_108 .. :try_end_118} :catch_1e5
    .catchall {:try_start_108 .. :try_end_118} :catchall_1ff

    if-nez v3, :cond_11d

    .line 664
    :try_start_11a
    monitor-exit v1
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_1ff

    const/4 v1, 0x0

    return-object v1

    .line 667
    :cond_11d
    :try_start_11d
    iget-object v3, v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 668
    iget-object v5, v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_155

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v5

    .line 669
    iget-object v5, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, v2, v15, v3, v14}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda7;-><init>(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v5, v15, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    .line 681
    iget-boolean v0, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_14b} :catch_1e5
    .catchall {:try_start_11d .. :try_end_14b} :catchall_1ff

    if-nez v0, :cond_150

    .line 682
    :try_start_14d
    monitor-exit v1
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_1ff

    const/4 v1, 0x0

    return-object v1

    :cond_150
    move-object/from16 v0, p0

    move-object/from16 v5, v17

    goto :goto_12f

    :cond_155
    const/4 v0, 0x0

    .line 686
    :try_start_156
    iput v0, v14, Landroid/util/MutableInt;->value:I

    .line 687
    iget-object v0, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2, v13}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda8;-><init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v0, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    .line 696
    iget-boolean v0, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_166
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_166} :catch_1e5
    .catchall {:try_start_156 .. :try_end_166} :catchall_1ff

    if-nez v0, :cond_16b

    .line 697
    :try_start_168
    monitor-exit v1
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_1ff

    const/4 v1, 0x0

    return-object v1

    .line 700
    :cond_16b
    :try_start_16b
    iget-object v0, v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    .line 701
    iget-object v5, v13, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 702
    iget-object v15, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v15, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    move-object/from16 v17, v5

    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;

    invoke-direct {v5, v2, v13, v0, v14}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;-><init>(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V

    invoke-interface {v15, v13, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    .line 714
    iget-boolean v5, v2, Landroid/util/MutableBoolean;->value:Z
    :try_end_199
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_199} :catch_1e5
    .catchall {:try_start_16b .. :try_end_199} :catchall_1ff

    if-nez v5, :cond_19e

    .line 715
    :try_start_19b
    monitor-exit v1
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_1ff

    const/4 v1, 0x0

    return-object v1

    :cond_19e
    move-object/from16 v5, v17

    goto :goto_17d

    .line 719
    :cond_1a1
    :try_start_1a1
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo-IA;)V

    add-int/lit8 v13, v8, 0x1

    .line 720
    aput-object v5, v6, v8

    .line 722
    iget-object v8, v7, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    iput-object v8, v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chip:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;

    .line 723
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->chipId:I

    .line 724
    iget-object v8, v10, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    .line 725
    iget-boolean v8, v11, Landroid/util/MutableBoolean;->value:Z

    iput-boolean v8, v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    .line 726
    iget v8, v12, Landroid/util/MutableInt;->value:I

    iput v8, v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->currentModeId:I

    .line 727
    iget-object v5, v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 728
    aput-object v9, v5, v4

    const/4 v4, 0x2

    .line 729
    aput-object v3, v5, v4

    const/4 v3, 0x3

    .line 730
    aput-object v0, v5, v3

    move-object/from16 v0, p0

    move v4, v8

    move v8, v13

    move-object/from16 v5, v16

    const/4 v3, 0x0

    goto/16 :goto_59

    .line 733
    :cond_1dd
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDebugChipsInfo:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    if-nez v2, :cond_1e3

    iput-object v6, v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDebugChipsInfo:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;
    :try_end_1e3
    .catch Landroid/os/RemoteException; {:try_start_1a1 .. :try_end_1e3} :catch_1e5
    .catchall {:try_start_1a1 .. :try_end_1e3} :catchall_1ff

    .line 734
    :cond_1e3
    :try_start_1e3
    monitor-exit v1

    return-object v6

    :catch_1e5
    move-exception v0

    const-string v2, "SemHalDeviceManager"

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllChipInfoAndValidateCache exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    :catchall_1ff
    move-exception v0

    monitor-exit v1
    :try_end_201
    .catchall {:try_start_1e3 .. :try_end_201} :catchall_1ff

    throw v0
.end method

.method public static getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "<null>"

    return-object p0

    .line 751
    :cond_5
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 753
    :try_start_a
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p0

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception on getName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemHalDeviceManager"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_2a
    iget-object p0, v0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private initISehWifiIfNecessary()V
    .registers 6

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_b

    const-string v0, "SemHalDeviceManager"

    const-string v1, "initISehWifiIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    if-eqz v1, :cond_14

    .line 231
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_70

    return-void

    .line 234
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiServiceMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    if-nez v1, :cond_25

    const-string p0, "SemHalDeviceManager"

    const-string v1, "ISehWifi not (yet) available - but have a listener for it ..."

    .line 236
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_57
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_23} :catch_3f
    .catchall {:try_start_14 .. :try_end_23} :catchall_70

    .line 237
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_70

    return-void

    .line 240
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mISehWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_38

    const-string p0, "SemHalDeviceManager"

    const-string v1, "Error on linkToDeath on ISehWifi - will retry later"

    .line 241
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_36} :catch_57
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_36} :catch_3f
    .catchall {:try_start_25 .. :try_end_36} :catchall_70

    .line 242
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_70

    return-void

    .line 245
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->managerStatusListenerDispatch()V

    const/4 v1, 0x1

    .line 246
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsReady:Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3e} :catch_57
    .catch Ljava/util/NoSuchElementException; {:try_start_38 .. :try_end_3e} :catch_3f
    .catchall {:try_start_38 .. :try_end_3e} :catchall_70

    goto :goto_6e

    :catch_3f
    move-exception p0

    :try_start_40
    const-string v1, "SemHalDeviceManager"

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception(2) while operating on ISehWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :catch_57
    move-exception p0

    const-string v1, "SemHalDeviceManager"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while operating on ISehWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_6e
    monitor-exit v0

    return-void

    :catchall_70
    move-exception p0

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_40 .. :try_end_72} :catchall_70

    throw p0
.end method

.method private initIServiceManagerIfNecessary()V
    .registers 7

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_b

    const-string v0, "SemHalDeviceManager"

    const-string v1, "initIServiceManagerIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    if-eqz v1, :cond_14

    .line 196
    monitor-exit v0

    return-void

    .line 199
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    if-nez v1, :cond_24

    const-string p0, "SemHalDeviceManager"

    const-string v1, "Failed to get IServiceManager instance"

    .line 201
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_73

    goto :goto_71

    :cond_24
    const/4 v2, 0x0

    .line 204
    :try_start_25
    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManagerDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "SemHalDeviceManager"

    const-string v3, "Error on linkToDeath on IServiceManager"

    .line 206
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_52
    .catchall {:try_start_25 .. :try_end_38} :catchall_73

    .line 208
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_73

    return-void

    .line 210
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    const-string v3, "vendor.samsung.hardware.wifi@2.0::ISehWifi"

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v1, v3, v4, v5}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, "SemHalDeviceManager"

    const-string v3, "Failed to register a listener for ISehWifi service"

    .line 212
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_51} :catch_52
    .catchall {:try_start_3a .. :try_end_51} :catchall_73

    goto :goto_6b

    :catch_52
    move-exception v1

    :try_start_53
    const-string v3, "SemHalDeviceManager"

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while operating on IServiceManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 221
    :cond_6b
    :goto_6b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isSupportedInternal()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsVendorHalSupported:Z

    .line 223
    :goto_71
    monitor-exit v0

    return-void

    :catchall_73
    move-exception p0

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_73

    throw p0
.end method

.method private initIWifiIfNecessary()V
    .registers 5

    .line 363
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    if-eqz v0, :cond_b

    const-string v0, "SemHalDeviceManager"

    const-string v1, "initIWifiIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    if-eqz v1, :cond_14

    .line 367
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_69

    return-void

    .line 371
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getWifiServiceMockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    if-nez v1, :cond_25

    const-string p0, "SemHalDeviceManager"

    const-string v1, "IWifi not (yet) available - but have a listener for it ..."

    .line 373
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_50
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_23} :catch_38
    .catchall {:try_start_14 .. :try_end_23} :catchall_69

    .line 374
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_69

    return-void

    .line 377
    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIWifiDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    if-nez p0, :cond_67

    const-string p0, "SemHalDeviceManager"

    const-string v1, "Error on linkToDeath on IWifi - will retry later"

    .line 378
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_36} :catch_50
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_36} :catch_38
    .catchall {:try_start_25 .. :try_end_36} :catchall_69

    .line 379
    :try_start_36
    monitor-exit v0

    return-void

    :catch_38
    move-exception p0

    const-string v1, "SemHalDeviceManager"

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception(2) while operating on IWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catch_50
    move-exception p0

    const-string v1, "SemHalDeviceManager"

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while operating on IWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_67
    :goto_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_36 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method private initializeInternal()V
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initIServiceManagerIfNecessary()V

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsVendorHalSupported:Z

    if-eqz v0, :cond_d

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initISehWifiIfNecessary()V

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initIWifiIfNecessary()V

    :cond_d
    return-void
.end method

.method private isSupportedInternal()Z
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    const/4 v1, 0x0

    if-nez p0, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string v2, "isSupported: called but mServiceManager is null!?"

    .line 104
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_38

    return v1

    :cond_11
    :try_start_11
    const-string v2, "vendor.samsung.hardware.wifi@2.0::ISehWifi"

    .line 109
    invoke-interface {p0, v2}, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;->listManifestByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1f
    .catchall {:try_start_11 .. :try_end_1b} :catchall_38

    xor-int/lit8 p0, p0, 0x1

    :try_start_1d
    monitor-exit v0

    return p0

    :catch_1f
    move-exception p0

    const-string v2, "SemHalDeviceManager"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while operating on IServiceManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v0

    return v1

    :catchall_38
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_38

    throw p0
.end method

.method private static synthetic lambda$getAllChipInfo$10(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;)V
    .registers 7

    .line 671
    iget v0, p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 672
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_20

    .line 673
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo-IA;)V

    .line 674
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 675
    iput-object p5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    .line 676
    iget p1, p3, Landroid/util/MutableInt;->value:I

    add-int/lit8 p4, p1, 0x1

    iput p4, p3, Landroid/util/MutableInt;->value:I

    aput-object p0, p2, p1

    goto :goto_3a

    .line 678
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getP2pIface failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$11(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 5

    .line 689
    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 690
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_10

    .line 691
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_2a

    .line 693
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNanIfaceNames failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$12(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .registers 7

    .line 704
    iget v0, p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 705
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_20

    .line 706
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo-IA;)V

    .line 707
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 708
    iput-object p5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    .line 709
    iget p1, p3, Landroid/util/MutableInt;->value:I

    add-int/lit8 p4, p1, 0x1

    iput p4, p3, Landroid/util/MutableInt;->value:I

    aput-object p0, p2, p1

    goto :goto_3a

    .line 711
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNanIface failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$3(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 5

    .line 553
    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 554
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_10

    .line 555
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_2a

    .line 557
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getChipIds failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$4(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;)V
    .registers 5

    .line 576
    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 577
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_10

    .line 578
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_2a

    .line 580
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getChip failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$5(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 5

    .line 590
    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 591
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_10

    .line 592
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_2a

    .line 594
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAvailableModes failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$6(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .registers 7

    .line 604
    iget v0, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 605
    iget-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v0, :cond_13

    .line 606
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    .line 607
    iput p4, p2, Landroid/util/MutableInt;->value:I

    goto :goto_35

    .line 608
    :cond_13
    iget p1, p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1b

    .line 609
    iput-boolean v1, p0, Landroid/util/MutableBoolean;->value:Z

    goto :goto_35

    .line 611
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMode failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$7(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 5

    .line 623
    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 624
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_10

    .line 625
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_2a

    .line 627
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getStaIfaceNames failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$8(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;)V
    .registers 7

    .line 638
    iget v0, p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 639
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_20

    .line 640
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo-IA;)V

    .line 641
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->name:Ljava/lang/String;

    .line 642
    iput-object p5, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;->iface:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    .line 643
    iget p1, p3, Landroid/util/MutableInt;->value:I

    add-int/lit8 p4, p1, 0x1

    iput p4, p3, Landroid/util/MutableInt;->value:I

    aput-object p0, p2, p1

    goto :goto_3a

    .line 645
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getStaIface failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private static synthetic lambda$getAllChipInfo$9(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 5

    .line 656
    iget v0, p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Landroid/util/MutableBoolean;->value:Z

    .line 657
    iget-boolean p0, p0, Landroid/util/MutableBoolean;->value:Z

    if-eqz p0, :cond_10

    .line 658
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_2a

    .line 660
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getP2pIfaceNames failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static synthetic lambda$getChipsetVendorName$17(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 4

    .line 962
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 963
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$getName$13(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 4

    .line 754
    iget v0, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez v0, :cond_7

    .line 755
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    goto :goto_21

    .line 757
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on getName: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHalDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method private static synthetic lambda$getTwtParameters$18(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;)V
    .registers 4

    .line 993
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 994
    iput-object p3, p1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$getVendorConnFileInfo$14(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    .line 783
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez p1, :cond_6

    .line 784
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private static synthetic lambda$getVendorConnFileInfo$15(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    .line 790
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez p1, :cond_6

    .line 791
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private static synthetic lambda$getVendorProperty$16(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 3

    .line 918
    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez p1, :cond_6

    .line 919
    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .registers 6

    const-string v0, "SemHalDeviceManager"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehWifi HAL service died! Have a listener for it ... cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 162
    :try_start_1a
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 p2, 0x0

    .line 163
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsReady:Z

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->managerStatusListenerDispatch()V

    .line 165
    monitor-exit p1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw p0
.end method

.method private synthetic lambda$new$1(J)V
    .registers 6

    const-string v0, "SemHalDeviceManager"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IServiceManager died: cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 172
    :try_start_1a
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    .line 175
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private synthetic lambda$new$2(J)V
    .registers 6

    const-string v0, "SemHalDeviceManager"

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWifi HAL service died! Have a listener for it ... cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 405
    :try_start_1a
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    .line 406
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private managerStatusListenerDispatch()V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;

    .line 278
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->trigger()V

    goto :goto_9

    .line 280
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static statusString(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "status=null"

    return-object p0

    .line 1022
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createNanIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createIface(ILcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;

    return-object p0
.end method

.method public createP2pIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 431
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createIface(ILcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiP2pIface;

    return-object p0
.end method

.method public createStaIface(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;
    .registers 5

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->createIface(ILcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p0

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 343
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    const-string p3, "SemHalDeviceManager:"

    .line 344
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mServiceManager: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSehWifi: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mManagerStatusListeners: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mWifi: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mWifi:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mDebugChipsInfo: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDebugChipsInfo:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiChipInfo;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    monitor-exit p1

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 77
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mDbg:Z

    return-void
.end method

.method public getChipsetVendorName()Ljava/lang/String;
    .registers 6

    .line 955
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 957
    :try_start_4
    new-instance v2, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 958
    new-instance v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 959
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiForV2_2Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 961
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p0, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getChipsetVendorName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;)V

    .line 965
    iget-object p0, v2, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez p0, :cond_2a

    .line 966
    iget-object p0, v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_3e
    .catchall {:try_start_4 .. :try_end_28} :catchall_3c

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3c

    return-object p0

    :cond_2a
    :try_start_2a
    const-string p0, "SemHalDeviceManager"

    const-string v2, "Failed to get vendor name"

    .line 968
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_3e
    .catchall {:try_start_2a .. :try_end_31} :catchall_3c

    .line 969
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_3c

    return-object v1

    :cond_33
    :try_start_33
    const-string p0, "SemHalDeviceManager"

    const-string v2, "sehWifiV2_2 is null"

    .line 972
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_3e
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3c

    .line 973
    :try_start_3a
    monitor-exit v0

    return-object v1

    :catchall_3c
    move-exception p0

    goto :goto_57

    :catch_3e
    move-exception p0

    const-string v2, "SemHalDeviceManager"

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on getChipsetVendorName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    monitor-exit v0

    return-object v1

    .line 979
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_3c

    throw p0
.end method

.method protected getSehWifiForV2_2Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_6
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    return-object p0
.end method

.method protected getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_6
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    move-result-object p0

    return-object p0
.end method

.method protected getSehWifiServiceMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;
    .registers 3

    .line 129
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->getService()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getting ISehWifi service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemHalDeviceManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;
    .registers 3

    .line 120
    :try_start_0
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_2/IServiceManager;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getting IServiceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemHalDeviceManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTwtParameters()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 988
    :try_start_4
    new-instance v2, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 989
    new-instance v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 990
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiForV2_2Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    if-eqz p0, :cond_52

    .line 992
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda11;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p0, v4}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getTwtParameters(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;)V

    .line 996
    iget-object p0, v2, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I

    if-nez p0, :cond_49

    .line 997
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "minServicePeriod"

    .line 998
    iget-object v4, v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;

    iget v4, v4, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;->minTwtServicePeriod:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "minInterval"

    .line 999
    iget-object v3, v3, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;

    iget v3, v3, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;->minTwtInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_47} :catch_5d
    .catchall {:try_start_4 .. :try_end_47} :catchall_5b

    .line 1000
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_5b

    return-object p0

    :cond_49
    :try_start_49
    const-string p0, "SemHalDeviceManager"

    const-string v2, "Failed to get TWT related parameters"

    .line 1002
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_5d
    .catchall {:try_start_49 .. :try_end_50} :catchall_5b

    .line 1003
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_5b

    return-object v1

    :cond_52
    :try_start_52
    const-string p0, "SemHalDeviceManager"

    const-string v2, "getTwtParameters: called but sehWifiV2_1 is null"

    .line 1006
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_59} :catch_5d
    .catchall {:try_start_52 .. :try_end_59} :catchall_5b

    .line 1007
    :try_start_59
    monitor-exit v0

    return-object v1

    :catchall_5b
    move-exception p0

    goto :goto_76

    :catch_5d
    move-exception p0

    const-string v2, "SemHalDeviceManager"

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on getTwtParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit v0

    return-object v1

    .line 1013
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_59 .. :try_end_77} :catchall_5b

    throw p0
.end method

.method public getVendorConnFileInfo(I)Ljava/lang/String;
    .registers 6

    .line 770
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string p1, "getVendorConnFileInfo: called but mSehWifi is null"

    .line 772
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_4e

    return-object v2

    .line 777
    :cond_11
    :try_start_11
    new-instance v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 779
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 781
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda12;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {v3, p1, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->readFile_2_3(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi$readFile_2_3Callback;)V

    goto :goto_2f

    .line 788
    :cond_25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p0, p1, v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->readFile(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$readFileCallback;)V

    .line 795
    :goto_2f
    iget-object p0, v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_33} :catch_35
    .catchall {:try_start_11 .. :try_end_33} :catchall_4e

    :try_start_33
    monitor-exit v0

    return-object p0

    :catch_35
    move-exception p0

    const-string p1, "SemHalDeviceManager"

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on getVendorConnFileInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    monitor-exit v0

    return-object v2

    :catchall_4e
    move-exception p0

    .line 800
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public getVendorProperty(I)Ljava/lang/String;
    .registers 6

    .line 908
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string p1, "getVendorProperty: called but mSehWifi is null"

    .line 910
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3f

    return-object v2

    .line 915
    :cond_11
    :try_start_11
    new-instance v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;-><init>()V

    .line 916
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    new-instance v3, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V

    invoke-interface {p0, p1, v3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->getProperty(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi$getPropertyCallback;)V

    .line 922
    iget-object p0, v1, Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_26
    .catchall {:try_start_11 .. :try_end_24} :catchall_3f

    :try_start_24
    monitor-exit v0

    return-object p0

    :catch_26
    move-exception p0

    const-string p1, "SemHalDeviceManager"

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on getVendorProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    monitor-exit v0

    return-object v2

    :catchall_3f
    move-exception p0

    .line 927
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method protected getWifiServiceMockable()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;
    .registers 3

    const/4 p0, 0x1

    .line 394
    :try_start_1
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;->getService(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifi;

    move-result-object p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception getting IWifi service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemHalDeviceManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->initializeInternal()V

    return-void
.end method

.method public isReady()Z
    .registers 1

    .line 261
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsReady:Z

    return p0
.end method

.method public isSupported()Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mIsVendorHalSupported:Z

    return p0
.end method

.method public registerStatusListener(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListenerProxy;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 268
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mManagerStatusListeners:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "SemHalDeviceManager"

    const-string p1, "registerStatusListener: duplicate registration ignored"

    .line 269
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ListenerProxy;->trigger()V

    .line 272
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public removeVendorConnFile(I)Z
    .registers 6

    .line 881
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string p1, "removeVendorConnFile: called but mSehWifi is null"

    .line 883
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_42

    return v2

    .line 890
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 892
    invoke-interface {v1, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->removeFile_2_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    goto :goto_22

    .line 894
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 896
    :goto_22
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_29
    .catchall {:try_start_11 .. :try_end_24} :catchall_42

    if-nez p0, :cond_27

    const/4 v2, 0x1

    :cond_27
    :try_start_27
    monitor-exit v0

    return v2

    :catch_29
    move-exception p0

    const-string p1, "SemHalDeviceManager"

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on removeVendorConnFile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    monitor-exit v0

    return v2

    :catchall_42
    move-exception p0

    .line 901
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public removeVendorLogFiles()Z
    .registers 6

    .line 861
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v1, 0x0

    if-nez p0, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string v2, "removeVendorLogFiles: called but mSehWifi is null"

    .line 863
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_35

    return v1

    .line 868
    :cond_11
    :try_start_11
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->removeLogFiles()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 869
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_1c
    .catchall {:try_start_11 .. :try_end_17} :catchall_35

    if-nez p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    :try_start_1a
    monitor-exit v0

    return v1

    :catch_1c
    move-exception p0

    const-string v2, "SemHalDeviceManager"

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on removeVendorLogFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    monitor-exit v0

    return v1

    :catchall_35
    move-exception p0

    .line 874
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setVendorProperty(ILjava/lang/String;)Z
    .registers 6

    .line 934
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v1, 0x0

    if-nez p0, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string p1, "setVendorProperty: called but mSehWifi is null"

    .line 936
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_39

    return v1

    .line 942
    :cond_11
    :try_start_11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 941
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->setProperty(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 943
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_20
    .catchall {:try_start_11 .. :try_end_1b} :catchall_39

    if-nez p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    :try_start_1e
    monitor-exit v0

    return v1

    :catch_20
    move-exception p0

    const-string p1, "SemHalDeviceManager"

    .line 945
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception on setVendorProperty: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    monitor-exit v0

    return v1

    :catchall_39
    move-exception p0

    .line 948
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public updateVendorConnFile(I)Z
    .registers 6

    .line 834
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string p1, "updateVendorConnFile: called but mSehWifi is null"

    .line 836
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_42

    return v2

    .line 843
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 845
    invoke-interface {v1, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->updateFile_2_3(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    goto :goto_22

    .line 847
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->updateFile(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 849
    :goto_22
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_29
    .catchall {:try_start_11 .. :try_end_24} :catchall_42

    if-nez p0, :cond_27

    const/4 v2, 0x1

    :cond_27
    :try_start_27
    monitor-exit v0

    return v2

    :catch_29
    move-exception p0

    const-string p1, "SemHalDeviceManager"

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on updateVendorConnFile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    monitor-exit v0

    return v2

    :catchall_42
    move-exception p0

    .line 854
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public writeVendorConnFile(ILjava/lang/String;)Z
    .registers 6

    .line 807
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string p0, "SemHalDeviceManager"

    const-string p1, "writeVendorConnFile: called but mSehWifi is null"

    .line 809
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_42

    return v2

    .line 816
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSehWifiForV2_3Mockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 818
    invoke-interface {v1, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_3/ISehWifi;->writeFile_2_3(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    goto :goto_22

    .line 820
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->mSehWifi:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_0/ISehWifi;->writeFile(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 822
    :goto_22
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->code:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_29
    .catchall {:try_start_11 .. :try_end_24} :catchall_42

    if-nez p0, :cond_27

    const/4 v2, 0x1

    :cond_27
    :try_start_27
    monitor-exit v0

    return v2

    :catch_29
    move-exception p0

    const-string p1, "SemHalDeviceManager"

    .line 824
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception on writeVendorConnFile: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    monitor-exit v0

    return v2

    :catchall_42
    move-exception p0

    .line 827
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_42

    throw p0
.end method
