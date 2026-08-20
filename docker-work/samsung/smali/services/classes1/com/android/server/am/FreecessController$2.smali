.class public Lcom/android/server/am/FreecessController$2;
.super Landroid/app/IUidObserver$Stub;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .registers 2

    .line 3159
    iput-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3254
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 3255
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v2}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3256
    iget-object v2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v2}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3258
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_ae

    .line 3260
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3261
    :try_start_24
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmIsScreenOnFreecessEnabled(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmSkipTriggerLcdOnFreeze(Lcom/android/server/am/FreecessController;)Z

    move-result v1

    if-nez v1, :cond_a9

    const v1, 0x186a0

    if-lt p1, v1, :cond_3a

    goto :goto_40

    .line 3262
    :cond_3a
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 3263
    :goto_40
    iget-object v1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFreecessManagedPackages(Lcom/android/server/am/FreecessController;)Lcom/android/server/am/FreecessPkgMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    if-nez p1, :cond_50

    .line 3264
    monitor-exit v0

    return-void

    .line 3267
    :cond_50
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz p0, :cond_65

    .line 3268
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v2, "CalmMode for restart"

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 3269
    monitor-exit v0

    return-void

    .line 3272
    :cond_65
    iget p0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6d

    const/4 v1, 0x3

    if-ne p0, v1, :cond_a9

    .line 3273
    :cond_6d
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_9e

    .line 3274
    sget-object p0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUidActive...uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", freezedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_9e
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/FreecessHandler;->sendResetStateMsg(Ljava/lang/String;I)V

    .line 3280
    :cond_a9
    monitor-exit v0

    return-void

    :catchall_ab
    move-exception p0

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_24 .. :try_end_ad} :catchall_ab

    throw p0

    :catchall_ae
    move-exception p0

    .line 3258
    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3230
    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p2

    .line 3231
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0, p1}, Lcom/android/server/am/FreecessController;->-$$Nest$mgetPackageStatus(Lcom/android/server/am/FreecessController;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    if-nez v0, :cond_d

    .line 3232
    monitor-exit p2

    return-void

    .line 3233
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1d

    monitor-exit p2

    return-void

    .line 3236
    :cond_1d
    iget v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    const/4 v1, 0x1

    .line 3237
    iput v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3238
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3239
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3240
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3242
    :cond_42
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_68

    .line 3243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3244
    iget-object p2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p2}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 3245
    :try_start_4e
    iget-object p2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p2}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 3246
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3248
    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_65

    throw p0

    :catchall_68
    move-exception p0

    .line 3242
    :try_start_69
    monitor-exit p2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public onUidIdle(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3221
    iget-object p2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p2}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 3222
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3223
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    :cond_20
    monitor-exit p2

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 7

    .line 3162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    if-ne p2, p4, :cond_ab

    .line 3165
    iget-object p5, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    const-string v0, "UID_TOP"

    invoke-virtual {p5, p1, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 3166
    iget-object p5, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p5}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p5

    monitor-enter p5

    .line 3167
    :try_start_15
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3168
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    :cond_2a
    monitor-exit p5
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_a8

    .line 3171
    iget-object p5, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    iget-boolean v0, p5, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-eqz v0, :cond_c8

    invoke-static {p5}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmScreenOn(Lcom/android/server/am/FreecessController;)Z

    move-result p5

    if-eqz p5, :cond_c8

    .line 3172
    iget-object p5, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p5}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p5

    monitor-enter p5

    .line 3173
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p4, :cond_8a

    .line 3174
    iget-object p4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p4}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 3175
    iget-object p4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p4}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 3176
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_a3

    .line 3177
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3180
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    iget-object p4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p4}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 3183
    :cond_8a
    iget-object v0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {v0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p4, :cond_a3

    .line 3184
    iget-object p4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p4}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmLatestUsedPackagesList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3186
    :cond_a3
    :goto_a3
    monitor-exit p5

    goto :goto_c8

    :catchall_a5
    move-exception p0

    monitor-exit p5
    :try_end_a7
    .catchall {:try_start_3e .. :try_end_a7} :catchall_a5

    throw p0

    :catchall_a8
    move-exception p0

    .line 3170
    :try_start_a9
    monitor-exit p5
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0

    .line 3189
    :cond_ab
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 3190
    :try_start_b2
    iget-object p4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p4}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c7

    .line 3191
    iget-object p4, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p4}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmTopUidList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3193
    :cond_c7
    monitor-exit p1
    :try_end_c8
    .catchall {:try_start_b2 .. :try_end_c8} :catchall_111

    :cond_c8
    :goto_c8
    const/4 p1, 0x4

    if-eq p2, p1, :cond_f0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_cf

    goto :goto_f0

    .line 3204
    :cond_cf
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 3205
    :try_start_d6
    iget-object p2, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p2}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_eb

    .line 3206
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3208
    :cond_eb
    monitor-exit p1

    goto :goto_10d

    :catchall_ed
    move-exception p0

    monitor-exit p1
    :try_end_ef
    .catchall {:try_start_d6 .. :try_end_ef} :catchall_ed

    throw p0

    .line 3198
    :cond_f0
    :goto_f0
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 3199
    :try_start_f7
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10c

    .line 3200
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmFGServiceList(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3202
    :cond_10c
    monitor-exit p2

    :goto_10d
    return-void

    :catchall_10e
    move-exception p0

    monitor-exit p2
    :try_end_110
    .catchall {:try_start_f7 .. :try_end_110} :catchall_10e

    throw p0

    :catchall_111
    move-exception p0

    .line 3193
    :try_start_112
    monitor-exit p1
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw p0
.end method
