.class public Lcom/fingerprints/common/extension/util/FocalFpTest;
.super Ljava/lang/Object;
.source "FocalFpTest.java"

# interfaces
.implements Lcom/fingerprints/common/extension/util/FpTest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;
    }
.end annotation


# static fields
.field protected static final FF_CMD_APK_CHECKER_BOARD:I = 0x4101

.field protected static final FF_CMD_APK_DEAD_PIXEL:I = 0x4100

.field protected static final FF_CMD_APK_DETECT_FINGER:I = 0x4000

.field protected static final FF_CMD_APK_ENTER_LOW_POWER_MODE:I = 0x4002

.field protected static final FF_CMD_APK_EXIT:I = 0x4016

.field protected static final FF_CMD_APK_GET_DIFF_DATA:I = 0x401f

.field protected static final FF_CMD_APK_GET_IMAGE_QUALITY:I = 0x4103

.field protected static final FF_CMD_APK_GET_MCU_STATUS:I = 0x4001

.field protected static final FF_CMD_APK_GET_SENSOR_SIZE:I = 0x4003

.field protected static final FF_CMD_APK_SCENE:I = 0x4102

.field protected static final FF_CMD_CHECK_INT_STATUS:I = 0x300c

.field protected static final FF_CMD_DEVICE_IQR:I = 0x3006

.field protected static final FF_CMD_HW_RESET_DEVICE:I = 0x3004

.field private static final FP_FINGER_LEAVE:I = 0x0

.field private static final FP_FINGER_ON:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "FocalFpTest"

.field private static instance:Lcom/fingerprints/common/extension/util/FocalFpTest;

.field public static quilty:I


# instance fields
.field private EnrollTest:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

.field private dLen:[I

.field private data:[B

.field private ispressfig:Z

.field private mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

.field private result_is_ok:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/fingerprints/common/extension/util/FocalFpTest;->instance:Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/fingerprints/common/extension/util/FocalFpTest;->quilty:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    .line 38
    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    .line 41
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->result_is_ok:Z

    .line 46
    iput-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->ispressfig:Z

    .line 66
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fingerprints/common/extension/util/FocalFpTest;)[B
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/fingerprints/common/extension/util/FocalFpTest;)[I
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/fingerprints/common/extension/util/FocalFpTest;)Lcom/focaltech/mmitest/FocalFingerprintManager;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fingerprints/common/extension/util/FocalFpTest;)V
    .registers 1
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->focalDetect_finger()V

    return-void
.end method

.method static synthetic access$600(Lcom/fingerprints/common/extension/util/FocalFpTest;)V
    .registers 1
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->focal_Scene()V

    return-void
.end method

.method static synthetic access$700(Lcom/fingerprints/common/extension/util/FocalFpTest;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 17
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private focalCheckBoardTest()V
    .registers 7

    .line 216
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/4 v1, 0x1

    const-string v2, "FocalFpTest"

    if-nez v0, :cond_12

    .line 217
    const-string v0, "Focal fingerprint manager is null."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void

    .line 222
    :cond_12
    const-string v0, "focalCheckBoardTest start."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v3, 0x4100

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v5, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v0, v3, v4, v5}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 225
    .local v0, "err":I
    if-nez v0, :cond_41

    .line 226
    const-string v1, "dead pixel test ok."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v3, 0x4016

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v5, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v1, v3, v4, v5}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    .line 235
    const-string v1, "focalCheckBoardTest success."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 228
    :cond_41
    const-string v3, "dead pixel test failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    return-void
.end method

