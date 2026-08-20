.class public final Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemDisplayQualityAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;


# direct methods
.method public static synthetic $r8$lambda$S41Pxr2EfWWRujPuzcpNZisGfRA(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->lambda$onReceive$0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 123
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOnAsync()V

    goto :goto_1b

    :cond_e
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 125
    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOffAsync()V

    .line 127
    :cond_1b
    :goto_1b
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 113
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOn()V

    goto :goto_1f

    :cond_12
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 115
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    invoke-virtual {p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->handleScreenOff()V

    .line 118
    :cond_1f
    :goto_1f
    iget-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->this$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP;

    iget-boolean p2, p2, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->mUseScreenStatusAsyncHandle:Z

    if-eqz p2, :cond_36

    .line 119
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_36
    return-void
.end method
