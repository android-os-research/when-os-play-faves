.class public Lcom/android/server/location/injector/SystemEmergencyHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemEmergencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 70
    :cond_d
    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter p1

    .line 73
    :try_start_10
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    .line 74
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_20} :catch_23
    .catchall {:try_start_10 .. :try_end_20} :catchall_21

    goto :goto_2c

    :catchall_21
    move-exception p0

    goto :goto_2e

    :catch_23
    move-exception p0

    :try_start_24
    const-string p2, "SystemEmergencyHelper"

    const-string/jumbo v0, "isEmergencyNumber throws IllegalStateException:"

    .line 76
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_2c
    monitor-exit p1

    return-void

    :goto_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_21

    throw p0
.end method
