.class public Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;
.super Landroid/os/Handler;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogAccessRequestHandler"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V
    .registers 3

    .line 237
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    goto :goto_4f

    .line 270
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 271
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessStatusExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    goto :goto_4f

    .line 265
    :cond_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 266
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onPendingTimeoutExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    goto :goto_4f

    .line 260
    :cond_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 261
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onLogAccessFinished(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_4f

    .line 255
    :cond_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 256
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    goto :goto_4f

    .line 250
    :cond_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 251
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    goto :goto_4f

    .line 245
    :cond_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 246
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onLogAccessRequested(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    :goto_4f
    return-void
.end method
