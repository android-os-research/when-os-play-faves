.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    .line 3151
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 3154
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-static {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mremoveAdminArtifacts(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    .line 3155
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-static {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mremovePackageIfRequired(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 3158
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has been removed as admin."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-static {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmakeAuditLogGroupSystem(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 3160
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p1

    const-string p2, "DevicePolicyManager"

    if-eqz p1, :cond_4a

    .line 3163
    :try_start_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V

    goto :goto_69

    :catch_48
    move-exception p0

    goto :goto_51

    :cond_4a
    const-string/jumbo p0, "removeActiveAdminLocked() : passed EDMS.removeActiveAdminFromDpm() because edms is null"

    .line 3165
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_50} :catch_48

    goto :goto_69

    .line 3168
    :goto_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to remove active admin from edm database "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3170
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3168
    invoke-static {p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    return-void
.end method
