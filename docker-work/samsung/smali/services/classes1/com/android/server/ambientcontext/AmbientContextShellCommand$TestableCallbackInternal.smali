.class public Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;
.super Ljava/lang/Object;
.source "AmbientContextShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ambientcontext/AmbientContextShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestableCallbackInternal"
.end annotation


# instance fields
.field public mLastResult:Landroid/service/ambientcontext/AmbientContextDetectionResult;

.field public mLastStatus:Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;


# direct methods
.method public static synthetic $r8$lambda$-QmPo7RMKhMvGGE0sGvdq799cVc(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->lambda$createRemoteDetectionResultCallback$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmFVdh6vzC_a3LiuHQUnXQEkTGg(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->lambda$createRemoteStatusCallback$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateRemoteDetectionResultCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->createRemoteDetectionResultCallback()Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->createRemoteStatusCallback()Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$createRemoteDetectionResultCallback$0(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 72
    :try_start_c
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastResult:Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 73
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detection result available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_28

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw p0
.end method

.method private synthetic lambda$createRemoteStatusCallback$1(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 86
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 88
    :try_start_c
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 89
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_28

    .line 91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw p0
.end method


# virtual methods
.method public final createRemoteDetectionResultCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 66
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public final createRemoteStatusCallback()Landroid/os/RemoteCallback;
    .registers 3

    .line 82
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public getLastResult()Landroid/service/ambientcontext/AmbientContextDetectionResult;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastResult:Landroid/service/ambientcontext/AmbientContextDetectionResult;

    return-object p0
.end method

.method public getLastStatus()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->mLastStatus:Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    return-object p0
.end method
