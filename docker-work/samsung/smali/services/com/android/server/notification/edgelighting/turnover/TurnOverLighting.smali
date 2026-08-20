.class public Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;
.super Landroid/os/Handler;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;,
        Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;
    }
.end annotation


# static fields
.field public static final MSG_EXPIRE_SCREEN_CHECKER:I = 0x1

.field public static final SCREEN_DOWN:I = 0x1

.field public static final SCREEN_UNKNOWN:I = 0x0

.field public static final SCREEN_UP:I = 0x2

.field public static final STATE_MODE_CALL:I = 0x2

.field public static final STATE_MODE_IDLE:I = 0x0

.field public static final STATE_MODE_NOTIFICATION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TurnOverLighting"

.field public static final TIMEOUT:I = 0x2710


# instance fields
.field public mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

.field public mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

.field public mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

.field public mScreenState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenChecker(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle-IA;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 37
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    return-void
.end method


# virtual methods
.method public getScreenState()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 106
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_9

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    :goto_9
    return-void
.end method

.method public onChanged(Z)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    .line 98
    :goto_5
    iget v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    if-eq v0, p1, :cond_10

    .line 99
    iput p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 100
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {p0, p1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->onScreenChanged(I)V

    :cond_10
    return-void
.end method

.method public setTurnOverLightingListener(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    return-void
.end method

.method public startNotificationLighting()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->onNotification()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_15

    .line 53
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    goto :goto_15

    .line 48
    :cond_13
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 56
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startNotificationLighting: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TurnOverLighting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    return-void
.end method

.method public startRingingLighting()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->onRinging()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    return-void
.end method

.method public stopTurnOverLighting()V
    .registers 2

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    return-void
.end method

.method public final stopTurnOverLightingDelayed()V
    .registers 4

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    const-wide/16 v1, 0x2710

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final stopTurnOverLightingInternal()V
    .registers 4

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 83
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    goto :goto_22

    .line 86
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->cancel()V

    .line 87
    new-instance v1, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateIdle-IA;)V

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 88
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    invoke-interface {p0, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onIdle(Z)V

    :goto_22
    return-void
.end method
