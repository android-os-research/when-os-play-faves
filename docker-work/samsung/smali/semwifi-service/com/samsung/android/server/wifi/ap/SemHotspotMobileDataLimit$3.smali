.class Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Landroid/os/Handler;)V
    .registers 3

    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 106
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_mobile_data_limit_value"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APMobileDataLimitValue onChange, new limit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemHotspotMobileDataLimit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$msetLimitValue(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V

    return-void
.end method
