.class public Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;
.super Landroid/os/Handler;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsEventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V
    .registers 3

    .line 418
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 419
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 423
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_7

    goto :goto_10

    .line 425
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    .line 426
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->dnsHandleEvent(Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;)V

    :goto_10
    return-void
.end method
