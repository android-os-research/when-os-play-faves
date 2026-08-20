.class public Lcom/android/server/vr/XrStateCallbacksController;
.super Ljava/lang/Object;
.source "XrStateCallbacksController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;,
        Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;,
        Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "XrStateCallbacksController"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

.field public final mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

.field public final mXrManagerService:Lcom/android/server/vr/XrManagerService;

.field public mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRemoteCallbacks(Lcom/android/server/vr/XrStateCallbacksController;)Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastTaskDisplayChangedCallbacks(Lcom/android/server/vr/XrStateCallbacksController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->broadcastTaskDisplayChangedCallbacks(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastTaskFocusChangedCallbacks(Lcom/android/server/vr/XrStateCallbacksController;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/XrStateCallbacksController;->broadcastTaskFocusChangedCallbacks(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastTaskMovedToFrontCallbacks(Lcom/android/server/vr/XrStateCallbacksController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->broadcastTaskMovedToFrontCallbacks(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbroadcastTaskRemovedCallbacks(Lcom/android/server/vr/XrStateCallbacksController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->broadcastTaskRemovedCallbacks(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterSystemCallback(Lcom/android/server/vr/XrStateCallbacksController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->unregisterSystemCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterTaskStackSystemCallback(Lcom/android/server/vr/XrStateCallbacksController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->unregisterTaskStackSystemCallback()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;-><init>(Lcom/android/server/vr/XrStateCallbacksController;)V

    iput-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    .line 34
    new-instance v0, Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;-><init>(Lcom/android/server/vr/XrStateCallbacksController;)V

    iput-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    .line 133
    iput-object p1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public final broadcastActivityResumeChangedCallbacks(ILandroid/os/Bundle;)V
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 338
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IXrStateCallbacks;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IXrStateCallbacks;->onActivityResumeChanged(ILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 343
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broadcastFocusedDisplayChangedCallbacks(I)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 253
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IXrStateCallbacks;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IXrStateCallbacks;->onFocusedDisplayChanged(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 258
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastTaskCreatedCallbacks(ILandroid/content/ComponentName;)V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 267
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 272
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broadcastTaskDisplayChangedCallbacks(II)V
    .registers 5

    .line 320
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 324
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 329
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broadcastTaskFocusChangedCallbacks(IZ)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 310
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 315
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broadcastTaskMovedToFrontCallbacks(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 296
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {v1, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 301
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broadcastTaskRemovedCallbacks(I)V
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 282
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/ITaskStackListener;

    invoke-interface {v1, p1}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 287
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final broadcastXrStartActivityInterceptorCallbacks(IILandroid/os/Bundle;)V
    .registers 6

    .line 235
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 239
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IXrStateCallbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IXrStateCallbacks;->onActivityIntercepted(IILandroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 244
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "XrStateCallbacksController:"

    .line 347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    .line 350
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mXrTaskStackListener="

    .line 351
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "IXrStateCallbacks Remote Callbacks:"

    .line 355
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_22
    add-int/lit8 v2, v1, -0x1

    const-string v3, ","

    if-lez v1, :cond_3b

    .line 358
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v2, :cond_39

    .line 360
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_39
    move v1, v2

    goto :goto_22

    .line 362
    :cond_3b
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 363
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 364
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v1, p1, v0}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "ITaskStackListenerCallbacks Remote Callbacks:"

    .line 367
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_56
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_6d

    .line 370
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v2, :cond_6b

    .line 372
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6b
    move v1, v2

    goto :goto_56

    .line 374
    :cond_6d
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 375
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 376
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getTaskStackListenerCount()I
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    return p0
.end method

.method public getXrStateListenerCount()I
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    return p0
.end method

.method public notifyActivityResumeChanged(ILcom/android/server/vr/XrActivityInfo;)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_26

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "displayId"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget p1, p2, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    const-string/jumbo v1, "xrFlags"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object p1, p2, Lcom/android/server/vr/XrActivityInfo;->callingPackage:Landroid/content/ComponentName;

    const-string v1, "callingPackage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget p1, p2, Lcom/android/server/vr/XrActivityInfo;->taskId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vr/XrStateCallbacksController;->broadcastActivityResumeChangedCallbacks(ILandroid/os/Bundle;)V

    :cond_26
    return-void
.end method

.method public final registerSystemCallback()V
    .registers 2

    const-string p0, "XrStateCallbacksController"

    const-string/jumbo v0, "registerSystemCallback"

    .line 138
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerTaskStackListener cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrStateCallbacksController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->getTaskStackListenerCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 213
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->registerTaskStackSystemCallback()V

    .line 215
    :cond_20
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerTaskStackSystemCallback()V
    .registers 5

    const-string v0, "XrStateCallbacksController"

    .line 157
    iget-object v1, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    if-nez v1, :cond_56

    .line 159
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_23

    .line 161
    :try_start_a
    new-instance v3, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    invoke-direct {v3, p0}, Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;-><init>(Lcom/android/server/vr/XrStateCallbacksController;)V

    iput-object v3, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    .line 162
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    invoke-interface {v3, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1e

    .line 164
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    throw p0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_23} :catch_23

    :catch_23
    move-exception p0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerXrStateListener: SecurityException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_3d
    move-exception p0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerXrStateListener: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    return-void
.end method

.method public registerXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerXrStateListener cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrStateCallbacksController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->getXrStateListenerCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 195
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->registerSystemCallback()V

    .line 197
    :cond_20
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final unregisterSystemCallback()V
    .registers 2

    const-string p0, "XrStateCallbacksController"

    const-string/jumbo v0, "unregisterSystemCallback"

    .line 148
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterTaskStackListener cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrStateCallbacksController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mTaskStackListenerCallbacks:Lcom/android/server/vr/XrStateCallbacksController$TaskStackListenerCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 221
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->getTaskStackListenerCount()I

    move-result p1

    if-nez p1, :cond_25

    .line 222
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->unregisterTaskStackSystemCallback()V

    :cond_25
    return-void
.end method

.method public final unregisterTaskStackSystemCallback()V
    .registers 6

    const-string v0, "XrStateCallbacksController"

    .line 176
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_1f

    .line 178
    :try_start_6
    iget-object v3, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    if-eqz v3, :cond_16

    .line 179
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 v3, 0x0

    .line 180
    iput-object v3, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrTaskStackListener:Lcom/android/server/vr/XrStateCallbacksController$XrTaskStackListener;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    .line 183
    :cond_16
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unregisterTaskStackSystemCallback: SecurityException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catch_39
    move-exception p0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " unregisterTaskStackSystemCallback: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void
.end method

.method public unregisterXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 4

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterXrStateListener cb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrStateCallbacksController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mRemoteCallbacks:Lcom/android/server/vr/XrStateCallbacksController$XrStateCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 204
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->getXrStateListenerCount()I

    move-result p1

    if-nez p1, :cond_2b

    .line 205
    invoke-virtual {p0}, Lcom/android/server/vr/XrStateCallbacksController;->unregisterSystemCallback()V

    .line 206
    iget-object p0, p0, Lcom/android/server/vr/XrStateCallbacksController;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setArDeveloperMode(Z)V

    :cond_2b
    return-void
.end method
