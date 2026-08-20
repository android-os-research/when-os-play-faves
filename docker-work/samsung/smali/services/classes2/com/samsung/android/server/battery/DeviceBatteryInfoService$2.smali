.class public Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;
.super Landroid/database/ContentObserver;
.source "DeviceBatteryInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->registerDeviceNameContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Landroid/os/Handler;)V
    .registers 3

    .line 194
    iput-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 197
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceBatteryInfoService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object p2, p2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$2;->this$0:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const-string p2, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void
.end method
