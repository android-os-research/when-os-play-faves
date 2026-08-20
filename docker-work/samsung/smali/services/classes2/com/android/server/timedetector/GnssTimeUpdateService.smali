.class public final Lcom/android/server/timedetector/GnssTimeUpdateService;
.super Landroid/os/Binder;
.source "GnssTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_TAG:Ljava/lang/String; = "GnssTimeUpdateService"

.field public static final D:Z

.field public static final GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

.field public static final TAG:Ljava/lang/String; = "GnssTimeUpdateService"


# instance fields
.field public mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mLastSuggestedGnssTime:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mLocationListener:Landroid/location/LocationListener;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mTimeDetector:Landroid/app/timedetector/TimeDetector;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocationManagerInternal(Lcom/android/server/timedetector/GnssTimeUpdateService;)Landroid/location/LocationManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlarmListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLocationListener(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msuggestGnssTime(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/LocationTime;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->suggestGnssTime(Landroid/location/LocationTime;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetD()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetGNSS_TIME_UPDATE_ALARM_INTERVAL()Ljava/time/Duration;
    .registers 1

    sget-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "GnssTimeUpdateService"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-wide/16 v0, 0x4

    .line 87
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "GnssTimeUpdateService"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    .line 103
    const-class v0, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TimeDetector;

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    .line 104
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 105
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 106
    const-class p1, Landroid/location/LocationManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManagerInternal;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 199
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string p3, "GnssTimeUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 200
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastSuggestedGnssTime: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/os/TimestampedValue;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "state: "

    .line 201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz p0, :cond_32

    const-string/jumbo p0, "time updates enabled"

    .line 203
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    :cond_32
    const-string p0, "alarm enabled"

    .line 205
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_37
    return-void
.end method

.method public requestGnssTimeUpdates()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-string v1, "GnssTimeUpdateService"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "requestGnssTimeUpdates()"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->hasProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string p0, "GPS provider does not exist on this device"

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_1c
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$1;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 170
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v1, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v3, 0x0

    .line 173
    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    .line 175
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 170
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void
.end method

.method public final suggestGnssTime(Landroid/location/LocationTime;)V
    .registers 8

    .line 183
    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssTimeUpdateService"

    const-string/jumbo v1, "suggestGnssTime()"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_c
    invoke-virtual {p1}, Landroid/location/LocationTime;->getTime()J

    move-result-wide v0

    .line 187
    invoke-virtual {p1}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 189
    new-instance p1, Landroid/os/TimestampedValue;

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 191
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/os/TimestampedValue;

    .line 193
    new-instance v0, Landroid/app/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, p1}, Landroid/app/timedetector/GnssTimeSuggestion;-><init>(Landroid/os/TimestampedValue;)V

    .line 194
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    invoke-interface {p0, v0}, Landroid/app/timedetector/TimeDetector;->suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V

    return-void
.end method
