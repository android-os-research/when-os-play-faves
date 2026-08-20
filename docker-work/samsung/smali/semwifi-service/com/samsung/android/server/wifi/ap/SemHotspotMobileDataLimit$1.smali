.class Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;
.super Landroid/content/BroadcastReceiver;
.source "SemHotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mhandleEvent(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
