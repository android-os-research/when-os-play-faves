.class public final Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SendWindowStateChangedEventRunnable"
.end annotation


# instance fields
.field public final mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

.field public final mWindowId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mgetWindowId(Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->getWindowId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->sendPendingEventLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 7478
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7479
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 7480
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mWindowId:I

    return-void
.end method


# virtual methods
.method public final getWindowId()I
    .registers 1

    .line 7497
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mWindowId:I

    return p0
.end method

.method public run()V
    .registers 5

    .line 7485
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "AccessibilityManagerService"

    .line 7486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wait for adding window timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mWindowId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7487
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->sendPendingEventLocked()V

    .line 7488
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final sendPendingEventLocked()V
    .registers 2

    .line 7492
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmSendWindowStateChangedEventRunnables(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7493
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mdispatchAccessibilityEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
