.class public final Lcom/android/server/policy/DeviceStatePolicyImpl;
.super Lcom/android/server/devicestate/DeviceStatePolicy;
.source "DeviceStatePolicyImpl.java"


# instance fields
.field public final mProvider:Lcom/android/server/devicestate/DeviceStateProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-void
.end method


# virtual methods
.method public configureDeviceForState(ILjava/lang/Runnable;)V
    .registers 3

    .line 44
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-object p0
.end method
