.class public Lcom/android/server/accessibility/AccessibilityManagerService$10;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->semOnLightNotification(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 6917
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 6920
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemDisableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 6921
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemEnableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 6922
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_ON()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 6923
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemDisableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 6924
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_OFF()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 6925
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemEnableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 6926
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_ON()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 6927
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$10;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$msemDisableScreenNotificationEffect(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 6928
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetNOTIFLASH_LENGTH_OFF()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 p0, 0x0

    .line 6929
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputbIsScreenOn(Z)V

    .line 6930
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen blinked, bIsScreenOn : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetbIsScreenOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
