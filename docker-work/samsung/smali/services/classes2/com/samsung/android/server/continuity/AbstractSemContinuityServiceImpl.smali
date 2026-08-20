.class public abstract Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;
.super Lcom/samsung/android/continuity/ISemContinuityManager$Stub;
.source "AbstractSemContinuityServiceImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_SemContinuityServiceImpl"


# instance fields
.field public mCurrentUserId:I

.field public final mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$hTYu1opAaQIswESb7lvbmvtffL4(Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->lambda$onUserSwitching$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;-><init>()V

    const/16 v0, -0x2710

    .line 21
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 29
    invoke-static {}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->start()V

    const-string/jumbo v0, "user"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    return-void
.end method

.method private synthetic lambda$onUserSwitching$0(Landroid/os/UserHandle;)V
    .registers 4

    .line 36
    iget v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_b

    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    .line 39
    :cond_b
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->setCurrentUserHandle(Landroid/os/UserHandle;)V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public getNearbyDeviceCount(II)I
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p2, :cond_20

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNearbyDeviceCount - invalid user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_20
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getNearbyDeviceCount(I)I

    move-result p0

    return p0
.end method

.method public onUserSwitching(Landroid/os/UserHandle;)V
    .registers 3

    .line 35
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onUserUnlocking(Landroid/os/UserHandle;)V
.end method

.method public abstract setCurrentUserHandle(Landroid/os/UserHandle;)V
.end method
