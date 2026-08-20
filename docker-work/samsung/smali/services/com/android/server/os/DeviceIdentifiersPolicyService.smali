.class public final Lcom/android/server/os/DeviceIdentifiersPolicyService;
.super Lcom/android/server/SystemService;
.source "DeviceIdentifiersPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;-><init>(Landroid/content/Context;)V

    const-string v1, "device_identifiers"

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
