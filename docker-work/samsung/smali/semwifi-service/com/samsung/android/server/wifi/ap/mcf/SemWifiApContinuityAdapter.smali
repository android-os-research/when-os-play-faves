.class public Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;
.super Ljava/lang/Object;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;
    }
.end annotation


# static fields
.field public static final APP_ID:I = 0x4

.field static final BIND_TIMEOUT_MS:J = 0x1388L

.field private static final EVENT_BIND:I = 0x3

.field private static final EVENT_BIND_TIMEOUT:I = 0x5

.field private static final EVENT_CONTINUITY_SETTINGS_DISABLED:I = 0xa

.field private static final EVENT_CONTINUITY_SETTINGS_ENABLED:I = 0x9

.field private static final EVENT_REGISTER_MESSAGE_LISTNER:I = 0x6

.field private static final EVENT_REGISTER_MESSAGE_LISTNER_TIMEOUT:I = 0x8

.field private static final EVENT_SA_SIGN_IN:I = 0x1

.field private static final EVENT_SA_SIGN_OUT:I = 0x2

.field private static final EVENT_UNBIND:I = 0x4

.field private static final EVENT_UNREGISTER_MESSAGE_LISTNER:I = 0x7

.field static final MCF_SERVICE_PERMISSION:Ljava/lang/String; = "com.samsung.android.mcfds.permission.START_SERVICE"

.field static final MCF_SERVICE_STARTED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STARTED"

.field static final MCF_SERVICE_STOPPED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STOPPED"

.field static final SA_SIGN_IN_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field static final SA_SIGN_OUT_ACTION:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field static final SETTING_ID_CONTINUITY:Ljava/lang/String; = "mcf_continuity"

.field private static final TAG:Ljava/lang/String; = "MHSMcf:Adapter"


# instance fields
.field private adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

.field private isBound:Z

.field private isRegisteredMessageListner:Z

.field private isSamsungAccountSignedIn:Z

.field private mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

.field private final mContext:Landroid/content/Context;

.field private mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

.field private retryCount:I

.field private retryCountRegisteredMessageListner:I

.field private final serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isSamsungAccountSignedIn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCountRegisteredMessageListner:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisBound(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isSamsungAccountSignedIn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputretryCount(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputretryCountRegisteredMessageListner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCountRegisteredMessageListner:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->bind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiApUtil(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getWifiApUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEnabledContinuitySettings(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isEnabledContinuitySettings()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munbind(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->unbind()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 43
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCount:I

    .line 44
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->retryCountRegisteredMessageListner:I

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isSamsungAccountSignedIn:Z

    .line 170
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$3;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bind()Z
    .registers 4

    const-string v0, "MHSMcf:Adapter"

    const-string v1, "bind fuction"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->initialize(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x384

    if-ne v0, v1, :cond_23

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->serviceConnection:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Z

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private getWifiApUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    if-nez v0, :cond_e

    .line 131
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 133
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    return-object p0
.end method

.method private isEnabledContinuitySettings()Z
    .registers 4

    .line 336
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    const-string v1, "mcf_continuity"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move v2, v0

    :cond_15
    return v2
.end method

.method private registerBroadcast()V
    .registers 4

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObserver()V
    .registers 6

    .line 340
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    const-string v2, "mcf_continuity"

    .line 341
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$5;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 340
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerMcfBroadcast()V
    .registers 5

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mcfds.SERVICE_STARTED"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mcfds.SERVICE_STOPPED"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const-string v3, "com.samsung.android.mcfds.permission.START_SERVICE"

    .line 97
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unbind()V
    .registers 3

    const-string v0, "MHSMcf:Adapter"

    const-string v1, "unbind"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->unregisterMessageListener()V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->unbindService(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->release(Landroid/content/Context;)V

    :cond_22
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->removeMessages(I)V

    .line 162
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 163
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->setServiceBinded(Z)V

    .line 165
    :cond_42
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 166
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;->setServiceBinded(Z)V

    :cond_57
    return-void
.end method


# virtual methods
.method public getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    if-nez v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/ContinuityManager;->getContinuityAdapter(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    .line 126
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->adapter:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    return-object p0
.end method

.method public getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isBound:Z

    if-eqz v0, :cond_d

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getContinuityAdapter()Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;->getContinuityDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    if-nez v0, :cond_c

    .line 117
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    .line 119
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->mAutoHotspotHandler:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    return-object p0
.end method

.method public handleBootCompleted()V
    .registers 2

    .line 70
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;->handleBootCompleted()V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerBroadcast()V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerMcfBroadcast()V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerContentObserver()V

    return-void
.end method

.method public registerMessageListener()I
    .registers 4

    .line 261
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    const-string v1, "MHSMcf:Adapter"

    if-nez v0, :cond_17

    const-string p0, "registerMessageListener, discoveryManager is null"

    .line 263
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 266
    :cond_17
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v0

    if-nez v0, :cond_24

    const-string p0, "registerMessageListener, simpleMessageManager is null"

    .line 268
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 271
    :cond_24
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    if-eqz v2, :cond_40

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMessageListener,  already isRegisteredMessageListner:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    .line 275
    :cond_40
    new-instance v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$4;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->registerMessageListener(Lcom/samsung/android/mcf/continuity/api/ContinuityMessageManager$MessageListener;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    const-string p0, "registerMessageListener is done"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 314
    :cond_55
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    const-string p0, "registerMessageListener is failed -4"

    .line 315
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0
.end method

.method public unregisterMessageListener()V
    .registers 5

    .line 321
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getDiscoveryManager()Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MHSMcf:Adapter"

    if-nez v0, :cond_19

    const-string v0, "unregisterMessageListener, discoveryManager = null"

    .line 323
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    return-void

    .line 327
    :cond_19
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;->getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;

    move-result-object v0

    .line 328
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    if-eqz v3, :cond_26

    if-eqz v0, :cond_26

    .line 329
    invoke-interface {v0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;->unregisterMessageListener()V

    :cond_26
    const-string v0, "unregisterMessageListener "

    .line 331
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->isRegisteredMessageListner:Z

    return-void
.end method
