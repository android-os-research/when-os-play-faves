.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "LocalProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager$1;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .registers 5

    const-string v0, "LocalProxyManager"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2f

    .line 180
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    iget-object v1, v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetDBG(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy bound at port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x1

    .line 181
    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfputsIsLocalProxyServerRunning(Z)V

    .line 182
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$msetLocalProxyPort(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    goto :goto_34

    :cond_2f
    const-string p0, "Received invalid port from Local Proxy, proxy will not be operational"

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method
