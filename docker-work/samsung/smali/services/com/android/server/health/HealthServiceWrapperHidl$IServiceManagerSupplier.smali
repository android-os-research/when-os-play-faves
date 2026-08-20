.class public interface abstract Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;
.super Ljava/lang/Object;
.source "HealthServiceWrapperHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IServiceManagerSupplier"
.end annotation


# virtual methods
.method public get()Landroid/hidl/manager/V1_0/IServiceManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    return-object p0
.end method
