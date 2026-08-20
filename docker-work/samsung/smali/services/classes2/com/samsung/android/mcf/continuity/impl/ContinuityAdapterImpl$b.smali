.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;
.super Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createIContinuitySyncCloudCallback(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

.field public final synthetic c:I

.field public final synthetic d:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

.field public final synthetic e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;


# direct methods
.method public static synthetic $r8$lambda$AE9wMBhByhuktnQ08hjECAHbZTU(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->a(Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .registers 6

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iput p4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->c:I

    iput-object p5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->d:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySyncCloudCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V
    .registers 10

    const-string/jumbo v0, "onCallback"

    const-string v1, "ContinuityAdapterImpl"

    if-nez p1, :cond_d

    const-string p0, "IContinuitySyncCloudCallback : null message"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getCallbackId(Landroid/os/Message;)I

    move-result v2

    const/16 v3, 0x1388

    if-eq v2, v3, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "IContinuitySyncCloudCallback : invalid callback "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    move-result p1

    if-eqz p1, :cond_46

    const-string p1, "fail to syncCloud"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V
    invoke-static {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_46
    const-string p1, "IContinuitySyncCloudCallback : syncCloud ok"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/samsung/android/mcf/continuity/impl/d;->b(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z

    move-result p1

    if-nez p1, :cond_6d

    const-string p1, "fail to registerCallback"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # invokes: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->unbindServiceImpl(Landroid/content/Context;)V
    invoke-static {p0, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_6d
    const-string p1, "SERVICE_STATE_CONNECTED"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    # getter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mContinuityCommandManager:Lcom/samsung/android/mcf/continuity/impl/d;
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/d;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->e:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    const/4 p1, 0x3

    # setter for: Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->mServiceState:I
    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda1;

    invoke-direct {p0, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$a$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .registers 10

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    iget v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->c:I

    iget-object v6, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;->d:Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    new-instance v7, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$b;Landroid/os/Message;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)V

    invoke-static {v7}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
