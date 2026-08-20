.class public Lcom/android/server/pm/PackageInstallerSession$StagedSession;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Lcom/android/server/pm/StagingManager$StagedSession;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StagedSession"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public static synthetic $r8$lambda$5h0bcfuuxMorNYh7YTuDhyD4duE(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->lambda$containsApexSession$0(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VyybwOQlIa01qyiNP-jTe4J09wE(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->lambda$sessionContains$1(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$containsApexSession$0(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 1

    .line 570
    invoke-interface {p0}, Lcom/android/server/pm/StagingManager$StagedSession;->isApexSession()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$sessionContains$1(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    .line 644
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abandon()V
    .registers 1

    .line 664
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    return-void
.end method

.method public containsApexSession()Z
    .registers 2

    .line 570
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public containsApkSession()Z
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->containsApkSession()Z

    move-result p0

    return p0
.end method

.method public getChildSessions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_b

    .line 536
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 538
    :cond_b
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 539
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_36

    .line 542
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 544
    :cond_36
    monitor-exit v0

    return-object v2

    :catchall_38
    move-exception p0

    .line 545
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public getCommittedMillis()J
    .registers 3

    .line 639
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getCommittedMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 575
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentSessionId()I
    .registers 1

    .line 619
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p0

    return p0
.end method

.method public hasParentSessionId()Z
    .registers 1

    .line 614
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result p0

    return p0
.end method

.method public installSession()Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v1, "StagedSession#installSession"

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$massertNotChild(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 609
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$minstall(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public isApexSession()Z
    .registers 2

    .line 560
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isCommitted()Z
    .registers 1

    .line 624
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .registers 1

    .line 634
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method public isInTerminalState()Z
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$misInTerminalState(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method public isMultiPackage()Z
    .registers 1

    .line 555
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return p0
.end method

.method public isSessionApplied()Z
    .registers 1

    .line 654
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionApplied()Z

    move-result p0

    return p0
.end method

.method public isSessionFailed()Z
    .registers 1

    .line 659
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionFailed()Z

    move-result p0

    return p0
.end method

.method public isSessionReady()Z
    .registers 1

    .line 649
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSessionReady()Z

    move-result p0

    return p0
.end method

.method public sessionContains(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/StagingManager$StagedSession;",
            ">;)Z"
        }
    .end annotation

    .line 644
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public sessionId()I
    .registers 1

    .line 565
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0
.end method

.method public sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 1

    .line 550
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    return-object p0
.end method

.method public setSessionApplied()V
    .registers 1

    .line 590
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$msetSessionApplied(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public setSessionFailed(ILjava/lang/String;)V
    .registers 3

    .line 585
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    return-void
.end method

.method public setSessionReady()V
    .registers 1

    .line 580
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    return-void
.end method

.method public verifySession()V
    .registers 2

    .line 675
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isCommitted()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 677
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 678
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mverify(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method
