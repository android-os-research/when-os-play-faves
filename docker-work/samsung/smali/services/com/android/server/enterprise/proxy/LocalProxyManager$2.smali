.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$2;
.super Ljava/lang/Object;
.source "LocalProxyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V
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

    .line 207
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 214
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fputmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;Lcom/android/net/IProxyCallback;)V

    .line 215
    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetmCallbackService(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 216
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$2;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$mexecutePendingOperations(Lcom/android/server/enterprise/proxy/LocalProxyManager;)V

    :cond_16
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
