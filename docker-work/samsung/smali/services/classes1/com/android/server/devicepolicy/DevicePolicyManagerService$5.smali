.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$choosePrivateKeyAlias$39(Landroid/content/Intent;Lcom/android/server/devicepolicy/CallerIdentity;Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$response:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V
    .registers 3

    .line 6771
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$response:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 6774
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object p1

    .line 6775
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$response:Landroid/os/IBinder;

    invoke-static {p2, p1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msendPrivateKeyAliasResponse(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
