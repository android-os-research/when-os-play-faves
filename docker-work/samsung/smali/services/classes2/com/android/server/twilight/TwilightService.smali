.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field public static final ATTRIBUTION_TAG:Ljava/lang/String; = "TwilightService"

.field public static final DEBUG:Z = false

.field public static final MSG_START_LISTENING:I = 0x1

.field public static final MSG_STOP_LISTENING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBootCompleted:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasListeners:Z

.field public mLastLocation:Landroid/location/Location;

.field public mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation
.end field

.field public final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public mLocationManager:Landroid/location/LocationManager;

.field public mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$d_eJhFu0Phzyq32TP9ZWD5dYNhs(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/twilight/TwilightService;->lambda$updateTwilightState$0(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTwilightState(Lcom/android/server/twilight/TwilightService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "TwilightService"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 294
    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 295
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 297
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    .line 298
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/16 v2, 0xc

    .line 299
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 301
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 302
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 303
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    const/4 v2, 0x1

    .line 305
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    .line 306
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    cmp-long v7, v5, p1

    const/4 v8, 0x5

    if-gez v7, :cond_51

    .line 309
    invoke-virtual {p0, v8, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 310
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 311
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    goto :goto_64

    :cond_51
    cmp-long p1, v3, p1

    if-lez p1, :cond_64

    const/4 p1, -0x1

    .line 313
    invoke-virtual {p0, v8, p1}, Landroid/icu/util/Calendar;->add(II)V

    .line 314
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    .line 318
    :cond_64
    :goto_64
    new-instance p0, Lcom/android/server/twilight/TwilightState;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object p0
.end method

.method public static synthetic lambda$updateTwilightState$0(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V
    .registers 2

    .line 232
    invoke-interface {p0, p1}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method


# virtual methods
.method public createLocationRequest()Landroid/location/LocationRequest;
    .registers 3

    .line 247
    new-instance p0, Landroid/location/LocationRequest$Builder;

    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const/16 v0, 0x68

    .line 248
    invoke-virtual {p0, v0}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 137
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    return v2

    .line 147
    :cond_a
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_17

    .line 148
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 149
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_17

    .line 150
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    :cond_17
    return v0

    .line 139
    :cond_18
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez p1, :cond_25

    .line 140
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 141
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_25

    .line 142
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_25
    return v0
.end method

.method public onAlarm()V
    .registers 3

    const-string v0, "TwilightService"

    const-string v1, "onAlarm"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 124
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alarm"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v0, "location"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 129
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_26

    .line 130
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_26
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    if-eqz p1, :cond_3a

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwilightService"

    .line 261
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 266
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    :cond_3a
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 86
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public final startListening()V
    .registers 6

    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->createLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v3, Landroid/os/HandlerExecutor;

    invoke-direct {v3, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const-string v1, "fused"

    invoke-virtual {v2, v1, v0, v3, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_63

    .line 168
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 169
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 170
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 169
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_63

    .line 172
    :cond_47
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 173
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 173
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 180
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_83

    .line 181
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public final stopListening()V
    .registers 4

    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 202
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    :cond_18
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_21

    .line 207
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 210
    :cond_21
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 211
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    return-void
.end method

.method public final updateTwilightState()V
    .registers 10

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_9

    goto :goto_f

    .line 218
    :cond_9
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    .line 219
    :goto_f
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 226
    :try_start_16
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 227
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 229
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_28
    if-ltz v2, :cond_45

    .line 230
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightListener;

    .line 231
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 232
    new-instance v5, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 235
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_64

    if-eqz v0, :cond_63

    .line 239
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 240
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v0

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v0

    :goto_57
    move-wide v4, v0

    .line 241
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "TwilightService"

    iget-object v8, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_63
    return-void

    :catchall_64
    move-exception p0

    .line 235
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0
.end method
