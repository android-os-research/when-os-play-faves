.class Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTelephonyCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 2

    .line 19314
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 19318
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 19319
    .local v0, "elapsedRealtimeMs":J
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 19320
    .local v2, "rilDataRadioTechnology":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 19321
    .local v3, "dataNetworkType":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v4

    .line 19329
    .local v4, "nrState":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/16 v8, 0xe

    if-ne v2, v8, :cond_52

    .line 19330
    if-eq v3, v7, :cond_3c

    const/16 v7, 0xd

    if-ne v3, v7, :cond_26

    const/4 v7, 0x3

    if-ne v4, v7, :cond_26

    goto :goto_3c

    .line 19341
    :cond_26
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 19345
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 19347
    :cond_37
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_7f

    .line 19333
    :cond_3c
    :goto_3c
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 19337
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 19339
    :cond_4d
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v5, v6, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_7f

    .line 19349
    :cond_52
    if-ne v2, v7, :cond_6a

    .line 19350
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v6

    if-nez v6, :cond_65

    .line 19354
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 19356
    :cond_65
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v5, v6, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    goto :goto_7f

    .line 19358
    :cond_6a
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 19362
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mMobileActive5GTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 19364
    :cond_7b
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$CustomTelephonyCallback;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-boolean v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mIsServiceStateNr:Z

    .line 19366
    :goto_7f
    return-void
.end method
