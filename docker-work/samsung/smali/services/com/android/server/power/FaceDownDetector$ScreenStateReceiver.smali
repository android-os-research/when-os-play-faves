.class public final Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceDownDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FaceDownDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/FaceDownDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/FaceDownDetector;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;-><init>(Lcom/android/server/power/FaceDownDetector;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 463
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 464
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 465
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {p0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    goto :goto_2f

    .line 466
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 467
    iget-object p1, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 468
    iget-object p0, p0, Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;->this$0:Lcom/android/server/power/FaceDownDetector;

    invoke-static {p0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    :cond_2f
    :goto_2f
    return-void
.end method
