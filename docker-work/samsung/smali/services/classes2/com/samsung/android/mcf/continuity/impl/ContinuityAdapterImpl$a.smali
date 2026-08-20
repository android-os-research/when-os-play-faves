.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createServiceConnection(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;


# direct methods
.method public static synthetic $r8$lambda$FXs_K8AKrO-u_5TtrJtjnAH81_4(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_a_NEw96xhhV63_vfJwBeBBcQbw(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->a(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)I

    move-result v0

    const-string/jumbo v1, "onServiceConnected"

    const-string v2, "ContinuityAdapterImpl"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1a

    const-string/jumbo p2, "rebound case -> unbindService"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    return-void

    :cond_1a
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    move-result-object p2

    if-nez p2, :cond_36

    const-string p2, "null iContinuitySdkCommand"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_36
    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/a;->b()Lcom/samsung/android/mcf/continuity/impl/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/impl/a;->a()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;
    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->a(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-virtual {v3, p1, p3, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createIContinuitySyncCloudCallback(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;

    move-result-object v4

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->trySyncCloud(Landroid/content/Context;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z
    invoke-static {v3, p1, v0, p2, v4}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;)Z

    move-result p2

    if-nez p2, :cond_6c

    const-string p2, "fail to try sync cloud"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_6c
    const-string p0, "main controller is not started -> try sync cloud"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_72
    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;
    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->b(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string p2, "fail to registerCallback"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_94
    const-string p1, "SERVICE_STATE_CONNECTED"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    const/4 p1, 0x3

    # setter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda1;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .registers 5

    const-string v0, "ContinuityAdapterImpl"

    const-string/jumbo v1, "onServiceDisconnected"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I
    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->c:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->destroy()V
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
