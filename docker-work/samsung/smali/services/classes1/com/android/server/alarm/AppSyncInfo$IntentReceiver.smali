.class public Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 483
    invoke-static {p1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$minitFilter(Lcom/android/server/alarm/AppSyncInfo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 488
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 489
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/AppSyncInfo;Z)V

    goto :goto_49

    .line 490
    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_26

    .line 491
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmScreenOn(Lcom/android/server/alarm/AppSyncInfo;Z)V

    goto :goto_49

    .line 492
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 493
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmCharging(Lcom/android/server/alarm/AppSyncInfo;Z)V

    goto :goto_49

    .line 494
    :cond_38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 495
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0, v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fputmCharging(Lcom/android/server/alarm/AppSyncInfo;Z)V

    :cond_49
    :goto_49
    return-void
.end method
