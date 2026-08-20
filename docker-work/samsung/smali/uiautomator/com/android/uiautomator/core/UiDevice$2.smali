.class Lcom/android/uiautomator/core/UiDevice$2;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/UiDevice;->waitForWindowUpdate(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/UiDevice;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/uiautomator/core/UiDevice;

    .line 803
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice$2;->this$0:Lcom/android/uiautomator/core/UiDevice;

    iput-object p2, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 806
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    if-ne v0, v2, :cond_19

    .line 807
    iget-object v0, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1

    .line 809
    :cond_19
    return v1
.end method
