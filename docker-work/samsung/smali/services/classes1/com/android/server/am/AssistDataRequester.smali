.class public Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    }
.end annotation


# static fields
.field public static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"


# instance fields
.field public mActivityTaskManager:Landroid/app/IActivityTaskManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final mAssistScreenshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field public mCallbacksLock:Ljava/lang/Object;

.field public mCanceled:Z

.field public mContext:Landroid/content/Context;

.field public mPendingDataCount:I

.field public mPendingScreenshotCount:I

.field public mRequestScreenshotAppOps:I

.field public mRequestStructureAppOps:I

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V
    .registers 9

    .line 132
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 133
    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 134
    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 136
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 137
    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 139
    iput p6, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 140
    iput p7, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    const/4 v0, 0x0

    .line 353
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 354
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 355
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_a

    const-string/jumbo v0, "receiverExtras"

    .line 403
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string/jumbo v1, "index"

    .line 405
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "count"

    .line 406
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 408
    :goto_1d
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(Landroid/os/Bundle;II)V

    return-void
.end method

.method public final dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 412
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 423
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDataCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 424
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingScreenshotCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 426
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mAssistScreenshot="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final flushPendingAssistData()V
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 328
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 330
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_23
    if-ge v1, v0, :cond_33

    .line 333
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 335
    :cond_33
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getPendingDataCount()I
    .registers 1

    .line 339
    iget p0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    return p0
.end method

.method public getPendingScreenshotCount()I
    .registers 1

    .line 343
    iget p0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    return p0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_9

    .line 363
    monitor-exit v0

    return-void

    .line 365
    :cond_9
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 367
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 369
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_26

    .line 374
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :goto_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 381
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_9

    .line 383
    monitor-exit v0

    return-void

    .line 385
    :cond_9
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 387
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 389
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_26

    .line 394
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public processPendingAssistData()V
    .registers 1

    .line 321
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 169
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;)V

    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 185
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZZILjava/lang/String;)V

    return-void
.end method

.method public requestAutofillData(Ljava/util/List;ILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v9, p2

    move-object v10, p3

    .line 152
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZZILjava/lang/String;)V

    return-void
.end method

.method public final requestData(Ljava/util/List;ZZZZZZZILjava/lang/String;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 220
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void

    :cond_10
    const/4 v10, 0x0

    .line 229
    :try_start_11
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move v0, v10

    :goto_19
    and-int v1, p6, v0

    const/4 v11, 0x1

    if-eqz p3, :cond_27

    if-eqz v0, :cond_27

    .line 234
    iget v0, v7, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    move v0, v11

    goto :goto_28

    :cond_27
    move v0, v10

    :goto_28
    and-int v12, p7, v0

    .line 237
    iput-boolean v10, v7, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 238
    iput v10, v7, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 239
    iput v10, v7, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 240
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    if-eqz p3, :cond_c8

    .line 244
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v7, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    invoke-virtual {v0, v2, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b6

    if-eqz v1, :cond_b6

    .line 246
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    move v15, v10

    :goto_4e
    if-ge v15, v14, :cond_c8

    move-object/from16 v6, p1

    .line 248
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    .line 250
    :try_start_59
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_context"

    invoke-static {v0, v1, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 251
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "index"

    .line 252
    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "count"

    .line 253
    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_79

    .line 256
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, v7, v3, v4, v10}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v0

    goto :goto_97

    :cond_79
    if-eqz p5, :cond_7d

    move v1, v11

    goto :goto_7f

    :cond_7d
    const/4 v0, 0x3

    move v1, v0

    .line 261
    :goto_7f
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    if-nez v15, :cond_87

    if-nez p8, :cond_87

    move v5, v11

    goto :goto_88

    :cond_87
    move v5, v10

    :goto_88
    if-nez v15, :cond_8d

    move/from16 v16, v11

    goto :goto_8f

    :cond_8d
    move/from16 v16, v10

    :goto_8f
    move-object/from16 v2, p0

    move/from16 v6, v16

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityTaskManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    :goto_97
    if-eqz v0, :cond_9f

    .line 267
    iget v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/2addr v0, v11

    iput v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    goto :goto_b3

    :cond_9f
    if-nez v15, :cond_b3

    .line 270
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 271
    invoke-virtual {v7, v13}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_c9

    .line 273
    :cond_ad
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_b2} :catch_b3

    goto :goto_c9

    :catch_b3
    :cond_b3
    :goto_b3
    add-int/lit8 v15, v15, 0x1

    goto :goto_4e

    .line 284
    :cond_b6
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 285
    invoke-virtual {v7, v13}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_c9

    .line 287
    :cond_c2
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    :cond_c8
    move v10, v12

    :goto_c9
    if-eqz p4, :cond_fa

    .line 294
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v7, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    invoke-virtual {v0, v1, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e9

    if-eqz v10, :cond_e9

    .line 297
    :try_start_d7
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_screen"

    invoke-static {v0, v1, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 298
    iget v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/2addr v0, v11

    iput v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 299
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v7}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_e8} :catch_fa

    goto :goto_fa

    .line 304
    :cond_e9
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 305
    invoke-virtual {v7, v13}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    goto :goto_fa

    .line 307
    :cond_f5
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :catch_fa
    :cond_fa
    :goto_fa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void
.end method

.method public final tryDispatchRequestComplete()V
    .registers 2

    .line 416
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 417
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 418
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {p0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    :cond_1d
    return-void
.end method
