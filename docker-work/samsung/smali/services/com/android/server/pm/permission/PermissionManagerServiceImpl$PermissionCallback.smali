.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 3

    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 1

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 1

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 1

    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 2

    .line 5979
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    return-void
.end method

.method public onPermissionChanged()V
    .registers 1

    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 3

    return-void
.end method

.method public onPermissionRemoved()V
    .registers 1

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 5962
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;Z)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;Z)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 5966
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;ZLjava/lang/String;)V
    .registers 6

    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 3

    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 4

    .line 5974
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionUpdated([IZ)V

    return-void
.end method
