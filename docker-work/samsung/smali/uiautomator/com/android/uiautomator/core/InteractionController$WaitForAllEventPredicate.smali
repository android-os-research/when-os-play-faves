.class Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Landroid/app/UiAutomation$AccessibilityEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/InteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForAllEventPredicate"
.end annotation


# instance fields
.field mMask:I

.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/uiautomator/core/InteractionController;
    .param p2, "mask"    # I

    .line 122
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 124
    return-void
.end method


# virtual methods
.method public accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "t"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 129
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget v1, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 131
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;->mMask:I

    .line 134
    if-eqz v0, :cond_15

    .line 135
    return v2

    .line 138
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_17
    return v2
.end method
