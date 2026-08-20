.class public Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
.super Landroid/net/ip/IpClientCallbacks;
.source "IpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallbacks"
.end annotation


# instance fields
.field private final mCV:Landroid/os/ConditionVariable;

.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/net/ip/IpClientCallbacks;-><init>()V

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 2

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 68
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 2

    .line 61
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 62
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 56
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method
