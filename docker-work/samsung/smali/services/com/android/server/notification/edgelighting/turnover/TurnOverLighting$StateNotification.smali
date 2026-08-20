.class public Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;
.super Ljava/lang/Object;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateNotification"
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCurrentScreenState:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-class p1, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->mCurrentScreenState:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onNotification()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    .registers 1

    return-object p0
.end method

.method public onRinging()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    iget p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->mCurrentScreenState:I

    invoke-direct {v0, v1, p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;-><init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;I)V

    return-object v0
.end method

.method public onScreenChanged(I)V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->mCurrentScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->mCurrentScreenState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 165
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->-$$Nest$fgetmListener(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onScreenDown(Z)V

    goto :goto_36

    .line 167
    :cond_31
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateNotification;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLighting()V

    :goto_36
    return-void
.end method
