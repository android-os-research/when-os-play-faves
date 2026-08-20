.class public final Lcom/fingerprints/common/extension/util/FpMmiTest;
.super Ljava/lang/Object;
.source "FpMmiTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FPMMITEST"


# instance fields
.field private CHECKBOARDTEST:Ljava/lang/String;

.field private CHIPONE:Ljava/lang/String;

.field private EGIS:Ljava/lang/String;

.field private FOCAL:Ljava/lang/String;

.field private SELFTEST:Ljava/lang/String;

.field private SILEAD:Ljava/lang/String;

.field private mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

.field private mObject:Ljava/lang/Object;

.field private mVendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Self Test"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->SELFTEST:Ljava/lang/String;

    .line 17
    const-string v0, "Checkerboard Test"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->CHECKBOARDTEST:Ljava/lang/String;

    .line 21
    const-string v0, "chipone"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->CHIPONE:Ljava/lang/String;

    .line 22
    const-string v0, "egis"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->EGIS:Ljava/lang/String;

    .line 23
    const-string v0, "silead"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->SILEAD:Ljava/lang/String;

    .line 24
    const-string v0, "focal"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->FOCAL:Ljava/lang/String;

    .line 26
    const-string v0, "none"

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public CancelEnrollTest()V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_7
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    invoke-interface {v1}, Lcom/fingerprints/common/extension/util/FpTest;->cancelEnrollTest()V

    .line 105
    monitor-exit v0

    goto :goto_18

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1

    .line 106
    :cond_11
    const-string v0, "FPMMITEST"

    const-string v1, "cancelEnrollTest nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_18
    return-void
.end method

.method public StartEnrollTest()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    if-eqz v0, :cond_18

    .line 92
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_7
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    invoke-interface {v1}, Lcom/fingerprints/common/extension/util/FpTest;->startEnrollTest()V

    .line 94
    const-string v1, "FPMMITEST"

    const-string v2, "liuchengselfTest nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v0

    goto :goto_1f

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 96
    :cond_18
    const-string v0, "FPMMITEST"

    const-string v1, "startEnrollTest nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_1f
    return-void
.end method

.method public checkBoardTest()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    if-eqz v0, :cond_8

    .line 83
    invoke-interface {v0}, Lcom/fingerprints/common/extension/util/FpTest;->startCheckBoardTest()V

    goto :goto_f

    .line 85
    :cond_8
    const-string v0, "FPMMITEST"

    const-string v1, "checkBoardTest nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_f
    return-void
.end method

.method public initFpMmiTest(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;Landroid/content/Context;)V
    .registers 8
    .param p1, "callBack"    # Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    .param p2, "context"    # Landroid/content/Context;

    .line 31
    const-string v0, "FPMMITEST"

    const-string v1, "FpMmiTest begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v1, "persist.vendor.sys.fp.vendor"

    const-string v2, "sos"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FpMmiTest mVendorName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->CHIPONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " instance"

    const-string v3, "FpMmiTest get "

    if-eqz v1, :cond_5d

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->CHIPONE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p2}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->getInstance(Landroid/content/Context;)Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    goto/16 :goto_ef

    .line 46
    :cond_5d
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->EGIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->EGIS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/fingerprints/common/extension/util/EgisMMI;->getInstance()Lcom/fingerprints/common/extension/util/EgisMMI;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    goto :goto_ef

    .line 49
    :cond_8c
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->SILEAD:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->SILEAD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p2}, Lcom/fingerprints/common/extension/util/SileadFpTest;->getInstance(Landroid/content/Context;)Lcom/fingerprints/common/extension/util/SileadFpTest;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    goto :goto_ef

    .line 52
    :cond_bb
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->FOCAL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->FOCAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/fingerprints/common/extension/util/FocalFpTest;->getInstance()Lcom/fingerprints/common/extension/util/FocalFpTest;

    move-result-object v1

    iput-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    goto :goto_ef

    .line 56
    :cond_ea
    const-string v1, "FpMmiTest get unexpect instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_ef
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    invoke-interface {v1, p1}, Lcom/fingerprints/common/extension/util/FpTest;->setCallBack(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FpMmiTest the chip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FP test module init end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public selfTest()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/FpMmiTest;->mFpMMITest:Lcom/fingerprints/common/extension/util/FpTest;

    if-eqz v0, :cond_8

    .line 74
    invoke-interface {v0}, Lcom/fingerprints/common/extension/util/FpTest;->startSelfTest()V

    goto :goto_f

    .line 76
    :cond_8
    const-string v0, "FPMMITEST"

    const-string v1, "selfTest nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_f
    return-void
.end method
