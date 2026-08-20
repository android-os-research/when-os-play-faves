.class public Lcom/android/server/location/contexthub/ContextHubService$2;
.super Landroid/content/BroadcastReceiver;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    .line 293
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 295
    :cond_18
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$2;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$msendWifiSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V

    :cond_1e
    return-void
.end method
