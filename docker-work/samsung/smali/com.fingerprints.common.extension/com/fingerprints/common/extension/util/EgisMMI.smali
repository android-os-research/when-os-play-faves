.class public final Lcom/fingerprints/common/extension/util/EgisMMI;
.super Ljava/lang/Object;
.source "EgisMMI.java"

# interfaces
.implements Lcom/fingerprints/common/extension/util/FpTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "RbsLibBinder"

.field private static mInstance:Lcom/fingerprints/common/extension/util/EgisMMI;


# instance fields
.field private mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

.field private mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

.field private final mHandler:Landroid/os/Handler;

.field private mImageQtyScore:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mImageQtyScore:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 174
    new-instance v0, Lcom/fingerprints/common/extension/util/EgisMMI$1;

    invoke-direct {v0, p0}, Lcom/fingerprints/common/extension/util/EgisMMI$1;-><init>(Lcom/fingerprints/common/extension/util/EgisMMI;)V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mHandler:Landroid/os/Handler;

    .line 190
    const-string v1, "RbsLibBinder"

    const-string v2, "RbsLibBinder Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-direct {v1, v0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/fingerprints/common/extension/util/EgisMMI;)I
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/EgisMMI;

    .line 14
    iget v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mImageQtyScore:I

    return v0
.end method

.method static synthetic access$002(Lcom/fingerprints/common/extension/util/EgisMMI;I)I
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/EgisMMI;
    .param p1, "x1"    # I

    .line 14
    iput p1, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mImageQtyScore:I

    return p1
.end method

