.class public Lcom/android/server/sepunion/SemPluginManagerService;
.super Lcom/samsung/android/sepunion/IPluginManager$Stub;
.source "SemPluginManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;
.implements Lcom/android/server/sepunion/AbsSemSystemServiceForS;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public localService:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

.field public mContext:Landroid/content/Context;

.field public mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public mIsCoverSupport:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/android/server/sepunion/SemPluginManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IPluginManager$Stub;-><init>()V

    .line 31
    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemPluginManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.sec.feature.cover"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemPluginManagerService;->initialize()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    if-eqz p3, :cond_14

    .line 138
    array-length v0, p3

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_17

    .line 141
    :cond_14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public final dumpCoverInfomation(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 146
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "\n##### SEP COVER MANAGER SERVICE #####\n##### (dumpsys sepunion cover) #####\n"

    .line 149
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_8a

    .line 152
    array-length v0, p3

    if-nez v0, :cond_11

    goto/16 :goto_8a

    :cond_11
    const/4 v0, 0x0

    .line 155
    aget-object v1, p3, v0

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 156
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_8f

    .line 157
    :cond_26
    aget-object v1, p3, v0

    const-string/jumbo v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    .line 158
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_8f

    .line 159
    :cond_3c
    aget-object v1, p3, v0

    const-string/jumbo v3, "secure_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "device_policy"

    if-eqz v1, :cond_61

    .line 160
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-string p1, "111111"

    .line 161
    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_8f

    .line 162
    sget-object p0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string p1, "dumpCoverInfomation: resetPassword(secure_on) failed."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 164
    :cond_61
    aget-object v0, p3, v0

    const-string/jumbo v1, "secure_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 165
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-string p1, ""

    .line 166
    invoke-virtual {p0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_8f

    .line 167
    sget-object p0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string p1, "dumpCoverInfomation: resetPassword(secure_off) failed."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 170
    :cond_84
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_8f

    .line 153
    :cond_8a
    :goto_8a
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public getCoverManagerServiceImpl()Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-object p0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_b

    .line 71
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()V
    .registers 3

    .line 38
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_d

    .line 39
    new-instance v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 42
    :cond_d
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    iput-object v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->localService:Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    if-nez v0, :cond_25

    .line 44
    const-class v0, Lcom/samsung/android/sepunion/SemPluginManagerLocal;

    new-instance v1, Lcom/android/server/sepunion/SemPluginLocalService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemPluginLocalService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 6

    .line 57
    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyCoverSwitchStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-nez v0, :cond_d

    return-void

    .line 61
    :cond_d
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V

    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 7

    .line 49
    sget-object v0, Lcom/android/server/sepunion/SemPluginManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-nez v0, :cond_d

    return-void

    .line 53
    :cond_d
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_e

    .line 95
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz p1, :cond_1b

    .line 96
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->systemRunning()V

    goto :goto_1b

    :cond_e
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1b

    .line 99
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz p1, :cond_1b

    .line 100
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onBootComplete()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 115
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_9

    .line 116
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    :cond_9
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 122
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_9

    .line 123
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    :cond_9
    return-void
.end method

.method public onUserStarting(I)V
    .registers 2

    return-void
.end method

.method public onUserStopped(I)V
    .registers 2

    return-void
.end method

.method public onUserStopping(I)V
    .registers 2

    return-void
.end method

.method public onUserSwitching(II)V
    .registers 3

    .line 194
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz p1, :cond_9

    .line 195
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onSwitchUser(I)V

    :cond_9
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 3

    .line 187
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mIsCoverSupport:Z

    if-eqz v0, :cond_9

    .line 188
    iget-object p0, p0, Lcom/android/server/sepunion/SemPluginManagerService;->mCoverManagerServiceImpl:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->onUserUnlocked(I)V

    :cond_9
    return-void
.end method

.method public onUserUnlocking(I)V
    .registers 2

    return-void
.end method
