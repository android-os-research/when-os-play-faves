.class Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;
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

    .line 111
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    move v2, v1

    :cond_15
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V

    .line 114
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DataNetworkEnable : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemHotspotMobileDataLimit"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmApData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->onStateChanged()V

    return-void
.end method