.method static synthetic access$100(Lcom/fingerprints/common/extension/util/EgisMMI;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/EgisMMI;

    .line 14
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    return-object v0
.end method

.method public static getInstance()Lcom/fingerprints/common/extension/util/EgisMMI;
    .registers 2

    .line 29
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ getInstance +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v1, Lcom/fingerprints/common/extension/util/EgisMMI;->mInstance:Lcom/fingerprints/common/extension/util/EgisMMI;

    if-nez v1, :cond_17

    .line 31
    const-string v1, "get new RbsLibBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/fingerprints/common/extension/util/EgisMMI;

    invoke-direct {v0}, Lcom/fingerprints/common/extension/util/EgisMMI;-><init>()V

    sput-object v0, Lcom/fingerprints/common/extension/util/EgisMMI;->mInstance:Lcom/fingerprints/common/extension/util/EgisMMI;

    .line 34
    :cond_17
    sget-object v0, Lcom/fingerprints/common/extension/util/EgisMMI;->mInstance:Lcom/fingerprints/common/extension/util/EgisMMI;

    return-object v0
.end method

.method private sensorTest(I)I
    .registers 11
    .param p1, "testId"    # I

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 159
    .local v0, "test_result_buf":[B
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 160
    .local v7, "test_result_lenth":[I
    array-length v2, v0

    const/4 v3, 0x0

    aput v2, v7, v3

    .line 161
    new-array v8, v1, [I

    .line 162
    .local v8, "test_result":[I
    const/4 v1, -0x1

    aput v1, v8, v3

    .line 164
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move v3, p1

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->extraApi(II[B[B[I)I

    move-result v1

    .line 166
    .local v1, "retval":I
    return v1
.end method


# virtual methods
.method public cancelEnrollTest()V
    .registers 8

    .line 50
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ cancelEnrollTest +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-virtual {v0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->cancel()I

    .line 52
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    const/4 v2, 0x3

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->extraApi(II[B[B[I)I

    .line 53
    return-void
.end method

.method public egisBadpixeltest()I
    .registers 8

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "badPixelCount":I
    const/4 v1, 0x0

    .line 115
    .local v1, "retval":I
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorProb()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string v5, "RbsLibBinder"

    if-eqz v2, :cond_17

    .line 116
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v2, v4}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 117
    const-string v2, "sensor probe failed"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v3

    .line 121
    :cond_17
    const/16 v2, 0x44c

    invoke-direct {p0, v2}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorTest(I)I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-virtual {v2}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->getBadPixelCount()I

    move-result v0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "egisBoardTest retval: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " badPixelCount: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v1, :cond_50

    .line 126
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v2, v4}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 127
    const-string v2, "sensor bad pixel test failed"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v3

    .line 131
    :cond_50
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 132
    const-string v2, "egisBadpixeltest pass!"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v3
.end method

.method public egisCancelEnrollTest()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-virtual {v0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->cancel()I

    move-result v0

    .line 154
    .local v0, "retval":I
    return v0
.end method

.method public egisSelfTest()I
    .registers 5

    .line 90
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorProb()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "RbsLibBinder"

    if-eqz v0, :cond_15

    .line 91
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v0, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 92
    const-string v0, "sensor probe failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v1

    .line 96
    :cond_15
    const/16 v0, 0x44d

    invoke-direct {p0, v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorTest(I)I

    move-result v0

    if-eqz v0, :cond_28

    .line 97
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v0, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 98
    const-string v0, "sensor spi test 1 failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v1

    .line 101
    :cond_28
    const/16 v0, 0x44e

    invoke-direct {p0, v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorTest(I)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 102
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v0, v2}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 103
    const-string v0, "sensor spi test 2 failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1

    .line 106
    :cond_3b
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 107
    const-string v0, "egisSelfTest pass!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1
.end method

.method public egisStarEnrollTest()I
    .registers 5

    .line 137
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorProb()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "RbsLibBinder"

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    .line 138
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v0, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 139
    const-string v0, "sensor probe failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 143
    :cond_15
    const/16 v0, 0x450

    invoke-direct {p0, v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->sensorTest(I)I

    move-result v0

    if-eqz v0, :cond_28

    .line 144
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    invoke-interface {v0, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 145
    const-string v0, "sensor star enroll failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1

    .line 148
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public sensorProb()I
    .registers 3

    .line 170
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ sensorProb +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBack(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;)V
    .registers 2
    .param p1, "callBack"    # Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 56
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 57
    return-void
.end method

.method public startBadpixelTest()V
    .registers 3

    .line 65
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ startBadpixelTest +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->egisBadpixeltest()I

    .line 67
    return-void
.end method

.method public startCheckBoardTest()V
    .registers 3

    .line 71
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ startCheckBoardTest +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->egisBadpixeltest()I

    .line 73
    return-void
.end method

.method public startEnrollTest()V
    .registers 3

    .line 76
    sget-object v0, Lcom/fingerprints/common/extension/util/EgisMMI;->mInstance:Lcom/fingerprints/common/extension/util/EgisMMI;

    const-string v1, "RbsLibBinder"

    if-eqz v0, :cond_10

    .line 77
    const-string v0, "getInstance startFpMMITest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/fingerprints/common/extension/util/EgisMMI;->mInstance:Lcom/fingerprints/common/extension/util/EgisMMI;

    invoke-virtual {v0}, Lcom/fingerprints/common/extension/util/EgisMMI;->startFpMMITest()V

    .line 80
    :cond_10
    const-string v0, "+++ startEnrollTest +++"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->egisStarEnrollTest()I

    .line 82
    return-void
.end method

.method public startFpMMITest()V
    .registers 9

    .line 39
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ startFpMMITest +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    const/4 v3, 0x3

    const/16 v4, 0x3eb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->extraApi(II[B[B[I)I

    .line 41
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-virtual {v0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->setCallback()I

    .line 42
    return-void
.end method

.method public startSelfTest()V
    .registers 3

    .line 60
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ startSelfTest +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/EgisMMI;->egisSelfTest()I

    .line 62
    return-void
.end method

.method public stopFpMMITest()V
    .registers 8

    .line 45
    const-string v0, "RbsLibBinder"

    const-string v1, "+++ stopFpMMITest +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    invoke-virtual {v0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->cancel()I

    .line 47
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/EgisMMI;->mFPDev:Legistec/com/fplib/hidl/service/FPRbsHidlNative;

    const/4 v2, 0x3

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->extraApi(II[B[B[I)I

    .line 48
    return-void
.end method
