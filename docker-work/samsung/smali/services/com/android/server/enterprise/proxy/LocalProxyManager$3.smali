.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$3;
.super Ljava/lang/Object;
.source "LocalProxyManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/proxy/LocalProxyManager;->lambda$updateProxyInWifiConfig$2(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic val$shouldAdd:Z


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Z)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iput-boolean p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->val$shouldAdd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to update wifi proxy - reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalProxyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string v0, "LocalProxyManager"

    const-string v1, "Wifi proxy updated successfully"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->val$shouldAdd:Z

    if-eqz v0, :cond_10

    .line 314
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$3;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    :cond_10
    return-void
.end method
