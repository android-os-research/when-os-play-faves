.class public Lcom/android/net/module/util/BaseNetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "BaseNetdUnsolicitedEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "3943383e838f39851675e3640fcdf27b42f8c9fc"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .registers 6

    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
