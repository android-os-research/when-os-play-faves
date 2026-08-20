.class public Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field public static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field public static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field public static final ROLLBACK_STATE_DELETED:I = 0x4

.field public static final ROLLBACK_STATE_ENABLING:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field public final mBackupDir:Ljava/io/File;

.field public final mExtensionVersions:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackageName:Ljava/lang/String;

.field public final mOriginalSessionId:I

.field public final mPackageSessionIds:[I

.field public mRestoreUserDataInProgress:Z

.field public mState:I

.field public mStateDescription:Ljava/lang/String;

.field public mTimestamp:Ljava/time/Instant;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$HnGuVN7gg8BjzGYtg5G6PRa_Xzg(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->lambda$commit$0(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgpEB66zvRMlxdWP-9OwCWf4NSU(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->lambda$commit$1(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p8

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    .line 153
    iput-object v2, v0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    const/4 v2, 0x0

    .line 160
    iput-boolean v2, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 209
    new-instance v9, Landroid/content/rollback/RollbackInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, -0x1

    move-object v3, v9

    move v4, p1

    move v6, p4

    invoke-direct/range {v3 .. v8}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v9, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    move v3, p5

    .line 214
    iput v3, v0, Lcom/android/server/rollback/Rollback;->mUserId:I

    move-object/from16 v3, p6

    .line 215
    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    move-object v3, p2

    .line 216
    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    move v3, p3

    .line 217
    iput v3, v0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 218
    iput v2, v0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 219
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    if-eqz p7, :cond_3c

    move-object/from16 v2, p7

    goto :goto_3e

    :cond_3c
    new-array v2, v2, [I

    .line 220
    :goto_3e
    iput-object v2, v0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 221
    invoke-static/range {p8 .. p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/util/SparseIntArray;

    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 222
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_58

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    :goto_59
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 11

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 232
    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 233
    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 235
    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 236
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 237
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 238
    iput-object p6, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 239
    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 240
    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p10

    check-cast p1, Landroid/util/SparseIntArray;

    iput-object p10, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 245
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 246
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_32

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static addAll(Ljava/util/List;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 422
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 423
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 880
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 883
    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 884
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 885
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 886
    invoke-interface {v3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v3

    if-nez v3, :cond_28

    goto :goto_43

    :cond_28
    move v4, v1

    .line 890
    :goto_29
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 891
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 892
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ge v6, v5, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_46
    return v1
.end method

.method private synthetic lambda$commit$0(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .registers 14

    .line 601
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    const-string p4, "Commit failed"

    .line 612
    invoke-virtual {p0, v1, p4}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 613
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 614
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 p4, -0x1

    invoke-virtual {p0, p4}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    const/4 p0, 0x3

    .line 615
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rollback downgrade install failed: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 618
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    .line 623
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 626
    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 629
    :cond_3e
    iget-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    .line 631
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 635
    :try_start_4d
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string p0, "android.content.rollback.extra.STATUS"

    .line 636
    invoke-virtual {v6, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p3

    move-object v4, p2

    .line 639
    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_5f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4d .. :try_end_5f} :catch_5f

    .line 644
    :catch_5f
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 647
    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    const-string p4, "android.permission.MANAGE_ROLLBACKS"

    .line 648
    invoke-virtual {p2, p0, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_76

    :cond_88
    return-void
.end method

.method private synthetic lambda$commit$1(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .registers 13

    .line 600
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static rollbackStateFromString(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_5a

    goto :goto_3a

    :sswitch_f
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_3a

    :cond_18
    move v4, v1

    goto :goto_3a

    :sswitch_1a
    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_3a

    :cond_23
    const/4 v4, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_3a

    :cond_2e
    move v4, v2

    goto :goto_3a

    :sswitch_30
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3a

    :cond_39
    move v4, v3

    :goto_3a
    packed-switch v4, :pswitch_data_6c

    .line 864
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_54
    return v3

    :pswitch_55
    const/4 p0, 0x4

    return p0

    :pswitch_57
    return v2

    :pswitch_58
    return v1

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x58e10884 -> :sswitch_30
        -0x2bbe7537 -> :sswitch_25
        0x5c6a3019 -> :sswitch_1a
        0x61e1ed80 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_57
        :pswitch_55
        :pswitch_54
    .end packed-switch
.end method

.method public static rollbackStateToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-ne p0, v0, :cond_e

    const-string p0, "deleted"

    return-object p0

    .line 852
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_25
    const-string p0, "committed"

    return-object p0

    :cond_28
    const-string p0, "available"

    return-object p0

    :cond_2b
    const-string p0, "enabling"

    return-object p0
.end method


# virtual methods
.method public allPackagesEnabled()Z
    .registers 5

    .line 834
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 836
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 837
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-nez v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 841
    :cond_24
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length p0, p0

    if-ne v2, p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public final assertInWorkerThread()V
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method public commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v0, 0x2

    const-string v3, "Rollback unavailable"

    .line 489
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    .line 495
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 496
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 497
    iget-object v5, v0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v5, v3}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v0, "Rollback may violate a minExtensionVersion constraint"

    .line 498
    invoke-static {v1, v2, v4, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    .line 507
    :cond_39
    :try_start_39
    iget v3, v0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 508
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v6, p3

    .line 507
    invoke-virtual {v1, v6, v5, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_46} :catch_1bc

    .line 515
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 517
    :try_start_4a
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v6

    .line 518
    new-instance v7, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v7, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 520
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 521
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 523
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    :cond_62
    const/4 v8, 0x5

    .line 525
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 527
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v7

    .line 528
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v9

    .line 531
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    iget-object v11, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_87
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_175

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/rollback/PackageRollbackInfo;

    .line 533
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v13

    if-eqz v13, :cond_a1

    goto :goto_87

    .line 540
    :cond_a1
    new-instance v13, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v13, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 542
    iget-object v14, v0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 543
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b6

    .line 545
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 544
    invoke-virtual {v3, v14}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_b6
    if-eqz v14, :cond_bb

    .line 548
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 550
    :cond_bb
    invoke-virtual {v13, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 552
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v14

    .line 551
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 553
    invoke-virtual {v13, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v14

    if-eqz v14, :cond_d5

    .line 555
    invoke-virtual {v13}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 557
    :cond_d5
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v14

    if-eqz v14, :cond_de

    .line 558
    invoke-virtual {v13}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 560
    :cond_de
    invoke-virtual {v6, v13}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v13

    .line 561
    invoke-virtual {v6, v13}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v15

    .line 563
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 562
    invoke-static {v0, v14}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v14

    if-nez v14, :cond_10e

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup copy of package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is inaccessible"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-static {v1, v2, v4, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    .line 571
    :cond_10e
    array-length v12, v14

    :goto_10f
    if-ge v5, v12, :cond_169

    aget-object v8, v14, v5

    const/high16 v4, 0x10000000

    .line 572
    invoke-static {v8, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_119} :catch_19a

    .line 574
    :try_start_119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_15b

    move-object/from16 v23, v3

    .line 579
    :try_start_11f
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_126} :catch_12a
    .catchall {:try_start_11f .. :try_end_126} :catchall_128

    const/4 v3, 0x0

    goto :goto_12b

    :catchall_128
    move-exception v0

    goto :goto_142

    :catch_12a
    const/4 v3, 0x1

    :goto_12b
    if-eqz v3, :cond_146

    .line 584
    :try_start_12d
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v16, 0x0

    .line 585
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object v8, v14

    move-object v14, v15

    move-object/from16 v24, v15

    move-object v15, v3

    move-object/from16 v20, v4

    .line 584
    invoke-virtual/range {v14 .. v20}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_141
    .catchall {:try_start_12d .. :try_end_141} :catchall_128

    goto :goto_149

    .line 589
    :goto_142
    :try_start_142
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    throw v0

    :cond_146
    move-object v8, v14

    move-object/from16 v24, v15

    .line 589
    :goto_149
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14c
    .catchall {:try_start_142 .. :try_end_14c} :catchall_15b

    if-eqz v4, :cond_151

    .line 591
    :try_start_14e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_19a

    :cond_151
    add-int/lit8 v5, v5, 0x1

    move-object v14, v8

    move-object/from16 v3, v23

    move-object/from16 v15, v24

    const/4 v4, 0x1

    const/4 v8, 0x5

    goto :goto_10f

    :catchall_15b
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_168

    .line 572
    :try_start_15f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_168

    :catchall_163
    move-exception v0

    move-object v4, v0

    :try_start_165
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_168
    :goto_168
    throw v3

    :cond_169
    move-object/from16 v23, v3

    .line 593
    invoke-virtual {v9, v13}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    move-object/from16 v3, v23

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x5

    goto/16 :goto_87

    .line 597
    :cond_175
    invoke-static {v10}, Lcom/android/server/RescueParty;->resetDeviceConfigForPackages(Ljava/util/List;)V

    .line 599
    new-instance v3, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    .line 655
    new-instance v4, Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {v4, v3}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    const/4 v3, 0x3

    const-string v5, ""

    .line 656
    invoke-virtual {v0, v3, v5}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 657
    iget-object v3, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3, v7}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    const/4 v3, 0x1

    .line 658
    iput-boolean v3, v0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 659
    invoke-virtual {v4}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_199} :catch_19a

    goto :goto_1bb

    :catch_19a
    move-exception v0

    const-string v3, "RollbackManager"

    const-string v4, "Rollback failed"

    .line 661
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 662
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    :goto_1bb
    return-void

    :catch_1bc
    move v3, v4

    const-string v0, "Invalid callerPackageName"

    .line 510
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void
.end method

.method public commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .registers 3

    .line 458
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 459
    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 460
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    :cond_c
    return-void
.end method

.method public final containsApex()Z
    .registers 2

    .line 917
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 918
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public containsSessionId(I)Z
    .registers 6

    .line 819
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_10

    aget v3, p0, v2

    if-ne v3, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    return v1
.end method

.method public delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V
    .registers 12

    .line 706
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 708
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 709
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 710
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v5

    .line 711
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 713
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    goto :goto_14

    :cond_2f
    move v6, v2

    .line 715
    :goto_30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_14

    .line 717
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 719
    iget-object v8, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    invoke-virtual {p1, v8, v4, v7}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_4c
    if-eqz v3, :cond_75

    .line 724
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    .line 725
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 726
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexCeSnapshots(II)V

    goto :goto_5b

    .line 730
    :cond_75
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    const/4 p1, 0x4

    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 927
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-isStaged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-originalSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-packages:"

    .line 935
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 937
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 938
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a8

    .line 942
    :cond_e8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 943
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_14a

    const-string v0, "-causePackages:"

    .line 944
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 946
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 947
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_103

    .line 949
    :cond_12d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-committedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 952
    :cond_14a
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_166

    const-string v0, "-extensionVersions:"

    .line 953
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 955
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 958
    :cond_166
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z
    .registers 25

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    .line 375
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const/4 v3, 0x0

    move-object/from16 v4, p7

    .line 377
    :try_start_b
    invoke-static {p0, v1, v4}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 379
    array-length v4, v2

    move v5, v3

    :goto_16
    if-ge v5, v4, :cond_20

    aget-object v6, v2, v5

    .line 380
    invoke-static {p0, v1, v6}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_53

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 388
    :cond_20
    new-instance v2, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v7, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v3, p2

    invoke-direct {v7, v1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v3, p4

    invoke-direct {v8, v1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    move/from16 v11, p6

    move/from16 v14, p9

    invoke-direct/range {v6 .. v14}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 394
    iget-object v0, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :catch_53
    move-exception v0

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to copy package for rollback for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public enableForPackageInApex(Ljava/lang/String;JI)Z
    .registers 15

    .line 406
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 412
    new-instance v9, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 417
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public getApexPackageNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 807
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 808
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2c
    return-object v0
.end method

.method public getBackupDir()Ljava/io/File;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object p0
.end method

.method public getExtensionVersions()Landroid/util/SparseIntArray;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalSessionId()I
    .registers 1

    .line 293
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    return p0
.end method

.method public getPackageNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 794
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    return-object v0
.end method

.method public getStateAsString()Ljava/lang/String;
    .registers 1

    .line 869
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 870
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {p0}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStateDescription()Ljava/lang/String;
    .registers 1

    .line 963
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 964
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()Ljava/time/Instant;
    .registers 1

    .line 274
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 275
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 301
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return p0
.end method

.method public includesPackage(Ljava/lang/String;)Z
    .registers 3

    .line 760
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 761
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 762
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .registers 6

    .line 775
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 776
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 777
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 778
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 337
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCommitted()Z
    .registers 2

    .line 345
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 346
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isDeleted()Z
    .registers 2

    .line 354
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 355
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isEnabling()Z
    .registers 1

    .line 327
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 328
    iget p0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isRestoreUserDataInProgress()Z
    .registers 1

    .line 740
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 741
    iget-boolean p0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    return p0
.end method

.method public isStaged()Z
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result p0

    return p0
.end method

.method public makeAvailable()V
    .registers 3

    .line 471
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 472
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "RollbackManager"

    const-string v0, "Cannot make deleted rollback available."

    .line 473
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v0, 0x1

    const-string v1, ""

    .line 476
    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 477
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 478
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method public restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .registers 15

    .line 677
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 683
    :cond_b
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 684
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 687
    array-length p1, p2

    move v0, v1

    :goto_2d
    if-ge v1, p1, :cond_43

    aget v6, p2, v1

    .line 688
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 689
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    move-object v3, p5

    move-object v5, v2

    move v7, p3

    move-object v8, p4

    .line 688
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_43
    if-eqz v0, :cond_48

    .line 693
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    :cond_48
    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method public saveRollback()V
    .registers 1

    .line 363
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 364
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method public setRestoreUserDataInProgress(Z)V
    .registers 2

    .line 750
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 751
    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 752
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method public setState(ILjava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 969
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 970
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 971
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/time/Instant;)V
    .registers 2

    .line 283
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 284
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 285
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method public snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .registers 7

    .line 433
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 438
    :cond_a
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 439
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 440
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result p1

    if-nez p1, :cond_43

    .line 442
    iget-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    invoke-virtual {p3, p1, v1, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    .line 443
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/rollback/Rollback;->addAll(Ljava/util/List;[I)V

    .line 444
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    :cond_43
    return-void
.end method

.method public final wasCreatedAtLowerExtensionVersion()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 906
    :goto_2
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 907
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 908
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-le v2, v3, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method
