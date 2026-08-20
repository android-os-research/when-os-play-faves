.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;
.super Landroid/database/ContentObserver;
.source "SemWifiApContinuityMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;Landroid/os/Handler;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 307
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$misAutoHotspotDBEnabled(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 308
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_35

    .line 309
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_35

    .line 312
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_35

    .line 313
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->-$$Nest$mgetHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_35
    :goto_35
    return-void
.end method
