.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$1;
.super Ljava/lang/Object;
.source "LocalProxyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindToLocalProxyServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 173
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fputmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/android/net/IProxyCallback;)V

    .line 174
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 176
    :try_start_11
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    new-instance p2, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;

    invoke-direct {p2, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager$1;)V

    invoke-interface {p1, p2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception p0

    const-string p1, "LocalProxyManager"

    const-string p2, "Failed to get proxy callback instance"

    .line 190
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
