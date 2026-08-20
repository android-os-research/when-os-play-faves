.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "time_detector"


# instance fields
.field public final mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public static synthetic $r8$lambda$73gKQMfUHdBN3rj0wg5_BV-ghoA(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/GnssTimeSuggestion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestGnssTime$2(Landroid/app/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FDf3gR2iqbvEZLiK-Gw86smTrjc(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestExternalTime$3(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aT5g-qaAMkqPuYLOjpnqdroiErA(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestTelephonyTime$0(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueHtDCiE0J63q2j49a3uBhcuODA(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestNetworkTime$1(Landroid/app/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 91
    sget-object v0, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;Lcom/android/server/timezonedetector/CallerIdentityInjector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;Lcom/android/server/timezonedetector/CallerIdentityInjector;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    .line 100
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object p3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 101
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/timezonedetector/CallerIdentityInjector;

    iput-object p4, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    return-void
.end method

.method private synthetic lambda$suggestExternalTime$3(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    return-void
.end method

.method private synthetic lambda$suggestGnssTime$2(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V

    return-void
.end method

.method private synthetic lambda$suggestNetworkTime$1(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method

.method private synthetic lambda$suggestTelephonyTime$0(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 179
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "time_detector"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 181
    :cond_c
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 182
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1, p3}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public final enforceManageTimeDetectorPermission()V
    .registers 3

    .line 225
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string v1, "manage time and time zone detection"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestExternalTimePermission()V
    .registers 3

    .line 219
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_EXTERNAL_TIME"

    const-string/jumbo v1, "suggest time from external source"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestGnssTimePermission()V
    .registers 3

    .line 212
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_TIME"

    const-string/jumbo v1, "suggest gnss time"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestManualTimePermission()V
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string/jumbo v1, "suggest manual time and time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestNetworkTimePermission()V
    .registers 3

    .line 206
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SET_TIME"

    const-string/jumbo v1, "set time"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSuggestTelephonyTimePermission()V
    .registers 3

    .line 194
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string/jumbo v1, "suggest telephony time and time zone"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorService;->getTimeCapabilitiesAndConfig(I)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeCapabilitiesAndConfig(I)Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 114
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 116
    :try_start_9
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 117
    invoke-interface {v2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal;->capabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19

    .line 120
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_19
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {p0, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 121
    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 189
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/TimeDetectorShellCommand;-><init>(Lcom/android/server/timedetector/TimeDetectorService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestExternalTimePermission()V

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/time/ExternalTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .registers 4

    .line 162
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestGnssTimePermission()V

    .line 163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/GnssTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .registers 4

    .line 141
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestManualTimePermission()V

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    :try_start_a
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0
.end method

.method public suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 4

    .line 154
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestNetworkTimePermission()V

    .line 155
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/NetworkTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 4

    .line 133
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSuggestTelephonyTimePermission()V

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    const/4 p0, 0x0

    return p0
.end method
