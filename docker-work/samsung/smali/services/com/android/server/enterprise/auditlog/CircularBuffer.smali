.class public Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field public static final ADAYINMILLISEC:J = 0x5265c00L

.field public static final BUFFERREADSIZE:I = 0x10000

.field public static final EDM_AUDIT_LOG_FILENAME:Ljava/lang/String; = "/data/system/"

.field public static final TAG:Ljava/lang/String; = "CircularBuffer"

.field public static final TOTALNUMBEROFFILES:I = 0x8fc

.field public static mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public mAdminCriticalSize:F

.field public mAdminDirectoryPath:Ljava/lang/String;

.field public mAdminMaximumSize:F

.field public mBufferLimitSize:J

.field public volatile mCircularBufferSize:J

.field public mContext:Landroid/content/Context;

.field public mCriticalIntent:Z

.field public mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field public mDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFullBuffer:F

.field public mFullIntent:Z

.field public volatile mIsBootCompleted:Z

.field public volatile mIsDumping:Z

.field public mIsPseudoAdminOfOrganizationOwnedDevice:Z

.field public volatile mLastDumpedFile:Ljava/lang/String;

.field public mLock:Ljava/lang/Object;

.field public mMaximumIntent:Z

.field public volatile mNumberOfDeprecatedFiles:I

.field public mPackageName:Ljava/lang/String;

.field public mPendingIntentErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalDirectoryOccupation:J

.field public volatile mTypeOfDump:Z

.field public final mUid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 107
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "CircularBuffer"

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 113
    sget-object v2, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 114
    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const/high16 v1, 0x428c0000    # 70.0f

    .line 115
    iput v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    const/high16 v1, 0x42b40000    # 90.0f

    .line 116
    iput v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    const/high16 v1, 0x42c20000    # 97.0f

    .line 117
    iput v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    .line 118
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 119
    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 120
    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    const/4 p2, 0x0

    .line 121
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 123
    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    :try_start_3c
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->checkPseudoAdminForUid(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mIsPseudoAdminOfOrganizationOwnedDevice = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_3c .. :try_end_59} :catch_5a

    goto :goto_74

    :catch_5a
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mEdmStorageProvider.checkPseudoAdminForUid: error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_74
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 132
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getNumberOfDeprecatedFiles()I

    move-result p1

    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "/data/system/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->populateCircularBuffer()V

    return-void
.end method


