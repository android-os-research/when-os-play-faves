.class public Lcom/android/server/input/InputManagerService$19;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 6198
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 3

    .line 6233
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 6234
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 6236
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerSettings()V

    .line 6237
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerDirectionSettings()V

    .line 6239
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSetPenModeOnDex()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 6201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 6203
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 6205
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmKeyboardLayoutNotificationShown(Lcom/android/server/input/InputManagerService;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 6206
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 6207
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmCurLocale(Lcom/android/server/input/InputManagerService;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6208
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_4e

    .line 6214
    :cond_39
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmCurrentMissingKeyboardLayoutDevice(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v0

    .line 6215
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mhideMissingKeyboardLayoutNotification(Lcom/android/server/input/InputManagerService;)V

    .line 6216
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mshowMissingKeyboardLayoutNotification(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    .line 6217
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmCurLocale(Lcom/android/server/input/InputManagerService;Ljava/util/Locale;)V

    :cond_4e
    :goto_4e
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 6225
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 6226
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IFW_KEY_COUNTER:Z

    if-eqz p1, :cond_69

    .line 6227
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmInputKeyCounter(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/input/InputKeyCounter;->kickOldies(Landroid/content/Context;)V

    :cond_69
    return-void
.end method
