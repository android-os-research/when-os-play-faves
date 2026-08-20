.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$PortInfo;
    }
.end annotation


# static fields
.field public static final COMBO_SINK_DEVICE:I

.field public static final COMBO_SINK_HOST:I

.field public static final COMBO_SOURCE_DEVICE:I

.field public static final COMBO_SOURCE_HOST:I

.field public static final HINT_TYPE_USB_PORT_MANAGER_BOOSTER_VALUE:I = 0x47e

.field public static final MSG_SYSTEM_READY:I = 0x2

.field public static final MSG_UPDATE_PORTS:I = 0x1

.field public static final PORT_INFO:Ljava/lang/String; = "port_info"

.field public static final TAG:Ljava/lang/String; = "UsbPortManager"


# instance fields
.field public final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mContaminantStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsPortContaminatedNotificationId:I

.field public final mLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemReady:Z

.field public mTransactionId:J

.field public mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

.field public usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public static synthetic $r8$lambda$mtET4vQ2Fn5naQtaC0tYT2hsVEc(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->lambda$sendPortChangedBroadcastLocked$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationManager(Lcom/android/server/usb/UsbPortManager;Landroid/app/NotificationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePortsLocked(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 117
    invoke-static {v0, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    sput v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v1, 0x2

    .line 118
    invoke-static {v0, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    sput v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 121
    invoke-static {v1, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 122
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 1202
    new-instance v1, Lcom/android/server/usb/UsbPortManager$1;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 178
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->initBoost()V

    .line 181
    invoke-static {p0, v0}, Lcom/android/server/usb/hal/port/UsbPortHalInstance;->getInstance(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/port/UsbPortHal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    const/4 p0, 0x3

    const-string p1, "getInstance done"

    .line 182
    invoke-static {p0, v0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static convertContaminantDetectionStatusToProto(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :cond_f
    return v0

    :cond_10
    return v1

    :cond_11
    return v0
.end method

.method private synthetic lambda$sendPortChangedBroadcastLocked$0(Landroid/content/Intent;)V
    .registers 4

    .line 1104
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.MANAGE_USB"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "UsbPortManager"

    .line 1189
    invoke-static {p0, v0, p2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 1191
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "UsbPortManager"

    .line 1196
    invoke-static {v0, p1, p2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_19

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public final addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v4, p2

    move/from16 v1, p4

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v6, p10

    move/from16 v7, p12

    move-object/from16 v2, p17

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrUpdatePortLocked()++ : portId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " supportedModes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currentMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " canChangeMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " currentPowerRole="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-static/range {p6 .. p6}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " canChangePowerRole="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " currentDataRole="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-static/range {p8 .. p8}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " canChangeDataRole="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "UsbPortManager"

    .line 932
    invoke-static {v11, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v4, 0x3

    const/4 v10, 0x3

    const/4 v9, 0x5

    if-eq v3, v10, :cond_ac

    if-eqz v1, :cond_a7

    if-eq v1, v4, :cond_a7

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-static {v9, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_a9

    :cond_a7
    move/from16 v16, v1

    :goto_a9
    const/16 v17, 0x0

    goto :goto_b0

    :cond_ac
    move/from16 v16, v1

    move/from16 v17, v5

    .line 956
    :goto_b0
    invoke-static {v12, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    const/4 v10, 0x2

    const/4 v5, 0x1

    if-eqz v16, :cond_ef

    if-eqz v12, :cond_ef

    if-eqz v14, :cond_ef

    if-eqz v13, :cond_cf

    if-eqz v15, :cond_cf

    .line 962
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int v3, v3, v18

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int v3, v3, v18

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    :goto_cc
    or-int v3, v3, v18

    goto :goto_da

    :cond_cf
    if-eqz v13, :cond_dc

    .line 968
    invoke-static {v5, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 970
    invoke-static {v10, v14}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    :goto_da
    or-int/2addr v1, v3

    goto :goto_ef

    :cond_dc
    if-eqz v15, :cond_e8

    .line 975
    invoke-static {v12, v5}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 977
    invoke-static {v12, v10}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    goto :goto_da

    :cond_e8
    if-eqz v17, :cond_ef

    .line 983
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    goto :goto_cc

    :cond_ef
    :goto_ef
    move v3, v1

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportedRoleCombinations="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v5, :cond_174

    .line 992
    new-instance v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbManager;

    move-object v1, v10

    move/from16 v18, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p10

    move/from16 v7, p12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    move-object v9, v10

    move/from16 v10, v16

    move-object v3, v11

    move/from16 v11, v17

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, v18

    move/from16 v17, p11

    move/from16 v18, p13

    move/from16 v19, p14

    move/from16 v20, p15

    move/from16 v21, p16

    .line 996
    invoke-virtual/range {v9 .. v21}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIIIIZI)Z

    .line 1002
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPorts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") put size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v3

    goto/16 :goto_242

    :cond_174
    move/from16 v18, v3

    move-object v3, v11

    .line 1006
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v0

    const-string v1, ", current="

    if-eq v4, v0, :cond_1a9

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1010
    invoke-virtual {v8}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v8

    .line 1009
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-static {v9, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1014
    :cond_1a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "supportedModes="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1017
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v0

    if-eq v6, v0, :cond_1ea

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent supportsEnableContaminantPresenceProtectionUSB port driver (should be immutable): previous="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1022
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-static {v9, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1026
    :cond_1ea
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1027
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v0

    if-eq v7, v0, :cond_212

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent supportsEnableContaminantPresenceDetection USB port driver (should be immutable): previous="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1032
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-static {v9, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    :cond_212
    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move-object v11, v3

    move/from16 v3, p6

    move/from16 v4, p7

    move-object v13, v5

    const/4 v12, 0x1

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, v18

    move/from16 v8, p11

    move/from16 v9, p13

    move v14, v10

    move/from16 v10, p14

    move-object v15, v11

    move/from16 v11, p15

    move v14, v12

    move/from16 v12, p16

    .line 1037
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIIIIZI)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 1043
    iput v14, v13, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    const-string v0, "addOrUpdatePortLocked() mPorts DISPOSITION_REMOVED -> DISPOSITION_CHANGED"

    .line 1044
    invoke-static {v15, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_242

    :cond_23f
    const/4 v0, 0x2

    .line 1046
    iput v0, v13, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    :goto_242
    const-string v0, "addOrUpdatePortLocked()--"

    .line 1050
    invoke-static {v15, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 704
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "Port with same name already exists.  Please remove it first."

    .line 706
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 707
    monitor-exit v0

    return-void

    .line 710
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/hal/port/RawPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 714
    invoke-virtual {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 715
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13

    .line 721
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    if-nez v1, :cond_14

    const-string p0, "Cannot connect simulated port which does not exist."

    .line 724
    invoke-virtual {p8, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    monitor-exit v0

    return-void

    :cond_14
    if-eqz p2, :cond_9d

    if-eqz p4, :cond_9d

    if-nez p6, :cond_1c

    goto/16 :goto_9d

    .line 734
    :cond_1c
    iget v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    and-int/2addr v2, p2

    if-nez v2, :cond_3b

    .line 735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Simulated port does not support mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p8, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 736
    monitor-exit v0

    return-void

    .line 739
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", canChangeMode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", powerRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", canChangePowerRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", dataRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", canChangeDataRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 739
    invoke-virtual {p8, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 746
    iput p2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 747
    iput-boolean p3, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 748
    iput p4, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 749
    iput-boolean p5, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 750
    iput p6, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 751
    iput-boolean p7, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    const/4 p1, 0x0

    .line 752
    invoke-virtual {p0, p8, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 753
    monitor-exit v0

    return-void

    :cond_9d
    :goto_9d
    const-string p0, "Cannot connect simulated port in null mode, power role, or data role."

    .line 729
    invoke-virtual {p8, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 731
    monitor-exit v0

    return-void

    :catchall_a4
    move-exception p0

    .line 753
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public final disableLimitPowerTransferIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10

    .line 1125
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1129
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1130
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1131
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1133
    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbPortManager;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_47
    return-void
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 778
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    if-nez v1, :cond_14

    const-string p0, "Cannot disconnect simulated port which does not exist."

    .line 781
    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 782
    monitor-exit v0

    return-void

    .line 785
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 786
    iput p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 787
    iput-boolean p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 788
    iput p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 789
    iput-boolean p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 790
    iput p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 791
    iput-boolean p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    const/4 p1, 0x0

    .line 792
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 793
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 10

    .line 824
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 826
    iget-object p4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_7
    const-string v0, "is_simulation_active"

    const-wide v1, 0x10800000001L

    .line 827
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 828
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 827
    :goto_19
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 830
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const-string/jumbo v2, "usb_ports"

    const-wide v3, 0x20b00000002L

    .line 831
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/usb/UsbPortManager$PortInfo;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_26

    :cond_3e
    const-string/jumbo v0, "usb_hal_version"

    const-wide v1, 0x10e00000004L

    .line 834
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getUsbHalVersion()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 835
    monitor-exit p4
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_52

    .line 837
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_52
    move-exception p0

    .line 835
    :try_start_53
    monitor-exit p4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9

    .line 325
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v0, :cond_21

    if-eqz p3, :cond_20

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No such USB port: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    return-void

    .line 333
    :cond_21
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v1

    if-nez v1, :cond_2a

    return-void

    :cond_2a
    const/4 v1, 0x1

    if-eqz p2, :cond_35

    .line 337
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-ne v2, v1, :cond_47

    :cond_35
    if-nez p2, :cond_3f

    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 339
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    if-eq v2, v1, :cond_47

    :cond_3f
    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 341
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v0

    if-nez v0, :cond_48

    :cond_47
    return-void

    .line 347
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p0

    const-string p1, "Failed to set contaminant detection"

    .line 349
    invoke-static {p3, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5b
    return-void
.end method

.method public final enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1109
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1113
    :cond_f
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1114
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1115
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 1120
    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    :cond_3d
    return-void
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13

    .line 361
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v0, :cond_47

    const/4 p0, 0x6

    .line 364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableLimitPowerTransfer: No such port: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opId:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p6, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    if-eqz p5, :cond_46

    const/4 p0, 0x3

    .line 368
    :try_start_2d
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_46

    :catch_31
    move-exception p0

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableLimitPowerTransfer: Failed to call OperationComplete. opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_46
    :goto_46
    return-void

    .line 380
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_82

    :catch_51
    move-exception p0

    .line 382
    :try_start_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableLimitPowerTransfer: Failed to limit power transfer. opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p5, :cond_82

    const/4 p0, 0x1

    .line 386
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_6c} :catch_6d

    goto :goto_82

    :catch_6d
    move-exception p0

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableLimitPowerTransfer:Failed to call onOperationComplete. opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_82
    :goto_82
    return-void
.end method

.method public enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 14

    .line 443
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_49

    const/4 p0, 0x6

    .line 447
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableUsbData: No such port: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opId:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p5, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 450
    :try_start_2f
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_48

    :catch_33
    move-exception p0

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableUsbData: Failed to call OperationComplete. opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_48
    return v1

    .line 461
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    int-to-long v5, p3

    move-object v3, p1

    move v4, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_54

    return p0

    :catch_54
    move-exception p0

    .line 463
    :try_start_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableUsbData: Failed to invoke enableUsbData. opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x1

    .line 466
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6d} :catch_6e

    goto :goto_83

    :catch_6e
    move-exception p0

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableUsbData: Failed to call onOperationComplete. opId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_83
    return v1
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 401
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v0, :cond_47

    const/4 p0, 0x6

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbDataWhileDocked: No such port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p5, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    if-eqz p4, :cond_46

    const/4 p0, 0x3

    .line 408
    :try_start_2d
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_46

    :catch_31
    move-exception p0

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "enableUsbDataWhileDocked: Failed to call OperationComplete. opId:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_46
    :goto_46
    return-void

    .line 420
    :cond_47
    :try_start_47
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_7e

    :catch_4d
    move-exception p0

    .line 422
    :try_start_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableUsbDataWhileDocked: Failed to limit power transfer. opId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p4, :cond_7e

    const/4 p0, 0x1

    .line 426
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_68} :catch_69

    goto :goto_7e

    :catch_69
    move-exception p0

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "enableUsbDataWhileDocked:Failed to call onOperationComplete. opId:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-eqz p0, :cond_10

    .line 313
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .line 300
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 302
    new-array v2, v1, [Landroid/hardware/usb/UsbPort;

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1d

    .line 304
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 306
    :cond_1d
    monitor-exit v0

    return-object v2

    :catchall_1f
    move-exception p0

    .line 307
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public getUsbHalVersion()I
    .registers 2

    .line 485
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    const/4 v0, -0x2

    if-eqz p0, :cond_a

    .line 487
    :try_start_5
    invoke-interface {p0}, Lcom/android/server/usb/hal/port/UsbPortHal;->getUsbHalVersion()I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    :catch_a
    :cond_a
    return v0
.end method

.method public final handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetectionIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1067
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->disableLimitPowerTransferIfNeeded(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1068
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 1055
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->updateContaminantNotification()V

    return-void
.end method

.method public final handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final initBoost()V
    .registers 3

    .line 1541
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_e

    .line 1542
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const-string v1, "USB_PORT_MANAGER_BOOSTER"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 1545
    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_20

    const-string v0, "UsbPortManager"

    const-string v1, "To boost, setHint"

    .line 1546
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v0, 0x47e

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_20
    return-void
.end method

.method public final logToStatsd(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 1139
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/16 v0, 0x92

    const/16 v1, 0x46

    if-nez p2, :cond_7e

    .line 1140
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 1142
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_36

    const/4 p2, 0x0

    .line 1143
    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1146
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1143
    invoke-static {v1, p2, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 1148
    :cond_36
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    :cond_41
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 1153
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_72

    .line 1155
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1156
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    .line 1157
    invoke-static {v1}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result v1

    .line 1155
    invoke-static {v0, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 1160
    :cond_72
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    return-void

    .line 1165
    :cond_7e
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a6

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1166
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1167
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    if-eq p2, v2, :cond_cc

    .line 1168
    :cond_a6
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result p2

    .line 1172
    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1173
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1169
    invoke-static {v1, p2, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 1176
    :cond_cc
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f4

    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1177
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1178
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    if-eq p2, v1, :cond_11c

    .line 1179
    :cond_f4
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    iget-object p2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1180
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1179
    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object p0, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1182
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1184
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result p1

    .line 1183
    invoke-static {p1}, Lcom/android/server/usb/UsbPortManager;->convertContaminantDetectionStatusToProto(I)I

    move-result p1

    .line 1181
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    :cond_11c
    return-void
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 797
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_12

    const-string p0, "Cannot remove simulated port which does not exist."

    .line 800
    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 801
    monitor-exit v0

    return-void

    .line 804
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 805
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 806
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 807
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 811
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Removing all simulated ports and ending simulation."

    .line 812
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 814
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    .line 815
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 817
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

.method public resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9

    .line 523
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v1, :cond_4c

    const/4 v1, 0x6

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetUsbPort: No such port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_86

    const/4 v1, 0x3

    .line 531
    :try_start_32
    invoke-interface {p3, v1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_86

    goto :goto_4c

    :catch_36
    move-exception v1

    .line 534
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetUsbPort: Failed to call OperationComplete. opId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_86

    .line 542
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    int-to-long v1, p2

    invoke-interface {p0, p1, v1, v2, p3}, Lcom/android/server/usb/hal/port/UsbPortHal;->resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_52} :catch_53
    .catchall {:try_start_4c .. :try_end_52} :catchall_86

    goto :goto_84

    :catch_53
    move-exception p0

    .line 544
    :try_start_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reseetUsbPort: Failed to resetUsbPort. opId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x1

    .line 547
    invoke-interface {p3, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6d} :catch_6e
    .catchall {:try_start_54 .. :try_end_6d} :catchall_86

    goto :goto_84

    :catch_6e
    move-exception p0

    .line 550
    :try_start_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "resetUsbPort: Failed to call onOperationComplete. opId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 554
    :goto_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_6f .. :try_end_88} :catchall_86

    throw p0
.end method

.method public semGetDataRoleStatus()I
    .registers 8

    const-string v0, "UsbPortManager"

    const-string/jumbo v1, "semGetDataRoleStatus++"

    .line 1518
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v1

    .line 1522
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_60

    .line 1524
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 1525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semGetDataRoleStatus status of ports["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5d

    .line 1526
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1527
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result p0

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetDataRoleStatus status.isConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_60
    const/4 p0, -0x1

    .line 1534
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetDataRoleStatus-- with ret["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public semGetPowerRoleStatus()I
    .registers 8

    const-string v0, "UsbPortManager"

    const-string/jumbo v1, "semGetPowerRoleStatus++"

    .line 1496
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v1

    .line 1500
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_60

    .line 1502
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    .line 1503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "semGetPowerRoleStatus status of ports["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5d

    .line 1504
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1505
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p0

    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetPowerRoleStatus status.isConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_60
    const/4 p0, -0x1

    .line 1512
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetPowerRoleStatus-- with ret["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .registers 5

    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    .line 1096
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1099
    iget-object v1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v1

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1100
    iget-object p1, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v1, "portStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1104
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Runnable;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 559
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 560
    :try_start_d
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v6, :cond_2f

    if-eqz v4, :cond_2d

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such USB port: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    :cond_2d
    monitor-exit v5

    return-void

    .line 569
    :cond_2f
    iget-object v7, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v7, v2, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_66

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newPowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {v8, v4, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 574
    monitor-exit v5

    return-void

    .line 578
    :cond_66
    iget-object v7, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v7

    .line 579
    iget-object v9, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v9

    if-ne v7, v3, :cond_7f

    if-ne v9, v2, :cond_7f

    if-eqz v4, :cond_7d

    const-string v0, "No change."

    .line 582
    invoke-virtual {v4, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 584
    :cond_7d
    monitor-exit v5

    return-void

    .line 593
    :cond_7f
    iget-boolean v10, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 594
    iget-boolean v11, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 595
    iget-boolean v12, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 596
    iget-object v13, v6, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v13}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-nez v11, :cond_91

    if-ne v9, v2, :cond_95

    :cond_91
    if-nez v12, :cond_d2

    if-eq v7, v3, :cond_d2

    :cond_95
    if-eqz v10, :cond_9c

    if-ne v2, v15, :cond_9c

    if-ne v3, v15, :cond_9c

    goto :goto_d3

    :cond_9c
    if-eqz v10, :cond_a4

    if-ne v2, v14, :cond_a4

    if-ne v3, v14, :cond_a4

    move v14, v15

    goto :goto_d3

    .line 607
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newPowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v8, v4, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 611
    monitor-exit v5

    return-void

    :cond_d2
    move v14, v13

    :goto_d3
    const/4 v6, 0x4

    .line 618
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting USB port mode and role: portId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", currentMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {v13}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", currentPowerRole="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", currentDataRole="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {v14}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newPowerRole="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newDataRole="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 618
    invoke-static {v6, v4, v10}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 626
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/hal/port/RawPortInfo;

    if-eqz v6, :cond_146

    .line 629
    iput v14, v6, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 630
    iput v2, v6, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 631
    iput v3, v6, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v4, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    goto/16 :goto_20e

    .line 633
    :cond_146
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    if-eqz v6, :cond_20e

    const-wide/16 v10, 0x1

    if-eq v13, v14, :cond_1a5

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to set the USB port mode: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-static {v14}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-static {v8, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_16e
    .catchall {:try_start_d .. :try_end_16e} :catchall_210

    if-eqz p5, :cond_173

    .line 648
    :try_start_170
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    .line 651
    :cond_173
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-virtual {v0, v14}, Lcom/android/server/usb/UsbPortManager;->toHalUsbMode(I)I

    move-result v3

    iget-wide v6, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long/2addr v6, v10

    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v2, v1, v3, v6, v7}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchMode(Ljava/lang/String;IJ)V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_181} :catch_183
    .catchall {:try_start_170 .. :try_end_181} :catchall_210

    goto/16 :goto_20e

    :catch_183
    move-exception v0

    .line 653
    :try_start_184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set the USB port mode: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newMode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {v14}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1a4
    .catchall {:try_start_184 .. :try_end_1a4} :catchall_210

    goto :goto_20e

    :cond_1a5
    if-eq v9, v2, :cond_1d7

    .line 661
    :try_start_1a7
    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbPortManager;->toHalUsbPowerRole(I)I

    move-result v8

    iget-wide v12, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long/2addr v12, v10

    iput-wide v12, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v6, v1, v8, v12, v13}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchPowerRole(Ljava/lang/String;IJ)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1b3} :catch_1b4
    .catchall {:try_start_1a7 .. :try_end_1b3} :catchall_210

    goto :goto_1d7

    :catch_1b4
    move-exception v0

    .line 664
    :try_start_1b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set the USB port power role: portId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newPowerRole="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 669
    monitor-exit v5
    :try_end_1d6
    .catchall {:try_start_1b5 .. :try_end_1d6} :catchall_210

    return-void

    :cond_1d7
    :goto_1d7
    if-eq v7, v3, :cond_20e

    if-eqz p5, :cond_1de

    .line 676
    :try_start_1db
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    .line 679
    :cond_1de
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbPortManager;->toHalUsbDataRole(I)I

    move-result v6

    iget-wide v7, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long/2addr v7, v10

    iput-wide v7, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v2, v1, v6, v7, v8}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchDataRole(Ljava/lang/String;IJ)V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1ec} :catch_1ed
    .catchall {:try_start_1db .. :try_end_1ec} :catchall_210

    goto :goto_20e

    :catch_1ed
    move-exception v0

    .line 682
    :try_start_1ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set the USB port data role: portId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newDataRole="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 691
    :cond_20e
    :goto_20e
    monitor-exit v5

    return-void

    :catchall_210
    move-exception v0

    monitor-exit v5
    :try_end_212
    .catchall {:try_start_1ee .. :try_end_212} :catchall_210

    throw v0
.end method

.method public setPortRolesLegacy(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 16

    .line 1364
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v1, :cond_25

    if-eqz p4, :cond_23

    .line 1368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No such USB port: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    :cond_23
    monitor-exit v0

    return-void

    .line 1374
    :cond_25
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2, p2, p3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    const/4 v3, 0x6

    if-nez v2, :cond_5c

    .line 1375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newPowerRole="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1375
    invoke-static {v3, p4, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1379
    monitor-exit v0

    return-void

    .line 1383
    :cond_5c
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v2

    .line 1384
    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v4

    if-ne v2, p3, :cond_75

    if-ne v4, p2, :cond_75

    if-eqz p4, :cond_73

    const-string p0, "No change."

    .line 1387
    invoke-virtual {p4, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    :cond_73
    monitor-exit v0

    return-void

    .line 1398
    :cond_75
    iget-boolean v5, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1399
    iget-boolean v6, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1400
    iget-boolean v7, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1401
    iget-object v8, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v6, :cond_87

    if-ne v4, p2, :cond_8b

    :cond_87
    if-nez v7, :cond_c8

    if-eq v2, p3, :cond_c8

    :cond_8b
    if-eqz v5, :cond_92

    if-ne p2, v10, :cond_92

    if-ne p3, v10, :cond_92

    goto :goto_c9

    :cond_92
    if-eqz v5, :cond_9a

    if-ne p2, v9, :cond_9a

    if-ne p3, v9, :cond_9a

    move v9, v10

    goto :goto_c9

    .line 1412
    :cond_9a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newPowerRole="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1412
    invoke-static {v3, p4, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1416
    monitor-exit v0

    return-void

    :cond_c8
    move v9, v8

    :goto_c9
    const/4 v1, 0x4

    .line 1423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting USB port mode and role: portId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentPowerRole="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentDataRole="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newMode="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newPowerRole="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newDataRole="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1423
    invoke-static {v1, p4, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    if-eqz v1, :cond_13c

    .line 1434
    iput v9, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 1435
    iput p2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 1436
    iput p3, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    const/4 p1, 0x0

    .line 1437
    invoke-virtual {p0, p4, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    goto/16 :goto_1c5

    .line 1438
    :cond_13c
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    if-eqz p2, :cond_1c5

    const-wide/16 v4, 0x1

    if-eq v8, v9, :cond_195

    .line 1447
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set the USB port mode: portId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", newMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1447
    invoke-static {v3, p4, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_3 .. :try_end_164} :catchall_1c7

    .line 1451
    :try_start_164
    iget-object p2, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    invoke-virtual {p0, v9}, Lcom/android/server/usb/UsbPortManager;->toHalUsbMode(I)I

    move-result p3

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {p2, p1, p3, v1, v2}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchMode(Ljava/lang/String;IJ)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_172} :catch_173
    .catchall {:try_start_164 .. :try_end_172} :catchall_1c7

    goto :goto_1c5

    :catch_173
    move-exception p0

    .line 1453
    :try_start_174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to set the USB port mode: portId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newMode="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1453
    invoke-static {p4, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_194
    .catchall {:try_start_174 .. :try_end_194} :catchall_1c7

    goto :goto_1c5

    :cond_195
    if-eq v2, p3, :cond_1c5

    .line 1476
    :try_start_197
    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPortManager;->toHalUsbDataRole(I)I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {p2, p1, v1, v2, v3}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchDataRole(Ljava/lang/String;IJ)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1a3} :catch_1a4
    .catchall {:try_start_197 .. :try_end_1a3} :catchall_1c7

    goto :goto_1c5

    :catch_1a4
    move-exception p0

    .line 1479
    :try_start_1a5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set the USB port data role: portId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1479
    invoke-static {p4, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1488
    :cond_1c5
    :goto_1c5
    monitor-exit v0

    return-void

    :catchall_1c7
    move-exception p0

    monitor-exit v0
    :try_end_1c9
    .catchall {:try_start_1a5 .. :try_end_1c9} :catchall_1c7

    throw p0
.end method

.method public simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 761
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    if-nez v1, :cond_14

    const-string p0, "Simulated port not found."

    .line 764
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 765
    monitor-exit v0

    return-void

    .line 768
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulating wet port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", wet="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_34

    const/4 p1, 0x3

    goto :goto_35

    :cond_34
    const/4 p1, 0x2

    .line 772
    :goto_35
    iput p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    const/4 p1, 0x0

    .line 773
    invoke-virtual {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 774
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public startBoost()V
    .registers 3

    .line 1554
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_10

    const-string v0, "UsbPortManager"

    const-string v1, "To boost, Acquire"

    .line 1555
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_10
    return-void
.end method

.method public stopBoost()V
    .registers 3

    .line 1563
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_10

    const-string v0, "UsbPortManager"

    const-string v1, "To boost, Release"

    .line 1564
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_10
    return-void
.end method

.method public systemReady()V
    .registers 6

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    .line 187
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    if-eqz v0, :cond_1e

    .line 188
    invoke-interface {v0}, Lcom/android/server/usb/hal/port/UsbPortHal;->systemReady()V

    .line 190
    :try_start_a
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/usb/hal/port/UsbPortHal;->queryPortStatus(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "ServiceStart: Failed to query port status"

    .line 192
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final toHalUsbDataRole(I)I
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final toHalUsbMode(I)I
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public final toHalUsbPowerRole(I)I
    .registers 2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final updateContaminantNotification()V
    .registers 15

    .line 201
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    move v3, v2

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 207
    iget-object v4, v3, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v4

    if-eq v4, v5, :cond_2e

    if-ne v4, v6, :cond_2c

    goto :goto_2e

    :cond_2c
    move v3, v4

    goto :goto_12

    :cond_2e
    :goto_2e
    move-object v1, v3

    move v3, v4

    goto :goto_32

    :cond_31
    move-object v1, v7

    :goto_32
    const v4, 0x106001c

    const/16 v8, 0x35

    const/16 v9, 0x34

    if-ne v3, v5, :cond_dd

    .line 218
    iget v10, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-eq v10, v9, :cond_dd

    if-ne v10, v8, :cond_48

    .line 223
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v7, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 227
    :cond_48
    iput v9, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    const v2, 0x1040e71

    .line 229
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 230
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const v5, 0x1040e70

    .line 231
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 234
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const/high16 v8, 0x10000000

    .line 235
    invoke-virtual {v10, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v8, 0x10403a9

    .line 236
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-static {v0}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v0

    const-string/jumbo v8, "port"

    invoke-virtual {v10, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v1, "portStatus"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    iget-object v8, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v11, 0x4000000

    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108008a

    .line 255
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 257
    invoke-virtual {v1, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, p0, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_143

    :cond_dd
    if-eq v3, v5, :cond_143

    .line 263
    iget v1, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-ne v1, v9, :cond_143

    .line 266
    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v1, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v1, 0x0

    .line 268
    iput v1, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    if-ne v3, v2, :cond_143

    .line 273
    iput v8, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    const v1, 0x1040e73

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 277
    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const v3, 0x1040e72

    .line 278
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10805a3

    .line 282
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 283
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 287
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 291
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 290
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, p0, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_143
    :goto_143
    return-void
.end method

.method public updatePorts(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 696
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "port_info"

    .line 697
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    .line 698
    iput p1, v0, Landroid/os/Message;->what:I

    .line 699
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 700
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v14, "UsbPortManager"

    const-string/jumbo v1, "updatePortsLocked()++"

    .line 845
    invoke-static {v14, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_12
    add-int/lit8 v2, v1, -0x1

    const/4 v13, 0x3

    if-lez v1, :cond_23

    .line 847
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iput v13, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    move v1, v2

    goto :goto_12

    .line 851
    :cond_23
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_80

    .line 852
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v1, 0x0

    move v11, v1

    :goto_33
    if-ge v11, v12, :cond_7d

    .line 854
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 855
    iget-object v1, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    iget v3, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    iget-boolean v5, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    iget v6, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    iget v8, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    iget-boolean v9, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    iget-boolean v13, v10, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    move-object v0, v10

    move v10, v13

    iget v13, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    move/from16 v18, v11

    move v11, v13

    iget-boolean v13, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v19, v12

    move v12, v13

    iget v13, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    move-object/from16 v16, v14

    iget v14, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    move-object/from16 v20, v16

    iget-boolean v15, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    iget v0, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZILcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v11, v18, 0x1

    move-object/from16 v15, p1

    move/from16 v12, v19

    move-object/from16 v14, v20

    const/4 v13, 0x3

    goto :goto_33

    :cond_7d
    move-object/from16 v20, v14

    goto :goto_bc

    :cond_80
    move-object/from16 v20, v14

    .line 869
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_86
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 870
    iget-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    iget v3, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    iget v4, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    iget-boolean v5, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    iget v6, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    iget-boolean v7, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    iget v8, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    iget-boolean v9, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    iget-boolean v10, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iget v11, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    iget-boolean v12, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iget v13, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    iget v14, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    iget-boolean v15, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    iget v0, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZILcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_86

    .line 887
    :cond_bc
    :goto_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPorts size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_e0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_188

    .line 889
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 890
    iget v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    const/4 v5, 0x2

    const-string v6, "mPorts("

    if-eqz v4, :cond_166

    const/4 v7, 0x1

    if-eq v4, v7, :cond_146

    const/4 v7, 0x3

    if-eq v4, v7, :cond_118

    .line 909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") default: mDisposition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p1

    goto :goto_185

    .line 902
    :cond_118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") DISPOSITION_REMOVED size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v4, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 904
    iput-object v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    move-object/from16 v4, p1

    .line 905
    invoke-virtual {v1, v0, v4}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_185

    :cond_146
    move-object/from16 v4, p1

    const/4 v7, 0x3

    .line 897
    invoke-virtual {v1, v0, v4}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 898
    iput v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") DISPOSITION_CHANGED -> DISPOSITION_READY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    :cond_166
    move-object/from16 v4, p1

    const/4 v7, 0x3

    .line 892
    invoke-virtual {v1, v0, v4}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 893
    iput v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") DISPOSITION_ADDED -> DISPOSITION_READY"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_185
    move v0, v3

    goto/16 :goto_e0

    :cond_188
    const-string/jumbo v0, "updatePortsLocked()--"

    .line 914
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
