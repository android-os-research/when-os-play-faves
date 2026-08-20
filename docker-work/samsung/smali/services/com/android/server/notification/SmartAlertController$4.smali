.class public Lcom/android/server/notification/SmartAlertController$4;
.super Landroid/content/BroadcastReceiver;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SmartAlertController"

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 203
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/SmartAlertController;Z)V

    const-string/jumbo p1, "why"

    .line 204
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SCREEN_ON, reason = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 p2, 0x7

    if-ne p1, p2, :cond_36

    move v2, v0

    :cond_36
    invoke-virtual {p0, v2}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    goto :goto_74

    :cond_3a
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string p1, "ACTION_SCREEN_OFF"

    .line 208
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p1, v2}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmScreenOn(Lcom/android/server/notification/SmartAlertController;Z)V

    .line 210
    iget-object p1, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {p1}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fgetmMissedEventExist(Lcom/android/server/notification/SmartAlertController;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 211
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {p0}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    goto :goto_74

    :cond_5a
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 214
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$4;->this$0:Lcom/android/server/notification/SmartAlertController;

    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v0, "state"

    .line 215
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/notification/SmartAlertController;->-$$Nest$fputmInCall(Lcom/android/server/notification/SmartAlertController;Z)V

    :cond_74
    :goto_74
    return-void
.end method
