.class public Lcom/android/server/display/DisplayManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 788
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$3;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    const-string/jumbo p1, "networkInfo"

    .line 792
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    .line 793
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    const/4 v1, 0x0

    .line 795
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v3, "DisplayManagerService"

    if-ne v0, v2, :cond_29

    const-string/jumbo v0, "network connected"

    .line 796
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.action.NETWORK_CONNECTED_STATE"

    goto :goto_35

    .line 799
    :cond_29
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_35

    const-string/jumbo v0, "network disconnected"

    .line 800
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.action.NETWORK_DISCONNECTED_STATE"

    :cond_35
    :goto_35
    if-nez v1, :cond_38

    return-void

    .line 806
    :cond_38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.CcInfo"

    const-string v3, "com.sec.android.CcInfo.WifiConnectionReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 808
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 809
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$3;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_57
    return-void
.end method
