.class public Lcom/silead/manager/FingerManager;
.super Ljava/lang/Object;
.source "FingerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/silead/manager/FingerManager$MyHandler;,
        Lcom/silead/manager/FingerManager$TestCmdCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final FINGERPRINT_TEST_SERVICE:Ljava/lang/String; = "com.silead.fingerprintService"

.field private static final IS_VERIFY_DATA:Z = true

.field private static final MSG_SEND_RESPONSE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "FingerManager"

.field public static final TEST_CMD_CALIBRATE:I = 0xb

.field public static final TEST_CMD_DEAD_PIXEL:I = 0x2

.field public static final TEST_CMD_GET_IMAGE:I = 0x4

.field public static final TEST_CMD_GET_VERSION:I = 0x3

.field public static final TEST_CMD_ICON_READY:I = 0x11

.field public static final TEST_CMD_IMAGE_TEST:I = 0x14

.field public static final TEST_CMD_OPTIC_CALIBRATE_STEP:I = 0xc

.field public static final TEST_CMD_RESET_PIN:I = 0x1

.field public static final TEST_CMD_SELF_TEST:I = 0x8

.field public static final TEST_CMD_SEND_FINGER_DOWN:I = 0xd

.field public static final TEST_CMD_SEND_FINGER_UP:I = 0xe

.field public static final TEST_CMD_SEND_IMAGE:I = 0x6

.field public static final TEST_CMD_SEND_IMAGE_NEXT_FINGER:I = 0x7

.field public static final TEST_CMD_SPEED_TEST:I = 0x9

.field public static final TEST_CMD_SPI:I = 0x0

.field public static final TEST_CMD_TEST_BASE:I = 0x0

.field public static final TEST_CMD_TEST_FINISH:I = 0xa

.field public static final TEST_CMD_TEST_FLASH:I = 0xf

.field public static final TEST_CMD_TEST_OTP:I = 0x10

.field public static final TEST_IMAGE_ID_CAPTURE:B = 0x1t

.field public static final TEST_IMAGE_ID_IRQ:B = 0x0t

.field public static final TEST_IMAGE_ID_QUALITY:B = 0x2t

.field public static final TEST_RESULT_BAD_PARAM:I = 0x3e8

.field public static final TEST_RESULT_CANCELED:I = 0x406

.field public static final TEST_RESULT_DATA_IMCOMPLITE:I = -0x2

.field public static final TEST_RESULT_ENROLL_COVERAREA_FAILED:I = 0x3fe

.field public static final TEST_RESULT_ENROLL_FAKE_FINGER:I = 0x400

.field public static final TEST_RESULT_ENROLL_GAIN_IMPROVE_TIMEOUT:I = 0x401

.field public static final TEST_RESULT_ENROLL_QUALITY_COVERAREA_FAILED:I = 0x3ff

.field public static final TEST_RESULT_ENROLL_QUALITY_FAILED:I = 0x3fd

.field public static final TEST_RESULT_ENROLL_SAME_AREA:I = 0x3fc

.field public static final TEST_RESULT_IMAGE_ICON_CHANGE:I = -0x64

.field public static final TEST_RESULT_IMAGE_SAVE_FAILED:I = -0x3

.field public static final TEST_RESULT_MOVE_TOO_FAST:I = 0x3fb

.field public static final TEST_RESULT_NO_FINGER:I = 0x3fa

.field public static final TEST_RESULT_OK:I = 0x0

.field public static final TEST_RESULT_SERVICE_FAILED:I = -0x1

