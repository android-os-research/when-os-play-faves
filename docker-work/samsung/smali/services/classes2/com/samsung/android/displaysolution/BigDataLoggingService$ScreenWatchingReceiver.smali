.class public final Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BigDataLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/BigDataLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BigDataLoggingService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const-string p1, "ACTION_BOOT_COMPLETED"

    .line 106
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_boot_completed_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void

    :cond_2d
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    const-string p1, "ACTION_SCREEN_ON"

    .line 111
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void

    :cond_40
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    const-string p1, "ACTION_SCREEN_OFF"

    .line 116
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    return-void

    :cond_53
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    const-string p1, "ACTION_USER_PRESENT"

    .line 121
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p0, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/BigDataLoggingService;->-$$Nest$mreceive_user_present_intent(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    :cond_65
    return-void
.end method
