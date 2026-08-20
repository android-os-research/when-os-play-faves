.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForWifiOffState"
.end annotation


# static fields
.field private static final MIN_SCAN_COUNT_FOR_TRANSITION_TO_WIFI_OFF:I = 0x1


# instance fields
.field private mIsFavoriteNetworkNearBy:Z

.field private mMinimumTransitionTimeMs:J

.field private mScanCount:I

.field private mStartAt:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1161
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private isAvailableToChangeWifiOff()Z
    .registers 5

    .line 1186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_19

    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    if-le p0, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private isDeviceInRanged()Z
    .registers 2

    .line 1191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private startScheduledScan()V
    .registers 9

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v1, 0x9

    # invokes: Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$200(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 1182
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    iget v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    const-wide/16 v5, 0x2

    div-long v6, v0, v5

    const/16 v3, 0x9

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessageDelayed(IIIJ)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    const/4 v0, 0x0

    .line 1196
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 1197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiOffMinDelayMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    .line 1198
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    .line 1201
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->isDeviceInRanged()Z

    move-result v0

    if-nez v0, :cond_52

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " device is not in ranged. start scan first"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoWifiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    goto :goto_55

    .line 1205
    :cond_52
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->startScheduledScan()V

    :goto_55
    return-void
.end method

.method public exit()V
    .registers 3

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v1, 0x9

    # invokes: Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$300(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    .line 1271
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->unregisterListener()V

    return-void
.end method

.method public getBigDataString()Ljava/lang/String;
    .registers 6

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    sub-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDebugLog()Ljava/lang/String;
    .registers 7

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Wait for Wi-Fi off, scan: "

    .line 1170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    .line 1172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mStartAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mMinimumTransitionTimeMs:J

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mIsFavoriteNetworkNearBy:Z

    if-eqz p0, :cond_47

    const-string p0, "\n   (There are favorite networks nearby)"

    .line 1175
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1212
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/16 v2, 0x69

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_8b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_63

    const/16 v1, 0xc

    if-eq v0, v1, :cond_60

    const/16 v1, 0x68

    if-eq v0, v1, :cond_4e

    if-eq v0, v2, :cond_8b

    packed-switch v0, :pswitch_data_ca

    return v4

    .line 1226
    :pswitch_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " favorite network is near by"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoWifiController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 1228
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mIsFavoriteNetworkNearBy:Z

    goto/16 :goto_c9

    .line 1251
    :pswitch_3c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_41

    move v4, v3

    :cond_41
    if-eqz v4, :cond_c9

    .line 1253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_c9

    .line 1257
    :cond_4e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_53

    goto :goto_54

    :cond_53
    move v3, v4

    :goto_54
    if-eqz v3, :cond_5f

    .line 1259
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_5f
    return v4

    .line 1223
    :cond_60
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    goto :goto_c9

    .line 1214
    :cond_63
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 1215
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c9

    .line 1218
    :cond_79
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    .line 1219
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->startScan()V

    .line 1220
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->startScheduledScan()V

    goto :goto_c9

    .line 1233
    :cond_8b
    :pswitch_8b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_9f

    .line 1234
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_95

    move p1, v3

    goto :goto_96

    :cond_95
    move p1, v4

    :goto_96
    if-eqz p1, :cond_9b

    .line 1236
    iput v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    goto :goto_c9

    :cond_9b
    const/4 p1, 0x2

    .line 1239
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mScanCount:I

    goto :goto_a7

    .line 1240
    :cond_9f
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x66

    if-ne p1, v0, :cond_a7

    .line 1241
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->mIsFavoriteNetworkNearBy:Z

    .line 1243
    :cond_a7
    :goto_a7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->isAvailableToChangeWifiOff()Z

    move-result p1

    if-eqz p1, :cond_c9

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mcheckAndDisableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 1244
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$maddWifiOnOffHistory(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V

    .line 1245
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->isDeviceInRanged()Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 1246
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_c9
    :goto_c9
    return v3

    :pswitch_data_ca
    .packed-switch 0x64
        :pswitch_3c
        :pswitch_1c
        :pswitch_8b
    .end packed-switch
.end method
