.class public abstract Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.super Ljava/lang/Object;
.source "VirtualDeviceManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
.end method

.method public abstract isAppOwnerOfAnyVirtualDevice(I)Z
.end method

.method public abstract isAppRunningOnAnyVirtualDevice(I)Z
.end method

.method public abstract isDisplayOwnedByAnyVirtualDevice(I)Z
.end method

.method public abstract isValidVirtualDevice(Landroid/companion/virtual/IVirtualDevice;)Z
.end method

.method public abstract onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
.end method
