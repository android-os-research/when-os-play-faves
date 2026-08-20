.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;
.super Landroid/os/ContainerStateReceiver;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 615
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 8

    const-string p1, "SdpManagerImpl"

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerCreated :: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Workspace for user %d has been created"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 620
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 622
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_31

    return-void

    .line 627
    :cond_31
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineDbLock(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 628
    :try_start_38
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 630
    new-instance p0, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected condition while find engine info with id "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    .line 632
    monitor-exit p1

    return-void

    .line 634
    :cond_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_38 .. :try_end_5c} :catchall_b1

    .line 636
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetUserInfo(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 637
    invoke-static {p1}, Lcom/android/server/knox/dar/DarUtil;->isLegacyContainerUser(Landroid/content/pm/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_b0

    const-string p1, "On created - User %d workspace identified as old-fashioned"

    new-array v2, v0, [Ljava/lang/Object;

    .line 639
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    .line 638
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    const-string p1, "EXTRA_RESET_TOKEN"

    const/4 p2, 0x0

    .line 641
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 644
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineDbLock(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 645
    :try_start_8d
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result p2

    or-int/2addr p2, v0

    .line 646
    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    .line 648
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p3

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineDb(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->-$$Nest$mstoreEngineInfoLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 650
    monitor-exit p1

    goto :goto_b0

    :catchall_ad
    move-exception p0

    monitor-exit p1
    :try_end_af
    .catchall {:try_start_8d .. :try_end_af} :catchall_ad

    throw p0

    :cond_b0
    :goto_b0
    return-void

    :catchall_b1
    move-exception p0

    .line 634
    :try_start_b2
    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw p0
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onContainerLocked :: user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SdpManagerImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 669
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Immediately lock sdp for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyEvictionRequired(I)V

    :cond_3c
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onContainerShutdown :: user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SdpManagerImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 659
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Container has been shut down for user "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 661
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$3;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onMasterKeyEvictionRequired(I)V

    :cond_3c
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 677
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onContainerUnlocked :: user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
