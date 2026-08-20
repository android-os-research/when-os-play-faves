.class Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isWifiChanged"

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 208
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive IP Policy Intent - policy changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " User Switch : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->-$$Nest$mhandleSecurityPolicyMHS(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)V

    return-void
.end method