# virtual methods
.method public final addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .registers 5

    .line 315
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v0, :cond_7

    .line 316
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->checkCriticalSizes()V

    .line 318
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez v0, :cond_1d

    .line 319
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 320
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->cleanBuffer()V

    .line 324
    :cond_1d
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final checkCriticalSizes()V
    .registers 18

    move-object/from16 v1, p0

    .line 549
    iget-wide v2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v2, v4

    long-to-int v0, v2

    int-to-float v2, v0

    .line 551
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    cmpl-float v0, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const-string v6, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    if-ltz v0, :cond_97

    .line 552
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    if-nez v0, :cond_99

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    iget-object v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 557
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getTargetUserId()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v0, v11, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 561
    :try_start_3f
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v0

    .line 562
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 563
    invoke-virtual {v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    :goto_6c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    iput-boolean v3, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 575
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AuditLog has reached its critical size. Percentage is "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 577
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    const-string v14, "CircularBuffer"

    .line 574
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_99

    .line 580
    :cond_97
    iput-boolean v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 584
    :cond_99
    :goto_99
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_f9

    .line 585
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    if-nez v0, :cond_fb

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    iget v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    iget-object v8, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 590
    iget-object v10, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getTargetUserId()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v0, v11, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 594
    :try_start_c6
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    iget-object v7, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 597
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    .line 596
    invoke-virtual {v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    :goto_f3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    iput-boolean v3, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    goto :goto_fb

    .line 608
    :cond_f9
    iput-boolean v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 612
    :cond_fb
    :goto_fb
    iget v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_166

    .line 613
    iget-boolean v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    if-nez v0, :cond_168

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    iget v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    iget-object v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 618
    iget-object v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getTargetUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v9, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 622
    :try_start_128
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v0

    .line 623
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    iget-object v2, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 625
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v2, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 624
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    iget-object v0, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_150} :catch_151

    goto :goto_155

    :catch_151
    move-exception v0

    .line 629
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    :goto_155
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    iput-boolean v3, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    .line 634
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    const-string v2, "Full Size Reached!"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_168

    .line 637
    :cond_166
    iput-boolean v4, v1, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    :cond_168
    :goto_168
    return-void
.end method

.method public final cleanBuffer()V
    .registers 8

    .line 656
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v0

    .line 657
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 659
    :goto_9
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->totalNumberFiles()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4d

    .line 660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 662
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 663
    iget v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    goto :goto_37

    .line 665
    :cond_2e
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 668
    :goto_37
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 669
    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 670
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 671
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 673
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public closeFile()V
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 434
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 435
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    goto :goto_1b

    .line 437
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 439
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 440
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public createBubbleDir()V
    .registers 4

    .line 678
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_bubble"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    .line 680
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_26
    return-void
.end method

.method public deleteAllFiles()V
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    if-eqz v0, :cond_16

    .line 462
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 464
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 465
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0

    .line 467
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v0

    .line 468
    :try_start_19
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 471
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 472
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 474
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_7e

    .line 475
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 476
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_bubble/bubbleFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 477
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_bubble"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catchall_7e
    move-exception p0

    .line 474
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public final deleteDirectory(Ljava/io/File;)V
    .registers 8

    .line 718
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 719
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 722
    array-length v1, v0

    const-string v2, "Directory is deleted : "

    if-nez v1, :cond_2d

    .line 723
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 724
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7e

    .line 728
    :cond_2d
    array-length v1, v0

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v1, :cond_3e

    aget-object v4, v0, v3

    .line 730
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 737
    :cond_3e
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_7e

    .line 738
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 739
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 739
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7e

    .line 747
    :cond_61
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File is deleted : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CircularBuffer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    return-void
.end method

.method public final dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .registers 6

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 226
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v1

    .line 232
    :cond_f
    new-instance v2, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 239
    array-length v2, v0

    if-lez v2, :cond_3b

    .line 240
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    return-object v0

    .line 247
    :cond_33
    :goto_33
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object v1
.end method

.method public final formatIfEmptyOrCorrupted(Ljava/io/File;)V
    .registers 13

    const-string v0, "formatIfEmptyOrCorrupted.IOException"

    const-string v1, "CircularBuffer"

    const/4 v2, 0x0

    .line 269
    :try_start_5
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rwd"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_4e
    .catchall {:try_start_5 .. :try_end_d} :catchall_4c

    const/high16 p1, 0x10000

    :try_start_f
    new-array p1, p1, [B

    const-wide/16 v4, 0x0

    .line 276
    :goto_13
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v6, 0x0

    if-lez v2, :cond_36

    add-int/lit8 v7, v2, -0x1

    .line 278
    aget-byte v7, p1, v7

    if-nez v7, :cond_32

    move v7, v6

    move v8, v7

    :goto_22
    if-ge v7, v2, :cond_37

    .line 280
    aget-byte v9, p1, v7

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2b

    move v8, v7

    :cond_2b
    if-nez v9, :cond_2f

    const/4 v6, 0x1

    goto :goto_37

    :cond_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_32
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_13

    :cond_36
    move v8, v6

    :cond_37
    :goto_37
    if-eqz v6, :cond_42

    const-wide/32 v6, 0x10000

    mul-long/2addr v4, v6

    int-to-long v6, v8

    add-long/2addr v4, v6

    .line 294
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_42} :catch_49
    .catchall {:try_start_f .. :try_end_42} :catchall_46

    .line 302
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_5f

    goto :goto_62

    :catchall_46
    move-exception p0

    move-object v2, v3

    goto :goto_63

    :catch_49
    move-exception p1

    move-object v2, v3

    goto :goto_4f

    :catchall_4c
    move-exception p0

    goto :goto_63

    :catch_4e
    move-exception p1

    :goto_4f
    :try_start_4f
    const-string v3, "formatIfEmptyOrCorrupted.Exception"

    .line 297
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_4c

    if-eqz v2, :cond_62

    .line 302
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_62

    .line 304
    :catch_5f
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    return-void

    :goto_63
    if-eqz v2, :cond_6c

    .line 302
    :try_start_65
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6c

    .line 304
    :catch_69
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_6c
    :goto_6c
    throw p0
.end method

.method public getBufferLogSize()J
    .registers 4

    .line 423
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 424
    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditLogBufferSize"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCriticalLogSize()I
    .registers 1

    .line 384
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    float-to-int p0, p0

    return p0
.end method

.method public getCurrentLogFileSize()I
    .registers 5

    .line 406
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0x64

    if-le p0, v0, :cond_e

    move p0, v0

    :cond_e
    return p0
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v0

    .line 368
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 369
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getLastTimestamp()J
    .registers 4

    .line 812
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 813
    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 814
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditLogLastTimestamp"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumLogSize()I
    .registers 1

    .line 399
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    float-to-int p0, p0

    return p0
.end method

.method public final getNumberOfDeprecatedFiles()I
    .registers 6

    const-string v0, "auditNumberOfDepFiles"

    .line 197
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 201
    :try_start_8
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 202
    invoke-virtual {v3, v4, p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_1b} :catch_23
    .catchall {:try_start_8 .. :try_end_1b} :catchall_21

    :cond_1b
    if-eqz v2, :cond_41

    .line 211
    :goto_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_41

    :catchall_21
    move-exception p0

    goto :goto_42

    :catch_23
    move-exception p0

    :try_start_24
    const-string v0, "CircularBuffer"

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_21

    if-eqz v2, :cond_41

    goto :goto_1d

    :cond_41
    :goto_41
    return v1

    :goto_42
    if-eqz v2, :cond_47

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_47
    throw p0
.end method

.method public final getTargetUserId()I
    .registers 2

    .line 642
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 643
    iget-boolean p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    if-eqz p0, :cond_14

    .line 644
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 646
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getOrganizationOwnedProfileUserId()I

    move-result v0

    :cond_14
    return v0
.end method

.method public final isCompressed(Ljava/io/File;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x2

    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 758
    :try_start_9
    invoke-virtual {p0, v0, v1, p1}, Ljava/io/FileInputStream;->read([BII)I

    aget-byte p1, v0, v1

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1a

    aget-byte p1, v0, v3
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1e

    const/16 v0, -0x75

    if-ne p1, v0, :cond_1a

    move v1, v3

    .line 770
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1d

    :catch_1d
    return v1

    :catchall_1e
    move-exception p1

    :try_start_1f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_22

    .line 773
    :catch_22
    throw p1
.end method

.method public final markDeprecatedFiles()V
    .registers 10

    .line 504
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 509
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 510
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v5

    if-nez v5, :cond_28

    .line 511
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 512
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_f

    :cond_28
    if-eqz v3, :cond_43

    .line 516
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_5f

    .line 520
    :cond_31
    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 521
    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    .line 522
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    goto :goto_f

    .line 526
    :cond_43
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 527
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v3, 0x0

    .line 529
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 530
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move v3, v2

    goto :goto_f

    .line 535
    :cond_5f
    :goto_5f
    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    .line 536
    monitor-exit v0

    return-void

    :catchall_66
    move-exception p0

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public final populateCircularBuffer()V
    .registers 12

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 148
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto/16 :goto_a0

    .line 150
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 155
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v2, v1, :cond_97

    aget-object v4, v0, v2

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->deleteDirectory(Ljava/io/File;)V

    goto :goto_92

    .line 159
    :cond_2f
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    .line 160
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_94

    .line 163
    :cond_3d
    new-instance v5, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 164
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    .line 166
    :try_start_48
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->isCompressed(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_7c

    .line 167
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->formatIfEmptyOrCorrupted(Ljava/io/File;)V

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-nez v7, :cond_5d

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_94

    .line 172
    :cond_5d
    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_60} :catch_61

    goto :goto_7c

    :catch_61
    move-exception v4

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "CircularBuffer"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_7c
    :goto_7c
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    if-le v3, v4, :cond_8f

    .line 181
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v5}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v4

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_92

    .line 184
    :cond_8f
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    :goto_92
    add-int/lit8 v3, v3, 0x1

    :goto_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 190
    :cond_97
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->reCalculateDirectoryAndBubbleSizes([Ljava/io/File;)V

    .line 192
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    :goto_a0
    return-void
.end method

.method public final reCalculateDirectoryAndBubbleSizes([Ljava/io/File;)V
    .registers 9

    if-eqz p1, :cond_14

    .line 256
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 257
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 261
    :cond_14
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    return-void
.end method

.method public resizeBubbleFile(J)V
    .registers 11

    const-string/jumbo v0, "resizeBubbleFile.IOException"

    const-string v1, "CircularBuffer"

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    const-string v3, "_bubble/bubbleFile"

    const-string v4, "/data/system/"

    if-gtz v2, :cond_2c

    .line 687
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :cond_2c
    const/4 v2, 0x0

    .line 693
    :try_start_2d
    new-instance v5, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "rws"

    invoke-direct {v5, v6, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_4e} :catch_6d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_4e} :catch_67
    .catchall {:try_start_2d .. :try_end_4e} :catchall_65

    long-to-int p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 695
    :try_start_51
    new-array v2, p0, [B

    .line 696
    invoke-virtual {v5, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    const/4 p1, 0x0

    .line 698
    invoke-virtual {v5, v2, p1, p0}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_5a} :catch_63
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_61
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5e

    .line 707
    :try_start_5a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_79

    goto :goto_7c

    :catchall_5e
    move-exception p0

    move-object v2, v5

    goto :goto_7d

    :catch_61
    move-object v2, v5

    goto :goto_67

    :catch_63
    move-object v2, v5

    goto :goto_6d

    :catchall_65
    move-exception p0

    goto :goto_7d

    .line 703
    :catch_67
    :goto_67
    :try_start_67
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7c

    goto :goto_75

    :catch_6d
    :goto_6d
    const-string/jumbo p0, "resizeBubbleFile.FileNotFoundException"

    .line 701
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_65

    if-eqz v2, :cond_7c

    .line 707
    :goto_75
    :try_start_75
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7c

    .line 710
    :catch_79
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_7c
    return-void

    :goto_7d
    if-eqz v2, :cond_86

    .line 707
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_86

    .line 710
    :catch_83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_86
    :goto_86
    throw p0
.end method

.method public setBootCompleted(Z)V
    .registers 6

    .line 447
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 449
    iget-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz p1, :cond_2a

    .line 450
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    monitor-enter p1

    .line 451
    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 452
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 453
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f

    .line 455
    :cond_25
    monitor-exit p1

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-void
.end method

.method public setBufferLogSize(J)V
    .registers 3

    .line 415
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 416
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    return-void
.end method

.method public setCriticalLogSize(I)V
    .registers 2

    int-to-float p1, p1

    .line 376
    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    const/4 p1, 0x0

    .line 377
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    return-void
.end method

.method public declared-synchronized setIsDumping(ZZ)V
    .registers 3

    monitor-enter p0

    .line 484
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez p1, :cond_11

    if-eqz p2, :cond_11

    .line 486
    iget-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 487
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->markDeprecatedFiles()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 490
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLastTimestamp(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)V"
        }
    .end annotation

    .line 795
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 797
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 798
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto :goto_5

    :cond_12
    if-eqz v0, :cond_37

    .line 802
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 803
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "auditLogLastTimestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 804
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    :cond_37
    return-void
.end method

.method public setMaximumLogSize(I)V
    .registers 2

    int-to-float p1, p1

    .line 391
    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    return-void
.end method

.method public final setNumberOfDeprecatedFiles(I)V
    .registers 4

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "auditNumberOfDepFiles"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v1, "AUDITLOG"

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method

.method public setTypeOfDump(Z)V
    .registers 2

    .line 493
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    return-void
.end method

.method public final totalNumberFiles()J
    .registers 8

    .line 778
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x8fc

    if-eqz v0, :cond_1e

    .line 780
    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v5, v0

    div-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1e

    .line 782
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    div-long/2addr v0, v3

    return-wide v0

    :cond_1e
    return-wide v1
.end method

.method public write(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_49

    .line 330
    :try_start_2
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 331
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 332
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 333
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 334
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 335
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 337
    :cond_36
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 338
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto :goto_bb

    .line 342
    :cond_49
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_96

    .line 343
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 344
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 345
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->compressFile()Z

    .line 346
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 347
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 349
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 350
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 352
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    .line 353
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 355
    :cond_91
    monitor-exit v0

    goto :goto_bb

    :catchall_93
    move-exception p1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_4c .. :try_end_95} :catchall_93

    :try_start_95
    throw p1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_96} :catch_96

    :catch_96
    move-exception p1

    const-string v0, "CircularBuffer"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write.Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_bb
    return-void
.end method
