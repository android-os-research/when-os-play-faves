.class public final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field public static final APP_RECEIVE:I = 0x1

.field public static final CALL_DONE_RECEIVE:I = 0x3

.field public static final CALL_IN_RECEIVE:I = 0x2

.field public static final DELIVERY_DELIVERED:I = 0x1

.field public static final DELIVERY_PENDING:I = 0x0

.field public static final DELIVERY_SKIPPED:I = 0x2

.field public static final DELIVERY_TIMEOUT:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final WAITING_SERVICES:I = 0x4

.field public static sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final allowBackgroundActivityStarts:Z

.field public anrCount:I

.field public final appOp:I

.field public final callerApp:Lcom/android/server/am/ProcessRecord;

.field public final callerFeatureId:Ljava/lang/String;

.field public final callerInstantApp:Z

.field public final callerPackage:Ljava/lang/String;

.field public final callingPid:I

.field public final callingUid:I

.field public curApp:Lcom/android/server/am/ProcessRecord;

.field public curComponent:Landroid/content/ComponentName;

.field public curFilter:Lcom/android/server/am/BroadcastFilter;

.field public curReceiver:Landroid/content/pm/ActivityInfo;

.field public deferred:Z

.field public final delivery:[I

.field public dispatchClockTime:J

.field public dispatchRealTime:J

.field public dispatchTime:J

.field public final duration:[J

.field public enqueueClockTime:J

.field public enqueueRealTime:J

.field public enqueueTime:J

.field public final excludedPackages:[Ljava/lang/String;

.field public final excludedPermissions:[Ljava/lang/String;

.field public finishTime:J

.field public final initialSticky:Z

.field public final intent:Landroid/content/Intent;

.field public final mBackgroundActivityStartsToken:Landroid/os/IBinder;

.field public manifestCount:I

.field public manifestSkipCount:I

.field public nextReceiver:I

.field public final options:Landroid/app/BroadcastOptions;

.field public final ordered:Z

.field public queue:Lcom/android/server/am/BroadcastQueue;

.field public receiver:Landroid/os/IBinder;

.field public receiverTime:J

.field public final receivers:Ljava/util/List;

.field public receiversDispatchTime:[J

.field public receiversFinishTime:[J

.field public final requiredPermissions:[Ljava/lang/String;

.field public final resolvedType:Ljava/lang/String;

.field public resultAbort:Z

.field public resultCode:I

.field public resultData:Ljava/lang/String;

.field public resultExtras:Landroid/os/Bundle;

.field public resultTo:Landroid/content/IIntentReceiver;

.field public splitCount:I

.field public splitToken:I

.field public state:I

.field public final sticky:Z

.field public final targetComp:Landroid/content/ComponentName;

.field public timeoutExempt:Z

.field public final userId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V
    .registers 31

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p15

    .line 318
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    if-eqz v1, :cond_96

    move-object v3, p1

    .line 322
    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 323
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 324
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object v1, p3

    .line 325
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object v1, p4

    .line 326
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object v1, p5

    .line 327
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    move v1, p6

    .line 328
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move v1, p7

    .line 329
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move v1, p8

    .line 330
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    move-object v1, p9

    .line 331
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object v1, p10

    .line 332
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object v1, p11

    .line 333
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 v1, p12

    .line 334
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move/from16 v1, p13

    .line 335
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v1, p14

    .line 336
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 337
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v2, :cond_45

    .line 338
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    new-array v3, v3, [I

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 339
    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    move-object/from16 v3, p16

    .line 340
    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 v3, p17

    .line 341
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v3, p18

    .line 342
    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v3, p19

    .line 343
    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move/from16 v3, p20

    .line 344
    iput-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v3, p21

    .line 345
    iput-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v3, p22

    .line 346
    iput-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v3, p23

    .line 347
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 348
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 349
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move/from16 v3, p24

    .line 350
    iput-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move-object/from16 v3, p25

    .line 351
    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    move/from16 v3, p26

    .line 352
    iput-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz v2, :cond_86

    .line 355
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_87

    :cond_86
    move v3, v1

    :goto_87
    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    if-eqz v2, :cond_91

    .line 356
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v1

    :cond_91
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    return-void

    .line 320
    :cond_96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .registers 5

    .line 365
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 369
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 370
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 371
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 372
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 373
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 374
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 375
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 376
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 377
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 378
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 379
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 380
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 381
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 382
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 383
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 384
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 385
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 386
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 387
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 388
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 389
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 390
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 391
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 392
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 393
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 394
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 395
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 396
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 397
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 398
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 399
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 400
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 401
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 402
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 403
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 404
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 405
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 406
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 407
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 408
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 409
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    .line 410
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 413
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    .line 414
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    return-void
.end method


# virtual methods
.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_c

    move v4, v3

    goto :goto_d

    :cond_c
    move v4, v1

    .line 563
    :goto_d
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eq v5, p3, :cond_1b

    if-nez v4, :cond_1b

    if-nez v2, :cond_1b

    return v1

    .line 570
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v2, v1

    :goto_21
    if-ltz v0, :cond_88

    .line 571
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 572
    instance-of v6, v5, Landroid/content/pm/ResolveInfo;

    if-nez v6, :cond_2e

    goto :goto_85

    .line 575
    :cond_2e
    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_4b

    .line 577
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 578
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    if-eqz p2, :cond_4b

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 579
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    goto :goto_4b

    :cond_49
    move v6, v1

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v6, v3

    :goto_4c
    if-eqz v6, :cond_85

    if-nez v4, :cond_5a

    .line 580
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 581
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p3, :cond_85

    :cond_5a
    if-nez p4, :cond_5d

    return v3

    .line 586
    :cond_5d
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 589
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    add-int/lit8 v5, v0, 0x1

    array-length v6, v2

    sub-int/2addr v6, v3

    sub-int/2addr v6, v0

    invoke-static {v2, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    array-length v6, v2

    sub-int/2addr v6, v3

    sub-int/2addr v6, v0

    invoke-static {v2, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    array-length v6, v2

    sub-int/2addr v6, v3

    sub-int/2addr v6, v0

    invoke-static {v2, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v2, :cond_84

    add-int/lit8 v2, v2, -0x1

    .line 595
    iput v2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :cond_84
    move v2, v3

    :cond_85
    :goto_85
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 599
    :cond_88
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p3

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " to user "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 155
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v1, :cond_43

    iget-object v2, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eq v1, v2, :cond_43

    .line 161
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  targetComp: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    :cond_43
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 171
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "caller="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_66

    :cond_63
    const-string/jumbo v1, "null"

    :goto_66
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " pid="

    .line 173
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " uid="

    .line 174
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 175
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_85

    array-length v1, v1

    if-gtz v1, :cond_89

    :cond_85
    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v1, v2, :cond_a5

    .line 177
    :cond_89
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "requiredPermissions="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  appOp="

    .line 179
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 181
    :cond_a5
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_bd

    array-length v1, v1

    if-lez v1, :cond_bd

    .line 182
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "excludedPermissions="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    :cond_bd
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v1, :cond_d5

    array-length v1, v1

    if-lez v1, :cond_d5

    .line 186
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "excludedPackages="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    :cond_d5
    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v1, :cond_eb

    .line 190
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "options="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 192
    :cond_eb
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enqueueClockTime="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/util/Date;

    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " dispatchClockTime="

    .line 194
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/util/Date;

    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dispatchTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-wide v0, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v0, v1, v8, v9, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, " ("

    .line 198
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v11, v6, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v3, v11

    invoke-static {v3, v4, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, " since enq)"

    .line 200
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v11, 0x0

    cmp-long v1, v3, v11

    if-eqz v1, :cond_156

    const-string v1, " finishTime="

    .line 202
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v3, v4, v8, v9, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 203
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-wide v0, v6, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v3, v6, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " since disp)"

    .line 205
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_160

    :cond_156
    const-string v0, " receiverTime="

    .line 207
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v6, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v0, v1, v8, v9, v7}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_160
    const-string v0, ""

    .line 209
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v0, :cond_176

    .line 211
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "anrCount="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 213
    :cond_176
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v0, :cond_182

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v0, v2, :cond_182

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v0, :cond_1ae

    .line 214
    :cond_182
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultTo="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " resultCode="

    .line 215
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 217
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v0, :cond_1a4

    const-string v0, " resultData=(has data)"

    .line 218
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1ae

    :cond_1a4
    const-string v0, " resultData="

    .line 221
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    :cond_1ae
    :goto_1ae
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1bb

    .line 227
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultExtras=(has extras)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    :cond_1bb
    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v0, :cond_1cb

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_1cb

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v0, :cond_1cb

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v0, :cond_1f7

    .line 234
    :cond_1cb
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultAbort="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " ordered="

    .line 235
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " sticky="

    .line 236
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initialSticky="

    .line 237
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v6, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 239
    :cond_1f7
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v0, :cond_1ff

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v0, :cond_217

    .line 240
    :cond_1ff
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "nextReceiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " receiver="

    .line 241
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 243
    :cond_217
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_228

    .line 244
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curFilter="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    :cond_228
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_239

    .line 247
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curReceiver="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    :cond_239
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_279

    .line 250
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curApp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 251
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curComponent="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_25b

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25d

    :cond_25b
    const-string v0, "--"

    :goto_25d
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_279

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_279

    .line 254
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curSourceDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    :cond_279
    iget v0, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_2a8

    if-eq v0, v13, :cond_295

    if-eq v0, v12, :cond_292

    if-eq v0, v11, :cond_28f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28c

    const-string v0, " (?)"

    goto :goto_297

    :cond_28c
    const-string v0, " (WAITING_SERVICES)"

    goto :goto_297

    :cond_28f
    const-string v0, " (CALL_DONE_RECEIVE)"

    goto :goto_297

    :cond_292
    const-string v0, " (CALL_IN_RECEIVE)"

    goto :goto_297

    :cond_295
    const-string v0, " (APP_RECEIVE)"

    .line 266
    :goto_297
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_2a8
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_2b2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v15, v0

    goto :goto_2b3

    :cond_2b2
    const/4 v15, 0x0

    .line 269
    :goto_2b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, v7}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const/4 v2, 0x0

    :goto_2cc
    if-ge v2, v15, :cond_36c

    .line 272
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 273
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, v2

    if-eqz v0, :cond_2fb

    if-eq v0, v13, :cond_2f5

    if-eq v0, v12, :cond_2ef

    if-eq v0, v11, :cond_2e9

    const-string v0, "???????"

    .line 279
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_300

    :cond_2e9
    const-string v0, "Timeout"

    .line 278
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_300

    :cond_2ef
    const-string v0, "Skipped"

    .line 277
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_300

    :cond_2f5
    const-string v0, "Deliver"

    .line 276
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_300

    :cond_2fb
    const-string v0, "Pending"

    .line 275
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    :goto_300
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->duration:[J

    aget-wide v11, v0, v2

    invoke-static {v11, v12, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, " #"

    .line 282
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    instance-of v0, v1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_339

    .line 286
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 287
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    move-object v11, v1

    move-object/from16 v1, p0

    move v12, v2

    move-object/from16 v2, p1

    move-object v13, v3

    move v3, v12

    move-object v14, v5

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceExt;->printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V

    .line 292
    move-object v1, v11

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v7, v14}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_361

    :cond_339
    move-object v11, v1

    move v12, v2

    move-object v13, v3

    move-object v14, v5

    .line 293
    instance-of v0, v11, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_35d

    const-string v0, "(manifest)"

    .line 296
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget-object v0, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceExt;->printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V

    .line 302
    move-object v1, v11

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    invoke-virtual {v1, v13, v14, v0}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_361

    :cond_35d
    const/4 v0, 0x0

    .line 304
    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_361
    add-int/lit8 v2, v12, 0x1

    move-object/from16 v4, p2

    move-object v3, v13

    move-object v5, v14

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto/16 :goto_2cc

    :cond_36c
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 612
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 613
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 614
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 615
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getReceiverUid(Ljava/lang/Object;)I
    .registers 2

    .line 541
    instance-of p0, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p0, :cond_9

    .line 542
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    iget p0, p1, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return p0

    .line 544
    :cond_9
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_9

    return-object p0

    .line 552
    :cond_9
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method public splitDeferredBootCompletedBroadcastLocked(Landroid/app/ActivityManagerInternal;I)Landroid/util/SparseArray;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManagerInternal;",
            "I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 478
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    if-nez v1, :cond_c

    return-object v2

    .line 483
    :cond_c
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v3, :cond_11

    return-object v2

    .line 487
    :cond_11
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 488
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 489
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    return-object v2

    .line 493
    :cond_28
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 494
    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_35
    const/4 v6, 0x0

    if-ltz v4, :cond_84

    .line 495
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 496
    invoke-virtual {v0, v7}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v8

    if-eq v1, v5, :cond_63

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_53

    move-object/from16 v9, p1

    .line 499
    invoke-virtual {v9, v8}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v10

    const/16 v11, 0x32

    if-ge v10, v11, :cond_55

    goto :goto_81

    :cond_53
    move-object/from16 v9, p1

    :cond_55
    and-int/lit8 v10, v1, 0x4

    if-eqz v10, :cond_65

    const-wide/32 v10, 0xc2449f6

    .line 506
    invoke-static {v10, v11, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v10

    if-nez v10, :cond_65

    goto :goto_81

    :cond_63
    move-object/from16 v9, p1

    .line 514
    :cond_65
    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 515
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_76

    .line 517
    invoke-interface {v10, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_81

    .line 519
    :cond_76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 520
    invoke-virtual {v10, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 521
    invoke-virtual {v3, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_81
    add-int/lit8 v4, v4, -0x1

    goto :goto_35

    .line 524
    :cond_84
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_88
    if-ge v6, v1, :cond_100

    .line 526
    new-instance v4, Lcom/android/server/am/BroadcastRecord;

    move-object v7, v4

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v14, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v15, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v16, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move-object/from16 v19, v5

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v20, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v5

    .line 529
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Ljava/util/List;

    const/16 v23, 0x0

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v24, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v26, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v27, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v28, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v29, v5

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v30, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v31, v5

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    move-object/from16 v32, v5

    iget-boolean v5, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v33, v5

    invoke-direct/range {v7 .. v33}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V

    .line 532
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 533
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 534
    iget-wide v7, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 535
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    :cond_100
    return-object v2
.end method

.method public splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;
    .registers 33

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p2

    move-object/from16 v18, v1

    .line 428
    :goto_7
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 429
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    move/from16 v5, p1

    if-ne v4, v5, :cond_32

    if-nez v18, :cond_25

    .line 432
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_27

    :cond_25
    move-object/from16 v4, v18

    .line 434
    :goto_27
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v18, v4

    goto :goto_7

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_35
    if-nez v18, :cond_38

    return-object v1

    .line 447
    :cond_38
    new-instance v1, Lcom/android/server/am/BroadcastRecord;

    move-object v3, v1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v19, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v20, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v22, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v23, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v24, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v25, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v26, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v27, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundActivityStartsToken:Landroid/os/IBinder;

    move-object/from16 v28, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v29, v2

    invoke-direct/range {v3 .. v29}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZLandroid/os/IBinder;Z)V

    .line 453
    iget-wide v2, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 454
    iget-wide v2, v0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 455
    iget-wide v2, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 456
    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v0, v1, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 608
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