.method private focalDetect_finger()V
    .registers 10

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->ispressfig:Z

    .line 249
    const/4 v1, -0x1

    .line 250
    .local v1, "ret":I
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 252
    .local v2, "startDate":Ljava/util/Date;
    :goto_d
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    const/4 v4, 0x1

    aput v4, v3, v0

    .line 253
    iget-object v5, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v6, 0x4000

    iget-object v7, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    invoke-virtual {v5, v6, v7, v3}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v1

    .line 254
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 255
    .local v3, "endDate":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 256
    .local v5, "diff":J
    const-wide/16 v7, 0x3a98

    cmp-long v7, v5, v7

    const-string v8, "FocalFpTest"

    if-lez v7, :cond_3d

    .line 257
    const-string v0, "press finger Timeout!!!"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x3

    .line 259
    goto :goto_45

    .line 261
    :cond_3d
    if-ne v1, v4, :cond_46

    .line 262
    const-string v0, "detect finger on"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    nop

    .line 276
    .end local v3    # "endDate":Ljava/util/Date;
    .end local v5    # "diff":J
    :goto_45
    return-void

    .line 265
    .restart local v3    # "endDate":Ljava/util/Date;
    .restart local v5    # "diff":J
    :cond_46
    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/fingerprints/common/extension/util/FocalFpTest;->threadSleep(I)V

    .line 266
    iput-boolean v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->ispressfig:Z

    .line 267
    if-ne v1, v4, :cond_52

    .line 268
    iput-boolean v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->result_is_ok:Z

    goto :goto_6e

    .line 269
    :cond_52
    const/4 v4, 0x3

    if-ne v1, v4, :cond_56

    goto :goto_6e

    .line 271
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fingerpress test failed: ret="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-boolean v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->result_is_ok:Z

    .line 275
    .end local v3    # "endDate":Ljava/util/Date;
    .end local v5    # "diff":J
    :goto_6e
    goto :goto_d
.end method

.method private focalSelfTest()V
    .registers 12

    .line 139
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/4 v1, 0x1

    const-string v2, "FocalFpTest"

    if-nez v0, :cond_12

    .line 140
    const-string v0, "Focal fingerprint manager is null."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 142
    return-void

    .line 145
    :cond_12
    const-string v0, "focalSelfTest start."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "start reset."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v3, 0x3004

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v5, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v0, v3, v4, v5}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 150
    .local v0, "err":I
    if-eqz v0, :cond_35

    .line 151
    const-string v3, "reset test failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    return-void

    .line 155
    :cond_35
    const-string v3, "reset test ok."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-wide/16 v3, 0x32

    :try_start_3c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 160
    goto :goto_44

    .line 158
    :catch_40
    move-exception v5

    .line 159
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 163
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_44
    const-string v5, "start check interrupt status."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4a
    const/4 v6, 0x5

    if-ge v5, v6, :cond_75

    .line 165
    iget-object v7, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v8, 0x300c

    iget-object v9, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v10, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v7, v8, v9, v10}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 166
    if-nez v0, :cond_5c

    goto :goto_75

    .line 167
    :cond_5c
    const/4 v6, 0x4

    if-lt v5, v6, :cond_6a

    .line 168
    const-string v3, "check interrupt status failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void

    .line 173
    :cond_6a
    :try_start_6a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 176
    goto :goto_72

    .line 174
    :catch_6e
    move-exception v6

    .line 175
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 164
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 179
    :cond_75
    :goto_75
    const-string v3, "check interrupt status ok."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    .line 183
    iget-object v7, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v8, 0x3006

    iget-object v9, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v7, v8, v3, v9}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 186
    const-string v3, "start get mcu status."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v3, 0x0

    .end local v5    # "i":I
    .local v3, "i":I
    :goto_8f
    if-ge v3, v6, :cond_a3

    .line 188
    iget-object v5, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v7, 0x4001

    iget-object v8, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v9, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v5, v7, v8, v9}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 189
    if-nez v0, :cond_a0

    goto :goto_a3

    .line 187
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 191
    :cond_a3
    :goto_a3
    if-eqz v0, :cond_b0

    .line 192
    const-string v4, "get mcu status failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    return-void

    .line 196
    :cond_b0
    const-string v5, "get mcu status ok."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v6, 0x4002

    iget-object v7, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v8, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v5, v6, v7, v8}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 201
    if-nez v0, :cond_d3

    .line 202
    const-string v1, "enter lower power mode ok."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    const-string v1, "focalSelfTest success."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 204
    :cond_d3
    const-string v4, "enter lower power mode failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method

