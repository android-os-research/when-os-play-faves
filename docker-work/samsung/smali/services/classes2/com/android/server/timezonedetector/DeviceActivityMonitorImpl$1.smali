.class public Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;
.super Landroid/database/ContentObserver;
.source "DeviceActivityMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

.field public final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 54
    iput-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    iput-object p3, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 58
    :try_start_0
    iget-object p1, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->val$contentResolver:Landroid/content/ContentResolver;

    const-string v0, "airplane_mode_on"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_19

    .line 61
    iget-object p0, p0, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl$1;->this$0:Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;

    invoke-static {p0}, Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;->-$$Nest$mnotifyFlightComplete(Lcom/android/server/timezonedetector/DeviceActivityMonitorImpl;)V
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception p0

    const-string/jumbo p1, "time_zone_detector"

    const-string v0, "Unable to read airplane mode state"

    .line 64
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method
