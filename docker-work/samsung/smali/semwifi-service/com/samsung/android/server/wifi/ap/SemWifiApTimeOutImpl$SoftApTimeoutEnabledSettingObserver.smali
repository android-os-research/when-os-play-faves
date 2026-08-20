.class Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "SemWifiApTimeOutImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApTimeoutEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Handler;)V
    .registers 3

    .line 183
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 184
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private getValue()I
    .registers 3

    .line 208
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v0, v0, 0x3c

    const-string v1, "wifi_ap_timeout_setting"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 199
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 200
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->getValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiApTimeOutImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    return-void
.end method

.method public register()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_timeout_setting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->getValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
