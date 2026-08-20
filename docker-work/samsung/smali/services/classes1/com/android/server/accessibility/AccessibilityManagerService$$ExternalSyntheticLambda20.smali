.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method
