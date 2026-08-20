.class public Lcom/samsung/android/server/audio/DesktopModeHelper;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AS.DesktopModeHelper"

.field public static sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;


# instance fields
.field public mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDexConnectedState:Z

.field public mDexPadConnectedState:Z

.field public mDexState:Z

.field public mIsDesktopMode:Z

.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/samsung/android/server/audio/DesktopModeHelper;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDesktopMode(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDexPolicyParameter(Lcom/samsung/android/server/audio/DesktopModeHelper;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper$1;-><init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "desktopmode"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DesktopModeHelper;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/DesktopModeHelper;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    if-nez v1, :cond_e

    .line 89
    new-instance v1, Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 91
    :cond_e
    sget-object p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isDesktopMode()Z
    .registers 1

    .line 165
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    return p0
.end method

.method public isDexConnectedState()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    return p0
.end method

.method public final isDexMirroringMode()Z
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "hdmi_auto_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    if-nez v0, :cond_2c

    const/16 v0, 0x65

    if-ne p0, v0, :cond_2c

    const-string p0, "AS.DesktopModeHelper"

    const-string v0, "isDexMirroringMode mirroring mode."

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v2
.end method

.method public isDexPadConnectedState()Z
    .registers 1

    .line 157
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    return p0
.end method

.method public registerListener()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string v1, "AS.DesktopModeHelper"

    if-eqz v0, :cond_11

    .line 96
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    const-string v0, "DEX registration is successful"

    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string v0, "DEX registration is failed"

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    return-void
.end method

.method public restoreDexState()V
    .registers 3

    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-eqz v0, :cond_7

    const-string v0, "dex"

    goto :goto_9

    :cond_7
    const-string v0, "none"

    :goto_9
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    const-string/jumbo v1, "station"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    const-string/jumbo v1, "pad"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDexConnectedState(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    return-void
.end method

.method public setDexPadConnectedState(Z)V
    .registers 2

    .line 161
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    return-void
.end method

.method public final setDexParameter(Ljava/lang/String;Z)V
    .registers 4

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "l_dex_key;type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "connected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final setDexPolicyParameter(Ljava/lang/String;)V
    .registers 3

    .line 204
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "l_dex_key;path="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterListener()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    return-void
.end method

.method public updateDexConnectionState(II)V
    .registers 3

    return-void
.end method

.method public updateDexState()V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "audio_output_to_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    const-class v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isDesktopModeAvailableEx(ZZ)Z

    move-result v1

    const-string v2, "dex"

    const-string v4, "AS.DesktopModeHelper"

    if-eqz v1, :cond_3e

    if-nez v0, :cond_3e

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-nez v1, :cond_3e

    .line 120
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 121
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The dex mode is available. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 123
    :cond_3e
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->isDexMirroringMode()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "The dex mode changed to mirrored mode from tablet mode"

    .line 124
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_51

    const-string v2, "none"

    .line 125
    :cond_51
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method
