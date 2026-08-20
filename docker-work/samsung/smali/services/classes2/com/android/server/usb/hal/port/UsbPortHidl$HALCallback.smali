.class public Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;
.super Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.source "UsbPortHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/UsbPortHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HALCallback"
.end annotation


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

.field public preDataRole:I


# direct methods
.method public constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortHidl;)V
    .registers 5

    .line 398
    invoke-direct {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 396
    iput v0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    .line 399
    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 400
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 401
    iput-object p3, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    return-void
.end method


# virtual methods
.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 406
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_17

    const/4 v1, 0x6

    .line 411
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "port status enquiry failed"

    invoke-static {v1, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 415
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/V1_0/PortStatus;

    .line 418
    new-instance v15, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object v4, v15

    iget-object v5, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v6, v3, Landroid/hardware/usb/V1_0/PortStatus;->supportedModes:I

    const/4 v7, 0x0

    iget v8, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentMode:I

    iget-boolean v9, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v10, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v11, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v12, v3, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    iget-boolean v13, v3, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v21, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    move-object/from16 v4, v21

    .line 427
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 428
    iget-object v5, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback V1_0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_20

    .line 432
    :cond_73
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 438
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_17

    const/4 v1, 0x6

    .line 443
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "port status enquiry failed"

    invoke-static {v1, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 447
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_a3

    move-object/from16 v4, p1

    .line 451
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;

    .line 452
    new-instance v15, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object v6, v15

    iget-object v14, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v14, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v8, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    const/4 v9, 0x0

    iget v10, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-boolean v11, v14, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v12, v14, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v13, v14, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    iget v9, v14, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    move/from16 v23, v2

    move-object v2, v14

    move v14, v9

    iget-boolean v2, v2, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    move-object v9, v15

    move v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    .line 461
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v2, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v2, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_73

    .line 465
    iget v8, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    if-eqz v8, :cond_6d

    if-ne v8, v6, :cond_73

    .line 467
    :cond_6d
    iget-object v6, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    goto :goto_80

    .line 468
    :cond_73
    iget v8, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    if-ne v8, v7, :cond_80

    if-eqz v2, :cond_7b

    if-ne v2, v6, :cond_80

    .line 470
    :cond_7b
    iget-object v6, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    .line 472
    :cond_80
    :goto_80
    iput v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    const/4 v2, 0x4

    .line 475
    iget-object v6, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientCallback V1_1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v5, v5, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v23

    goto/16 :goto_21

    .line 478
    :cond_a3
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_2/PortStatus;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 483
    iget-object v1, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mUsbPortHidl:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortHidl;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_17

    const/4 v1, 0x6

    .line 488
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "port status enquiry failed"

    invoke-static {v1, v0, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void

    .line 492
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_b0

    move-object/from16 v4, p1

    .line 496
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/V1_2/PortStatus;

    .line 497
    new-instance v15, Lcom/android/server/usb/hal/port/RawPortInfo;

    move-object v6, v15

    iget-object v10, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v14, v10, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v7, v14, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    iget v8, v10, Landroid/hardware/usb/V1_1/PortStatus_1_1;->supportedModes:I

    iget v9, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportedContaminantProtectionModes:I

    iget v10, v10, Landroid/hardware/usb/V1_1/PortStatus_1_1;->currentMode:I

    iget-boolean v11, v14, Landroid/hardware/usb/V1_0/PortStatus;->canChangeMode:Z

    iget v12, v14, Landroid/hardware/usb/V1_0/PortStatus;->currentPowerRole:I

    iget-boolean v13, v14, Landroid/hardware/usb/V1_0/PortStatus;->canChangePowerRole:Z

    move/from16 p2, v2

    iget v2, v14, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    move-object v4, v14

    move v14, v2

    iget-boolean v2, v4, Landroid/hardware/usb/V1_0/PortStatus;->canChangeDataRole:Z

    move-object v4, v15

    move v15, v2

    iget-boolean v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    move/from16 v16, v2

    iget v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantProtectionStatus:I

    move/from16 v17, v2

    iget-boolean v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    move/from16 v18, v2

    iget v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->contaminantDetectionStatus:I

    move/from16 v19, v2

    invoke-static {}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$sfgetsUsbDataStatus()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V

    .line 512
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v2, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v2, v2, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget v2, v2, Landroid/hardware/usb/V1_0/PortStatus;->currentDataRole:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_7e

    .line 516
    iget v7, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    if-eqz v7, :cond_78

    if-ne v7, v4, :cond_7e

    .line 518
    :cond_78
    iget-object v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    goto :goto_8b

    .line 519
    :cond_7e
    iget v7, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    if-ne v7, v6, :cond_8b

    if-eqz v2, :cond_86

    if-ne v2, v4, :cond_8b

    .line 521
    :cond_86
    iget-object v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    .line 523
    :cond_8b
    :goto_8b
    iput v2, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->preDataRole:I

    const/4 v2, 0x4

    .line 526
    iget-object v4, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientCallback V1_2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/hardware/usb/V1_2/PortStatus;->status_1_1:Landroid/hardware/usb/V1_1/PortStatus_1_1;

    iget-object v5, v5, Landroid/hardware/usb/V1_1/PortStatus_1_1;->status:Landroid/hardware/usb/V1_0/PortStatus;

    iget-object v5, v5, Landroid/hardware/usb/V1_0/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p2

    goto/16 :goto_21

    .line 529
    :cond_b0
    iget-object v0, v0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    return-void
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .registers 4

    if-nez p3, :cond_1a

    const/4 p2, 0x4

    .line 534
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role switch successful"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    goto :goto_31

    :cond_1a
    const/4 p2, 0x6

    .line 536
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " role switch failed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    :goto_31
    return-void
.end method
