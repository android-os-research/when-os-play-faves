.class public Lcom/samsung/android/server/audio/ScreenSharingHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenSharingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/ScreenSharingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 363
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "AS.ScreenSharingHelper"

    if-eqz p1, :cond_23

    const-string p1, "Enable presentation mode"

    .line 364
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fputmIsPresentationMode(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V

    .line 366
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    goto :goto_3e

    .line 367
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const-string p1, "Disable presentation mode"

    .line 368
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fputmIsPresentationMode(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V

    .line 370
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroingPolicyParameter(Z)V

    :cond_3e
    :goto_3e
    return-void
.end method