.method private focal_Scene()V
    .registers 9

    .line 278
    const/4 v0, -0x1

    .line 279
    .local v0, "ret":I
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v3, :cond_21

    .line 281
    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const/16 v5, 0x4102

    iget-object v6, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->data:[B

    iget-object v7, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->dLen:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/focaltech/mmitest/FocalFingerprintManager;->exeCmd(I[B[I)I

    move-result v0

    .line 282
    if-nez v0, :cond_19

    .line 283
    goto :goto_21

    .line 285
    :cond_19
    const/16 v4, 0x32

    invoke-direct {p0, v4}, Lcom/fingerprints/common/extension/util/FocalFpTest;->threadSleep(I)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 288
    .end local v1    # "i":I
    :cond_21
    :goto_21
    if-nez v0, :cond_26

    .line 289
    iput-boolean v3, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->result_is_ok:Z

    goto :goto_28

    .line 291
    :cond_26
    iput-boolean v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->result_is_ok:Z

    .line 292
    :goto_28
    return-void
.end method

.method public static getInstance()Lcom/fingerprints/common/extension/util/FocalFpTest;
    .registers 3

    .line 51
    const-string v0, "FocalFpTest"

    const-string v1, "enter FocalFpTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-class v0, Lcom/fingerprints/common/extension/util/FocalFpTest;

    monitor-enter v0

    .line 53
    :try_start_a
    sget-object v1, Lcom/fingerprints/common/extension/util/FocalFpTest;->instance:Lcom/fingerprints/common/extension/util/FocalFpTest;

    if-nez v1, :cond_1c

    .line 54
    const-string v1, "FocalFpTest"

    const-string v2, "FocalFpTest new instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Lcom/fingerprints/common/extension/util/FocalFpTest;

    invoke-direct {v1}, Lcom/fingerprints/common/extension/util/FocalFpTest;-><init>()V

    sput-object v1, Lcom/fingerprints/common/extension/util/FocalFpTest;->instance:Lcom/fingerprints/common/extension/util/FocalFpTest;

    .line 57
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_20

    .line 58
    sget-object v0, Lcom/fingerprints/common/extension/util/FocalFpTest;->instance:Lcom/fingerprints/common/extension/util/FocalFpTest;

    return-object v0

    .line 57
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private init()V
    .registers 5

    .line 105
    const-string v0, "FocalFpTest"

    const-string v1, "enter init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v1, "com.focaltech.mmitest.FocalFingerprintManager"

    .line 108
    .local v1, "clazz":Ljava/lang/String;
    :try_start_9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/focaltech/mmitest/FocalFingerprintManager;

    iput-object v2, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_15} :catch_24
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_15} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_2a

    .line 113
    :catch_16
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "FocalFingerprintManager permission denied"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 111
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1d
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "FocalFingerprintManager Instantiation failed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_2a

    .line 109
    :catch_24
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "FocalFingerprintManager not found"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2a
    nop

    .line 116
    :goto_2b
    new-instance v0, Lcom/fingerprints/common/extension/util/FocalFpTest$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/fingerprints/common/extension/util/FocalFpTest$1;-><init>(Lcom/fingerprints/common/extension/util/FocalFpTest;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method private threadSleep(I)V
    .registers 4
    .param p1, "time"    # I

    .line 241
    int-to-long v0, p1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    .line 244
    goto :goto_9

    .line 242
    :catch_5
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 245
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_9
    return-void
.end method


# virtual methods
.method public cancelEnrollTest()V
    .registers 3

    .line 96
    const-string v0, "FocalFpTest"

    const-string v1, "FocalcancelEnrollTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->EnrollTest:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    invoke-virtual {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->interrupt()V

    .line 98
    return-void
.end method

.method public setCallBack(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;)V
    .registers 2
    .param p1, "callback"    # Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 62
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 63
    return-void
.end method

.method public startCheckBoardTest()V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->focalCheckBoardTest()V

    .line 76
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->mManager:Lcom/focaltech/mmitest/FocalFingerprintManager;

    const-string v1, "FocalFpTest"

    if-nez v0, :cond_f

    .line 77
    const-string v0, "Focal fingerprint manager is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 81
    :cond_f
    const-string v0, "focal mmi test end."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public startEnrollTest()V
    .registers 3

    .line 89
    const-string v0, "FocalFpTest"

    const-string v1, "FocalstartEnrollTest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;-><init>(Lcom/fingerprints/common/extension/util/FocalFpTest;Lcom/fingerprints/common/extension/util/FocalFpTest$1;)V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FocalFpTest;->EnrollTest:Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;

    .line 91
    invoke-virtual {v0}, Lcom/fingerprints/common/extension/util/FocalFpTest$focalEnrollTest;->start()V

    .line 93
    return-void
.end method

.method public startSelfTest()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/FocalFpTest;->focalSelfTest()V

    .line 71
    return-void
.end method

.method public stopFpMMITest()V
    .registers 3

    .line 101
    const-string v0, "FocalFpTest"

    const-string v1, "FocalstopFpMMITest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
