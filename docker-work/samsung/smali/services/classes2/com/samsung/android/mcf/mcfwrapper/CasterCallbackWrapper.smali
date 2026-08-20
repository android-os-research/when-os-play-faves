.class public Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;
.super Lcom/samsung/android/mcf/ICasterCallback$Stub;
.source "SourceFile"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/CasterCallback;

.field public mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/CasterCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V
    .registers 4
    .param p2    # Ljava/util/function/BiPredicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/BiConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/mcf/CasterCallback;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/mcf/ICasterCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    iput-object p2, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    iput-object p3, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public getCasterCallback()Lcom/samsung/android/mcf/CasterCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    return-object p0
.end method

.method public getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-object p0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/CasterCallback;)Z
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onAdvertiseStarted(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAdvertiseStopped(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz p0, :cond_10

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionFailed(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz p0, :cond_10

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onConnectionStateChanged(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onHandoverRequest(ILandroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz p0, :cond_10

    invoke-static {p2}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverRequest(Lcom/samsung/android/mcf/McfDevice;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    if-eqz p0, :cond_10

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/handover/McfHandoverCallback;->onHandoverResult(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCheckStateClearAllUWBRangingCallback:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mOnMcfServiceStateChanged:Ljava/util/function/BiPredicate;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object p0, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/CasterCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/CasterCallback;->onMcfServiceStateChanged(II)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public onPilotScanResult(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->mMcfHandoverCallback:Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    return-void
.end method
