.class public final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortInfo"
.end annotation


# static fields
.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mConnectedAtMillis:J

.field public mDisposition:I

.field public mLastConnectDurationMillis:J

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V
    .registers 15

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    new-instance v7, Landroid/hardware/usb/UsbPort;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    iput-object v7, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14

    .line 1334
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1336
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const-string/jumbo v2, "port"

    const-wide v3, 0x10b00000001L

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    .line 1337
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v2, "status"

    const-wide v3, 0x10b00000002L

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    .line 1338
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    const-string v2, "can_change_mode"

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1339
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    const-string v2, "can_change_power_role"

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1341
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    const-string v2, "can_change_data_role"

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1343
    iget-wide v5, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    const-string v2, "connected_at_millis"

    const-wide v3, 0x10300000006L

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1345
    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    const-string v1, "last_connect_duration_millis"

    const-wide v2, 0x10300000007L

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1347
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public setStatus(IZIZIZI)Z
    .registers 20

    move-object v0, p0

    move v1, p2

    .line 1260
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move/from16 v1, p4

    .line 1261
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move/from16 v1, p6

    .line 1262
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1263
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v1, :cond_37

    .line 1264
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v1

    move v3, p1

    if-ne v1, v3, :cond_38

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1265
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    move v4, p3

    if-ne v1, v4, :cond_39

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1266
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v1

    move/from16 v5, p5

    if-ne v1, v5, :cond_3b

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1267
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v1

    move/from16 v6, p7

    if-eq v1, v6, :cond_35

    goto :goto_3d

    :cond_35
    const/4 v1, 0x0

    goto :goto_51

    :cond_37
    move v3, p1

    :cond_38
    move v4, p3

    :cond_39
    move/from16 v5, p5

    :cond_3b
    move/from16 v6, p7

    .line 1269
    :goto_3d
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    move v3, p1

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-direct/range {v2 .. v11}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v1, 0x1

    .line 1277
    :goto_51
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_6a

    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_6a

    .line 1278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1279
    iput-wide v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_83

    .line 1280
    :cond_6a
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    if-nez v2, :cond_83

    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_83

    .line 1281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1282
    iput-wide v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    :cond_83
    :goto_83
    return v1
.end method

.method public setStatus(IZIZIZIIIIZI)Z
    .registers 25

    move-object v0, p0

    move v1, p2

    .line 1296
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move/from16 v1, p4

    .line 1297
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move/from16 v1, p6

    .line 1298
    iput-boolean v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1299
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v1, :cond_69

    .line 1300
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v1

    move v3, p1

    if-ne v1, v3, :cond_6a

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1301
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v1

    move v4, p3

    if-ne v1, v4, :cond_6b

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1302
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v1

    move/from16 v5, p5

    if-ne v1, v5, :cond_6d

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1303
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v1

    move/from16 v6, p7

    if-ne v1, v6, :cond_6f

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1305
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v1

    move/from16 v7, p8

    if-ne v1, v7, :cond_71

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1307
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v1

    move/from16 v8, p9

    if-ne v1, v8, :cond_73

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1309
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v1

    move/from16 v9, p10

    if-ne v1, v9, :cond_75

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1311
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v1

    move/from16 v10, p11

    if-ne v1, v10, :cond_77

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1313
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v1

    move/from16 v11, p12

    if-eq v1, v11, :cond_67

    goto :goto_79

    :cond_67
    const/4 v1, 0x0

    goto :goto_92

    :cond_69
    move v3, p1

    :cond_6a
    move v4, p3

    :cond_6b
    move/from16 v5, p5

    :cond_6d
    move/from16 v6, p7

    :cond_6f
    move/from16 v7, p8

    :cond_71
    move/from16 v8, p9

    :cond_73
    move/from16 v9, p10

    :cond_75
    move/from16 v10, p11

    :cond_77
    move/from16 v11, p12

    .line 1315
    :goto_79
    new-instance v1, Landroid/hardware/usb/UsbPortStatus;

    move-object v2, v1

    move v3, p1

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v2 .. v11}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI)V

    iput-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v1, 0x1

    .line 1322
    :goto_92
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_ab

    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_ab

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1324
    iput-wide v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_c4

    .line 1325
    :cond_ab
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    if-nez v2, :cond_c4

    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_c4

    .line 1326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1327
    iput-wide v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    :cond_c4
    :goto_c4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastConnectDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
