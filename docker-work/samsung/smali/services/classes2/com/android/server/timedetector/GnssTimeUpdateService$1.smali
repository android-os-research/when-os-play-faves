.class public Lcom/android/server/timedetector/GnssTimeUpdateService$1;
.super Ljava/lang/Object;
.source "GnssTimeUpdateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/GnssTimeUpdateService;->requestGnssTimeUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 13

    .line 129
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetD()Z

    move-result p1

    const-string v0, "GnssTimeUpdateService"

    if-eqz p1, :cond_e

    const-string/jumbo p1, "onLocationChanged()"

    .line 130
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_e
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationManagerInternal(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManagerInternal;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 137
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v0, p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$msuggestGnssTime(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationTime;)V

    goto :goto_2b

    .line 139
    :cond_20
    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetD()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "getGnssTimeMillis() returned null"

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 145
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fputmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationListener;)V

    .line 147
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$1$1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fputmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$sfgetGNSS_TIME_UPDATE_ALARM_INTERVAL()Ljava/time/Duration;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    add-long v6, v0, v2

    .line 161
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmAlarmManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x2

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    invoke-static {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->-$$Nest$fgetmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v9

    .line 166
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string v8, "GnssTimeUpdateService"

    .line 161
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method
