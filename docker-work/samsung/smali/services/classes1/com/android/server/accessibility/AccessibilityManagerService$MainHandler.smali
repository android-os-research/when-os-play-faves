.class public final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_SCREEN_FLASH_NOTIFICATION_CLEAR:I = 0x80

.field public static final MSG_SCREEN_FLASH_NOTIFICATION_END:I = 0x40

.field public static final MSG_SCREEN_FLASH_NOTIFICATION_START:I = 0x20

.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8

.field public static final MSG_START_DEFAULT_FLASH_NOTI:I = 0x10


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 4653
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4654
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 4659
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    .line 4660
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 4661
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4662
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4663
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmHasInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 4664
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 4666
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    .line 4667
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_7f

    :catchall_31
    move-exception p0

    .line 4666
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0

    :cond_34
    const/16 v1, 0x10

    if-ne v0, v1, :cond_56

    .line 4670
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;

    .line 4671
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmToken(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmSbnPkgName(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;->-$$Nest$fgetmPreviewType(Lcom/android/server/accessibility/AccessibilityManagerService$FlashNoti;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemStartFlashNotificationInner(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;I)Z

    goto :goto_7f

    :cond_56
    const/16 v1, 0x20

    if-ne v0, v1, :cond_6c

    .line 4674
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7f

    .line 4675
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mshowScreenNotificationOverlayViewInner(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto :goto_7f

    :cond_6c
    const/16 p1, 0x40

    if-ne v0, p1, :cond_76

    .line 4679
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mfadeOutScreenNotificationOverlayViewInner(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto :goto_7f

    :cond_76
    const/16 p1, 0x80

    if-ne v0, p1, :cond_7f

    .line 4682
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mhideScreenNotificationOverlayViewInner(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    :cond_7f
    :goto_7f
    return-void
.end method
