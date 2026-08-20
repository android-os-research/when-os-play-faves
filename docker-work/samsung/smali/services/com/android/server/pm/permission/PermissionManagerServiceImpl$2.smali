.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "PermissionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$asyncUpdatedUsers:Landroid/util/IntArray;

.field public final synthetic val$permissionRemoved:[Z

.field public final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field public final synthetic val$syncUpdatedUsers:Landroid/util/IntArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V
    .registers 6

    .line 1736
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$permissionRemoved:[Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback-IA;)V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 3

    .line 1738
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onGidsChanged(II)V

    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 1

    .line 1750
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionGranted()V

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 1

    .line 1760
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionRevoked()V

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 1

    .line 1782
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdated()V

    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .registers 2

    .line 1792
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    return-void
.end method

.method public onPermissionChanged()V
    .registers 1

    .line 1742
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionChanged()V

    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 3

    .line 1746
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmDefaultPermissionCallback(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;->onPermissionGranted(II)V

    return-void
.end method

.method public onPermissionRemoved()V
    .registers 3

    .line 1778
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$permissionRemoved:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .registers 6

    .line 1754
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {p0, p2}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 8

    .line 1764
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_24

    aget v2, p1, v1

    if-eqz p2, :cond_13

    .line 1766
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 1767
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    goto :goto_21

    .line 1770
    :cond_13
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_21

    .line 1771
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .registers 4

    .line 1787
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->onPermissionUpdated([IZ)V

    .line 1788
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmOnPermissionChangeListeners(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    return-void
.end method
