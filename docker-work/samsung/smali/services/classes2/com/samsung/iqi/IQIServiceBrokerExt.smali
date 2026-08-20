.class public Lcom/samsung/iqi/IQIServiceBrokerExt;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_IQI_STATE:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field public static final ACTION_UPLOAD_COMPLETE:Ljava/lang/String; = "com.att.iqi.action.UPLOAD_COMPLETE"

.field public static final EXTRA_IQI_STATE:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field public static final OPT_IN:I = 0x1

.field public static final OPT_NOT_SET:I = -0x1

.field public static final OPT_OUT:I = 0x0

.field public static final OPT_OUT_PERM:I = 0x2

.field public static final TAG:Ljava/lang/String; = "IQIServiceBrokerExt"


# instance fields
.field public DEBUG:Z

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsOptOutTriggered:Z

.field public mLock:Ljava/lang/Object;

.field public mObserver:Landroid/database/ContentObserver;

.field public mServiceRunning:Z

.field public mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

.field public mUploadStateReceiver:Landroid/content/BroadcastReceiver;

.field public rbIqiState:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrbIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsOptOutTriggered(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceRunning(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->changeIqiState(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetOpt(Lcom/samsung/iqi/IQIServiceBrokerExt;)I
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->getOpt()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsubmitSS2S(Z)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    .line 32
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    .line 35
    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    .line 51
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt$2;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    .line 89
    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$3;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    .line 176
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static submitSS2S(Z)V
    .registers 4

    .line 148
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 150
    sget-object v1, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 152
    new-instance v1, Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/ss/SS2S;-><init>()V

    const/4 v2, 0x0

    xor-int/lit8 p0, p0, 0x1

    .line 153
    invoke-virtual {v1, v2, p0}, Lcom/att/iqi/lib/metrics/ss/SS2S;->setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;

    .line 154
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public final changeIqiState(Z)V
    .registers 6

    const-string v0, "com.att.iqi.extra.IQI_STATE"

    const-string v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    if-eqz p1, :cond_4e

    .line 107
    iget-boolean v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeIqiState: newState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IQIServiceBrokerExt"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string v2, "iqi"

    .line 108
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 111
    const-class v2, Lcom/android/server/SystemServiceManager;

    .line 112
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    const-string v3, "com.att.iqi.libs.IQIServiceBroker"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v2

    const/16 v3, 0x258

    .line 113
    invoke-virtual {v2, v3}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    .line 116
    :cond_3e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5d

    .line 121
    :cond_4e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_5d
    return-void
.end method

.method public final getOpt()I
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "att_iqi_report_diagnostic"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v2, :cond_10

    .line 163
    invoke-virtual {p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->setOpt(I)V

    move v0, v1

    :cond_10
    return v0
.end method

.method public final registerIQIServiceStateListener()V
    .registers 4

    .line 128
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 130
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    if-nez v1, :cond_1f

    .line 131
    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "IQIServiceBrokerExt"

    const-string v2, "Register IQI Service State Change Listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_15
    new-instance v1, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-direct {v1, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    .line 133
    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    :cond_1f
    return-void
.end method

.method public final setOpt(I)V
    .registers 3

    .line 169
    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "att_iqi_report_diagnostic"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public startIqi()V
    .registers 5

    .line 180
    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->getOpt()I

    move-result v0

    .line 181
    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIqi opt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IQIServiceBrokerExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    return-void

    .line 194
    :cond_23
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "att_iqi_report_diagnostic"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    const-string v1, "com.att.iqi.libs.IQIServiceBroker"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 196
    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    return-void
.end method

.method public final unregisterIQIServiceStateListener()V
    .registers 4

    .line 139
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 141
    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "IQIServiceBrokerExt"

    const-string v2, "Unregister IQI Service State Change Listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_11
    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    :cond_19
    return-void
.end method
