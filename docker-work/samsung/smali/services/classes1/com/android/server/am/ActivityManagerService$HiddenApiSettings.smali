.class public Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenApiSettings"
.end annotation


# static fields
.field public static final HIDDEN_API_ACCESS_LOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_log_sampling_rate"

.field public static final HIDDEN_API_ACCESS_STATSLOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_statslog_sampling_rate"


# instance fields
.field public mBlacklistDisabled:Z

.field public final mContext:Landroid/content/Context;

.field public mExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExemptionsStr:Ljava/lang/String;

.field public mLogSampleRate:I

.field public mPolicy:I

.field public mStatslogSampleRate:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    .line 2571
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    const/4 p1, -0x1

    .line 2527
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 2528
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 2529
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 2572
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPolicy()I
    .registers 1

    .line 2627
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    return p0
.end method

.method public final getValidEnforcementPolicy(Ljava/lang/String;)I
    .registers 3

    .line 2613
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 2615
    invoke-static {p0}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result p1

    if-eqz p1, :cond_12

    return p0

    :cond_12
    return v0
.end method

.method public isDisabled()Z
    .registers 1

    .line 2623
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    return p0
.end method

.method public onChange(Z)V
    .registers 2

    .line 2631
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    const-string/jumbo v0, "hidden_api_access_log_sampling_rate"

    const/4 v1, 0x0

    .line 2550
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-ltz v0, :cond_f

    if-le v0, v2, :cond_10

    :cond_f
    move v0, v3

    :cond_10
    if-eq v0, v3, :cond_1d

    .line 2554
    iget v4, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    if-eq v0, v4, :cond_1d

    .line 2555
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 2556
    sget-object v4, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    invoke-virtual {v4, v0}, Landroid/os/ZygoteProcess;->setHiddenApiAccessLogSampleRate(I)V

    :cond_1d
    const-string/jumbo v0, "hidden_api_access_statslog_sampling_rate"

    .line 2560
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_28

    if-le p1, v2, :cond_29

    :cond_28
    move p1, v3

    :cond_29
    if-eq p1, v3, :cond_36

    .line 2564
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    if-eq p1, v0, :cond_36

    .line 2565
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 2566
    sget-object p0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    invoke-virtual {p0, p1}, Landroid/os/ZygoteProcess;->setHiddenApiAccessStatslogSampleRate(I)V

    :cond_36
    return-void
.end method

.method public registerObserver()V
    .registers 4

    .line 2576
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hidden_api_blacklist_exemptions"

    .line 2577
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 2576
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2580
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hidden_api_policy"

    .line 2581
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2580
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2584
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 2585
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "app_compat"

    .line 2584
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2586
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    return-void
.end method

.method public final update()V
    .registers 3

    .line 2590
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hidden_api_blacklist_exemptions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2592
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 2593
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    const-string v1, "*"

    .line 2594
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    .line 2595
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 2596
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    goto :goto_43

    :cond_29
    const/4 v1, 0x0

    .line 2598
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 2599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_41

    :cond_37
    const-string v1, ","

    .line 2601
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_41
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2603
    :goto_43
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/os/ZygoteProcess;->setApiDenylistExemptions(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "ActivityManager"

    const-string v1, "Failed to set API blacklist exemptions!"

    .line 2604
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    :cond_5a
    const-string/jumbo v0, "hidden_api_policy"

    .line 2609
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getValidEnforcementPolicy(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    return-void
.end method
