.class public Lcom/samsung/android/mcf/continuity/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "ContinuityCommandManager"


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public volatile b:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/d;->a:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)Landroid/os/Bundle;
    .registers 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/d;->b:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    const/4 v0, 0x0

    const-string v1, "getInternalBundle"

    const-string v2, "ContinuityCommandManager"

    if-nez p0, :cond_f

    const-string p0, "null iContinuitySdkCommand"

    :goto_b
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_f
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v3

    :try_start_13
    invoke-interface {p0, p1, v3}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    return-object v3

    :catch_17
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public a()V
    .registers 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/d;->b:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    return-void
.end method

.method public a(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/d;->b:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    return-void
.end method

.method public a(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z
    .registers 6
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string p0, "isMainControllerStarted"

    const-string v0, "ContinuityCommandManager"

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createIsMainControllerStartedCommand(I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->createBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommandWithReturnValue(Landroid/os/Message;Landroid/os/Bundle;)I

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_11} :catch_15

    if-nez p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    :catch_15
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_2f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_24
.end method

.method public a(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z
    .registers 4
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    invoke-static {p1, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createSyncCloudCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    if-nez p1, :cond_c

    const/4 p0, 0x1

    :cond_c
    return p0

    :catch_d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuityCommandManager"

    const-string/jumbo p3, "syncCloud"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public a(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z
    .registers 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createResponseConnectCommand(IILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCheckApStatusCommand(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public a(Ljava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRequestConnectCommand(ILjava/lang/String;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterMessageIntentListenerCommand(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public a(Ljava/lang/String;[B)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createSendMessageCommand(ILjava/lang/String;[B)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;[BB)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createSendMessageCommand(ILjava/lang/String;[BB)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public a([B)Z
    .registers 4
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUpdateAdvertisementCommand(I[B)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createGetMessageIntentActionCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getMessageIntentAction(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z
    .registers 4
    .param p2    # Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/d;->a:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterCallbackCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_f

    if-nez p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContinuityCommandManager"

    const-string/jumbo p2, "registerCallback"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final b(Landroid/os/Message;)Z
    .registers 6
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/d;->b:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    const-string v0, "internalCommand"

    const-string v1, "ContinuityCommandManager"

    const/4 v2, 0x0

    if-nez p0, :cond_f

    const-string p0, "null iContinuitySdkCommand"

    :goto_b
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    :try_start_f
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;->internalCommand(Landroid/os/Message;)I

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_17

    if-nez p0, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    :catch_17
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createDisconnectCommand(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createGetContinuityNearbyDeviceCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getContinuityNearbyDevice(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createGetThisDeviceBtMacCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Landroid/os/Message;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->getBtMac(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createCloseSessionCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public f()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createOpenSessionCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public g()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterSessionListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public h()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createRegisterSimpleMessageListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStartAdvertisementCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public j()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStartDiscoveryCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public k()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStopAdvertisementCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public l()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createStopDiscoveryCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public m()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/d;->a:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterCallbackCommand(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public n()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterMessageIntentListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public o()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/profile/ContinuityServiceId;->isSessionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterSessionListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public p()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCommand;->createUnregisterSimpleMessageListenerCommand(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
