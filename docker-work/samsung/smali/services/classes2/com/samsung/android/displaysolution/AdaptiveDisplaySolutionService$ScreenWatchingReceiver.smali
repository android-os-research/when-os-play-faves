.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdaptiveDisplaySolutionService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 151
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mreceive_boot_completed_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_28
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 155
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_36
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 159
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void

    :cond_44
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 162
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 163
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->-$$Nest$mreceive_user_present_intent(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    :cond_51
    return-void
.end method
