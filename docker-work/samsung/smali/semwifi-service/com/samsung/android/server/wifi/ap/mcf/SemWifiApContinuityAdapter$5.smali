.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;
.super Landroid/database/ContentObserver;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Landroid/os/Handler;)V
    .registers 3

    .line 342
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 346
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    goto :goto_1f

    .line 348
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    :goto_1f
    return-void
.end method
