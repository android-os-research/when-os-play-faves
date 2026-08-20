.class public final Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;
.super Ljava/lang/Object;
.source "PackageTrackerIntentHelperImpl.java"

# interfaces
.implements Lcom/android/server/timezone/PackageTrackerIntentHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "timezone.PackageTrackerIntentHelperImpl"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mUpdaterAppPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V
    .registers 10

    .line 47
    iput-object p1, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    .line 53
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "package"

    .line 55
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {v3, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v3, p2, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 65
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 73
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;

    const/4 p1, 0x0

    invoke-direct {v1, p3, p1}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver;-><init>(Lcom/android/server/timezone/PackageTracker;Lcom/android/server/timezone/PackageTrackerIntentHelperImpl$Receiver-IA;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized scheduleReliabilityTrigger(J)V
    .registers 4

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->schedule(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 96
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mUpdaterAppPackageName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toByteArray()[B

    move-result-object v1

    .line 88
    invoke-static {v0, p0, v1}, Landroid/app/timezone/RulesUpdaterContract;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/android/server/timezone/CheckToken;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/EventLogTags;->writeTimezoneTriggerCheck(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unscheduleReliabilityTrigger()V
    .registers 2

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/timezone/TimeZoneUpdateIdler;->unschedule(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 101
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
