.class public Lcom/android/server/location/nsflp/NSLocationMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/nsflp/NSLocationMonitor;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$1;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 190
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcast receiver, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSLocationMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.intent.action.BIG_DATA_INFO"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const/4 p1, 0x0

    const-string v0, "feature"

    .line 193
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4a

    .line 194
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bigdata_info"

    .line 195
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "bigdataInfo"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$1;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->-$$Nest$fgetmNSConnectionHelper(Lcom/android/server/location/nsflp/NSLocationMonitor;)Lcom/android/server/location/nsflp/NSConnectionHelper;

    move-result-object p0

    sget-object p2, Landroid/location/LocationConstants$STATE_TYPE;->CP_CRASH:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    :cond_4a
    return-void
.end method
