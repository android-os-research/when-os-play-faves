.class public Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;
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
    name = "StateRinging"
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCurrentScreenState:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;I)V
    .registers 3

    .line 183
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-class p1, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    .line 184
    iput p2, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->mCurrentScreenState:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public onNotification()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onRinging()Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$IStateMode;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onScreenChanged(I)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->mCurrentScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput p1, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->mCurrentScreenState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 203
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->-$$Nest$fgetmListener(Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onScreenDown(Z)V

    goto :goto_35

    .line 205
    :cond_30
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting$StateRinging;->this$0:Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/turnover/TurnOverLighting;->stopTurnOverLighting()V

    :goto_35
    return-void
.end method