.field private static final VERIFY_DATA:[B

.field private static sInstance:Lcom/silead/manager/FingerManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mServiceReceiver:Lcom/silead/internal/IFingerServiceReceiver;

.field mTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/silead/manager/FingerManager;->sInstance:Lcom/silead/manager/FingerManager;

    return-void

    :array_c
    .array-data 1
        0x73t
        0x6ct
        0x66t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/silead/manager/FingerManager;->mToken:Landroid/os/IBinder;

    .line 478
    new-instance v0, Lcom/silead/manager/FingerManager$1;

    invoke-direct {v0, p0}, Lcom/silead/manager/FingerManager$1;-><init>(Lcom/silead/manager/FingerManager;)V

    iput-object v0, p0, Lcom/silead/manager/FingerManager;->mServiceReceiver:Lcom/silead/internal/IFingerServiceReceiver;

    .line 83
    new-instance v0, Lcom/silead/manager/FingerManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/silead/manager/FingerManager$MyHandler;-><init>(Lcom/silead/manager/FingerManager;Landroid/content/Context;Lcom/silead/manager/FingerManager$1;)V

    iput-object v0, p0, Lcom/silead/manager/FingerManager;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/silead/manager/FingerManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/silead/manager/FingerManager;->sInstance:Lcom/silead/manager/FingerManager;

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/silead/manager/FingerManager;

    invoke-direct {v0, p0}, Lcom/silead/manager/FingerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/silead/manager/FingerManager;->sInstance:Lcom/silead/manager/FingerManager;

    .line 79
    :cond_b
    sget-object v0, Lcom/silead/manager/FingerManager;->sInstance:Lcom/silead/manager/FingerManager;

    return-object v0
.end method

.method private getIFingerService()Lcom/silead/internal/IFingerService;
    .registers 2

    .line 87
    const-string v0, "com.silead.fingerprintService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/silead/internal/IFingerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/silead/internal/IFingerService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calibrate(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 237
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    const-string v1, "FingerManager"

    const-string v2, "calibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 243
    return-void
.end method

.method public calibrateStep(ILcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 8
    .param p1, "step"    # I
    .param p2, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 249
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 250
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    array-length v1, v2

    .line 256
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calibrateStep ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0, p2}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 261
    return-void
.end method

.method public getAllVerInfo(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 95
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const-string v1, "FingerManager"

    const-string v2, "getAllVerInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 101
    return-void
.end method

.method public onTestCmdResult(I[B)I
    .registers 8
    .param p1, "cmdId"    # I
    .param p2, "result"    # [B

    .line 406
    const/4 v0, 0x1

    .line 407
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 410
    .local v1, "obj":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTestCmdResult: cmdId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    array-length v4, p2

    :goto_1d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FingerManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    packed-switch p1, :pswitch_data_8e

    :pswitch_2d
    goto :goto_62

    .line 449
    :pswitch_2e
    invoke-static {p2}, Lcom/silead/manager/FingerImageResult;->parse([B)Lcom/silead/manager/FingerImageResult;

    move-result-object v1

    .line 450
    goto :goto_62

    .line 445
    :pswitch_33
    invoke-static {p2}, Lcom/silead/manager/FingerOTPResult;->parse([B)Lcom/silead/manager/FingerOTPResult;

    move-result-object v1

    .line 446
    goto :goto_62

    .line 441
    :pswitch_38
    invoke-static {p2}, Lcom/silead/manager/CalibrateStepResult;->parse([B)Lcom/silead/manager/CalibrateStepResult;

    move-result-object v1

    .line 442
    goto :goto_62

    .line 427
    :pswitch_3d
    invoke-static {p2}, Lcom/silead/manager/FingerSpeedResult;->parse([B)Lcom/silead/manager/FingerSpeedResult;

    move-result-object v1

    .line 428
    const/4 v0, 0x0

    .line 429
    goto :goto_62

    .line 437
    :pswitch_43
    invoke-static {p2}, Lcom/silead/manager/FingerFrrFarImageResult;->parse([B)Lcom/silead/manager/FingerFrrFarImageResult;

    move-result-object v1

    .line 438
    goto :goto_62

    .line 432
    :pswitch_48
    invoke-static {p2}, Lcom/silead/manager/FingerFrrFarEnroll;->parse([B)Lcom/silead/manager/FingerFrrFarEnroll;

    move-result-object v1

    .line 433
    const/4 v0, 0x0

    .line 434
    goto :goto_62

    .line 415
    :pswitch_4e
    invoke-static {p2}, Lcom/silead/manager/FingerVersion;->parse([B)Lcom/silead/manager/FingerVersion;

    move-result-object v1

    .line 416
    goto :goto_62

    .line 423
    :pswitch_53
    invoke-static {p2}, Lcom/silead/manager/FingerDeadPixelResult;->parse([B)Lcom/silead/manager/FingerDeadPixelResult;

    move-result-object v1

    .line 424
    goto :goto_62

    .line 462
    :pswitch_58
    invoke-static {p2}, Lcom/silead/manager/FingerResult;->parse([B)Lcom/silead/manager/FingerResult;

    move-result-object v1

    goto :goto_62

    .line 419
    :pswitch_5d
    invoke-static {p2}, Lcom/silead/manager/FingerSpiResult;->parse([B)Lcom/silead/manager/FingerSpiResult;

    move-result-object v1

    .line 420
    nop

    .line 467
    :goto_62
    if-eqz v1, :cond_70

    .line 468
    iget-object v2, p0, Lcom/silead/manager/FingerManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v2, v4, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8c

    .line 471
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " response is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_8c
    return v0

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_48
        :pswitch_2d
        :pswitch_43
        :pswitch_58
        :pswitch_58
        :pswitch_3d
        :pswitch_58
        :pswitch_58
        :pswitch_38
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_33
        :pswitch_58
        :pswitch_2d
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method public selfTest(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 225
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    const-string v1, "FingerManager"

    const-string v2, "selfTest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 231
    return-void
.end method

.method public testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 9
    .param p1, "cmdId"    # I
    .param p2, "param"    # [B
    .param p3, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 384
    const/4 v0, -0x1

    .line 385
    .local v0, "ret":I
    iput-object p3, p0, Lcom/silead/manager/FingerManager;->mTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 387
    :try_start_3
    invoke-direct {p0}, Lcom/silead/manager/FingerManager;->getIFingerService()Lcom/silead/internal/IFingerService;

    move-result-object v1

    iget-object v2, p0, Lcom/silead/manager/FingerManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/silead/manager/FingerManager;->mServiceReceiver:Lcom/silead/internal/IFingerServiceReceiver;

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/silead/internal/IFingerService;->testCmd(Landroid/os/IBinder;I[BLcom/silead/internal/IFingerServiceReceiver;)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_11

    move v0, v1

    .line 391
    :goto_10
    goto :goto_18

    .line 390
    :catch_11
    move-exception v1

    goto :goto_18

    .line 388
    :catch_13
    move-exception v1

    .line 389
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_10

    .line 393
    :goto_18
    if-gez v0, :cond_43

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, "offset":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 396
    .local v2, "data":[B
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 397
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 398
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 399
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 400
    invoke-virtual {p0, p1, v2}, Lcom/silead/manager/FingerManager;->onTestCmdResult(I[B)I

    .line 402
    .end local v1    # "offset":I
    .end local v2    # "data":[B
    :cond_43
    return-void
.end method

.method public testDeadPixel(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 131
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    const-string v1, "FingerManager"

    const-string v2, "testDeadPixel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 137
    return-void
.end method

.method public testFinish(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 213
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    const-string v1, "FingerManager"

    const-string v2, "testFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 219
    return-void
.end method

.method public testFlash(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 324
    const/4 v0, 0x0

    .line 326
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 327
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    const-string v1, "FingerManager"

    const-string v2, "testFlash"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 333
    return-void
.end method

.method public testGetImage(IIILcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 10
    .param p1, "mode"    # I
    .param p2, "countPerDown"    # I
    .param p3, "delay"    # I
    .param p4, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 155
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x3

    new-array v0, v3, [B

    .line 156
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    array-length v1, v2

    .line 162
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 163
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 164
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testGetImage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, p4}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 169
    return-void
.end method

.method public testIconReadyFlag(BLcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 8
    .param p1, "flag"    # B
    .param p2, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 369
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 370
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    array-length v1, v2

    .line 376
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aput-byte p1, v0, v1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testIconReadyFlag ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0, p2}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 381
    return-void
.end method

.method public testImage(BLcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 8
    .param p1, "id"    # B
    .param p2, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 351
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 352
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    array-length v1, v2

    .line 358
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aput-byte p1, v0, v1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testImage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0, p2}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 363
    return-void
.end method

.method public testOTP(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 339
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    const-string v1, "FingerManager"

    const-string v2, "testOTP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 345
    return-void
.end method

.method public testResetPin(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 119
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    const-string v1, "FingerManager"

    const-string v2, "testResetPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 125
    return-void
.end method

.method public testSendFingerDownMsg(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 267
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    const-string v1, "FingerManager"

    const-string v2, "testSendFingerDownMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 273
    return-void
.end method

.method public testSendFingerDownMsgWithFlag(BLcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 8
    .param p1, "flag"    # B
    .param p2, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 279
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 280
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    array-length v1, v2

    .line 286
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aput-byte p1, v0, v1

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testSendFingerDownMsgWithFlag ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0, p2}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 291
    return-void
.end method

.method public testSendFingerUpMsg(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 297
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    const-string v1, "FingerManager"

    const-string v2, "testSendFingerUpMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 303
    return-void
.end method

.method public testSendFingerUpMsgWithFlag(BLcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 8
    .param p1, "flag"    # B
    .param p2, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 309
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 310
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    array-length v1, v2

    .line 316
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aput-byte p1, v0, v1

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testSendFingerUpMsgWithFlag ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0, p2}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 321
    return-void
.end method

.method public testSendImage(IZZI[BLcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "orig"    # Z
    .param p3, "frr"    # Z
    .param p4, "imgType"    # I
    .param p5, "buffer"    # [B
    .param p6, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 175
    .local v1, "offset":I
    sget-object v2, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v3, v2

    array-length v4, p5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    new-array v0, v3, [B

    .line 176
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    array-length v1, v2

    .line 182
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 183
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 184
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 185
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 186
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 187
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 188
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    and-int/lit16 v3, p4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 190
    array-length v1, p5

    invoke-static {p5, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testSendImage ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0, p6}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 195
    return-void
.end method

.method public testSendImageNextFinger(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 201
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    const-string v1, "FingerManager"

    const-string v2, "testSendImageNextFinger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 207
    return-void
.end method

.method public testSpeed(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 143
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const-string v1, "FingerManager"

    const-string v2, "testSpeed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 149
    return-void
.end method

.method public testSpi(Lcom/silead/manager/FingerManager$TestCmdCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "data":[B
    sget-object v1, Lcom/silead/manager/FingerManager;->VERIFY_DATA:[B

    array-length v2, v1

    new-array v0, v2, [B

    .line 107
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    const-string v1, "FingerManager"

    const-string v2, "testSpi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, v3, v0, p1}, Lcom/silead/manager/FingerManager;->testCmd(I[BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 113
    return-void
.end method
