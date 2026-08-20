.class public Lcom/android/server/VpnManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VpnManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/VpnManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/VpnManagerService;)V
    .registers 2

    .line 813
    iput-object p1, p0, Lcom/android/server/VpnManagerService$2;->this$0:Lcom/android/server/VpnManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 816
    iget-object p2, p0, Lcom/android/server/VpnManagerService$2;->this$0:Lcom/android/server/VpnManagerService;

    invoke-static {p2}, Lcom/android/server/VpnManagerService;->-$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V

    .line 819
    iget-object p2, p0, Lcom/android/server/VpnManagerService$2;->this$0:Lcom/android/server/VpnManagerService;

    invoke-virtual {p2}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 822
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
