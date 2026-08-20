.class public Lcom/android/server/ssrm/common/callback/fold/LidStateEG;
.super Lcom/android/server/ssrm/common/AbstractEG;
.source "LidStateEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/AbstractEG<",
        "Lcom/android/server/ssrm/common/callback/fold/LidStateE;",
        "Lcom/android/server/ssrm/common/callback/fold/ALidStateER;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/android/server/ssrm/common/AbstractEG;-><init>()V

    .line 14
    new-instance v0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/common/callback/fold/LidStateEG$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ssrm/common/callback/fold/LidStateEG;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;->listener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    return-void
.end method


# virtual methods
.method public deregister(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    :try_start_0
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 35
    .local v0, "im":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_f

    .line 36
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;->listener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->semUnregisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_10

    .line 40
    .end local v0    # "im":Landroid/hardware/input/InputManager;
    :cond_f
    goto :goto_14

    .line 38
    :catch_10
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_14
    return-void
.end method

.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 11
    const-class v0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$com-android-server-ssrm-common-callback-fold-LidStateEG(JI)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "lidState"    # I

    .line 15
    new-instance v0, Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    invoke-direct {v0, p3}, Lcom/android/server/ssrm/common/callback/fold/LidStateE;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;->setLastEvent(Lcom/android/server/ssrm/common/IEvent;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;->notifyReceivers()V

    .line 17
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    :try_start_0
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 23
    .local v0, "im":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_10

    .line 24
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/fold/LidStateEG;->listener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_11

    .line 28
    .end local v0    # "im":Landroid/hardware/input/InputManager;
    :cond_10
    goto :goto_15

    .line 26
    :catch_11
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 29
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_15
    return-void
.end method
