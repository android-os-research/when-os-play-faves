.class public Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SystemEmergencyHelper.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemEmergencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyCallTelephonyCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 5

    if-nez p1, :cond_1b

    .line 107
    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter p1

    .line 108
    :try_start_5
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-boolean v1, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_16

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 110
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    .line 112
    :cond_16
    monitor-exit p1

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method
