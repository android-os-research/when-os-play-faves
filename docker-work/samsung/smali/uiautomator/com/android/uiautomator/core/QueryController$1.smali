.class Lcom/android/uiautomator/core/QueryController$1;
.super Ljava/lang/Object;
.source "QueryController.java"

# interfaces
.implements Landroid/app/UiAutomation$OnAccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/QueryController;-><init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/QueryController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/QueryController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/uiautomator/core/QueryController;

    .line 58
    iput-object p1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 61
    iget-object v0, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-static {v0}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$fgetmLock(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 62
    :try_start_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_a0

    goto/16 :goto_92

    .line 72
    :sswitch_11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3e

    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 74
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$fputmLastTraversedText(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)V

    .line 75
    :cond_3e
    invoke-static {}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 76
    invoke-static {}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last text selection reported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-static {v3}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$fgetmLastTraversedText(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 65
    :sswitch_65
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_92

    .line 66
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_92

    .line 67
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$fputmLastActivityName(Lcom/android/uiautomator/core/QueryController;Ljava/lang/String;)V

    .line 80
    :cond_92
    :goto_92
    iget-object v1, p0, Lcom/android/uiautomator/core/QueryController$1;->this$0:Lcom/android/uiautomator/core/QueryController;

    invoke-static {v1}, Lcom/android/uiautomator/core/QueryController;->-$$Nest$fgetmLock(Lcom/android/uiautomator/core/QueryController;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_7 .. :try_end_9f} :catchall_9d

    throw v1

    :sswitch_data_a0
    .sparse-switch
        0x20 -> :sswitch_65
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method
