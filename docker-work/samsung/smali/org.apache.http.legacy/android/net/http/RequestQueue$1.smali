.class Landroid/net/http/RequestQueue$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/RequestQueue;->enablePlatformNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/http/RequestQueue;

    .line 225
    iput-object p1, p0, Landroid/net/http/RequestQueue$1;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Landroid/net/http/RequestQueue$1;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v0}, Landroid/net/http/RequestQueue;->-$$Nest$msetProxyConfig(Landroid/net/http/RequestQueue;)V

    .line 229
    return-void
.end method
