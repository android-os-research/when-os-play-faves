.class public Lcom/android/server/audio/SystemServerAdapter;
.super Ljava/lang/Object;
.source "SystemServerAdapter.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$mbroadcastProfileParentStickyIntent(Lcom/android/server/audio/SystemServerAdapter;Landroid/content/Context;Ljava/lang/String;II)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/audio/SystemServerAdapter;->broadcastProfileParentStickyIntent(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;
    .registers 2

    .line 55
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/android/server/audio/SystemServerAdapter;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final broadcastProfileParentStickyIntent(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 11

    .line 142
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 145
    invoke-static {p0, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    :cond_16
    return-void
.end method

.method public broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 100
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 101
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object p0

    .line 102
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget v2, p0, v1

    .line 103
    invoke-static {p1, v2}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    return-void
.end method

.method public isPrivileged()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public registerUserStartedReceiver(Landroid/content/Context;)V
    .registers 8

    .line 112
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_STARTED"

    .line 113
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/android/server/audio/SystemServerAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/audio/SystemServerAdapter$1;-><init>(Lcom/android/server/audio/SystemServerAdapter;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public sendDeviceBecomingNoisyIntent()V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 84
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 89
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_25

    .line 91
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_25
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw p0
.end method

.method public sendDeviceBecomingNoisyIntent(Landroid/content/Intent;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v0, 0x4000000

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 173
    :try_start_13
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw p0
.end method

.method public sendDeviceBecomingSemNoisyIntent()V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 154
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 159
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_25

    .line 161
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_25
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw p0
.end method

.method public sendMicrophoneMuteChangedIntent()V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 71
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
