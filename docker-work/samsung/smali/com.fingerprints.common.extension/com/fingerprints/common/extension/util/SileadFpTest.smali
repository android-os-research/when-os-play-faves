.class public final Lcom/fingerprints/common/extension/util/SileadFpTest;
.super Ljava/lang/Object;
.source "SileadFpTest.java"

# interfaces
.implements Lcom/fingerprints/common/extension/util/FpTest;


# static fields
.field private static final FAIL:I = 0x1

.field private static final PASS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FPMMITEST_SILEAD"

.field private static instance:Lcom/fingerprints/common/extension/util/SileadFpTest;


# instance fields
.field private mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

.field private mFingerManager:Lcom/silead/manager/FingerManager;

.field private mSileadTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/fingerprints/common/extension/util/SileadFpTest;->instance:Lcom/fingerprints/common/extension/util/SileadFpTest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/fingerprints/common/extension/util/SileadFpTest;->sileadInit(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/fingerprints/common/extension/util/SileadFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/SileadFpTest;

    .line 26
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fingerprints/common/extension/util/SileadFpTest;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/fingerprints/common/extension/util/SileadFpTest;->instance:Lcom/fingerprints/common/extension/util/SileadFpTest;

    if-nez v0, :cond_25

    .line 41
    const-string v0, "FPMMITEST_SILEAD"

    const-string v1, "SileadFpTest new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-class v0, Lcom/fingerprints/common/extension/util/SileadFpTest;

    monitor-enter v0

    .line 43
    :try_start_e
    sget-object v1, Lcom/fingerprints/common/extension/util/SileadFpTest;->instance:Lcom/fingerprints/common/extension/util/SileadFpTest;

    if-nez v1, :cond_20

    .line 44
    const-string v1, "FPMMITEST_SILEAD"

    const-string v2, "SileadFpTest new instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/fingerprints/common/extension/util/SileadFpTest;

    invoke-direct {v1, p0}, Lcom/fingerprints/common/extension/util/SileadFpTest;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fingerprints/common/extension/util/SileadFpTest;->instance:Lcom/fingerprints/common/extension/util/SileadFpTest;

    .line 47
    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v1

    .line 49
    :cond_25
    :goto_25
    sget-object v0, Lcom/fingerprints/common/extension/util/SileadFpTest;->instance:Lcom/fingerprints/common/extension/util/SileadFpTest;

    return-object v0
.end method

.method private sileadCancelEnrollTest()V
    .registers 3

    .line 128
    const-string v0, "FPMMITEST_SILEAD"

    const-string v1, "SileadFpTest start Cancel Enroll test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mFingerManager:Lcom/silead/manager/FingerManager;

    if-eqz v0, :cond_10

    .line 130
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mSileadTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    invoke-virtual {v0, v1}, Lcom/silead/manager/FingerManager;->testFinish(Lcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 132
    :cond_10
    return-void
.end method

.method private sileadCheckBoardTestInternal()V
    .registers 3

    .line 114
    const-string v0, "FPMMITEST_SILEAD"

    const-string v1, "SileadFpTest start check broad test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mFingerManager:Lcom/silead/manager/FingerManager;

    if-eqz v0, :cond_10

    .line 116
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mSileadTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    invoke-virtual {v0, v1}, Lcom/silead/manager/FingerManager;->testDeadPixel(Lcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 118
    :cond_10
    return-void
.end method

.method private sileadInit(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const-string v0, "FPMMITEST_SILEAD"

    const-string v1, "SileadFpTest init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p1}, Lcom/silead/manager/FingerManager;->getDefault(Landroid/content/Context;)Lcom/silead/manager/FingerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mFingerManager:Lcom/silead/manager/FingerManager;

    .line 104
    return-void
.end method

.method private sileadQualityTestInternal()V
    .registers 4

    .line 121
    const-string v0, "FPMMITEST_SILEAD"

    const-string v1, "SileadFpTest start quality test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mFingerManager:Lcom/silead/manager/FingerManager;

    if-eqz v0, :cond_11

    .line 123
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mSileadTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    invoke-virtual {v0, v1, v2}, Lcom/silead/manager/FingerManager;->testImage(BLcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 125
    :cond_11
    return-void
.end method

.method private sileadSelfTestInternal()V
    .registers 3

    .line 107
    const-string v0, "FPMMITEST_SILEAD"

    const-string v1, "SileadFpTest start self test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mFingerManager:Lcom/silead/manager/FingerManager;

    if-eqz v0, :cond_10

    .line 109
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mSileadTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    invoke-virtual {v0, v1}, Lcom/silead/manager/FingerManager;->selfTest(Lcom/silead/manager/FingerManager$TestCmdCallback;)V

    .line 111
    :cond_10
    return-void
.end method


# virtual methods
.method public cancelEnrollTest()V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/SileadFpTest;->sileadCancelEnrollTest()V

    .line 99
    return-void
.end method

.method public setCallBack(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;)V
    .registers 3
    .param p1, "callBack"    # Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 53
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 54
    new-instance v0, Lcom/fingerprints/common/extension/util/SileadFpTest$1;

    invoke-direct {v0, p0}, Lcom/fingerprints/common/extension/util/SileadFpTest$1;-><init>(Lcom/fingerprints/common/extension/util/SileadFpTest;)V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/SileadFpTest;->mSileadTestCmdCallback:Lcom/silead/manager/FingerManager$TestCmdCallback;

    .line 83
    return-void
.end method

.method public startCheckBoardTest()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/SileadFpTest;->sileadCheckBoardTestInternal()V

    .line 91
    return-void
.end method

.method public startEnrollTest()V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/SileadFpTest;->sileadQualityTestInternal()V

    .line 95
    return-void
.end method

.method public startSelfTest()V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/SileadFpTest;->sileadSelfTestInternal()V

    .line 87
    return-void
.end method
