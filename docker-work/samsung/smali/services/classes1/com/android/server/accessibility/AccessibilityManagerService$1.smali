.class public Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->init()V
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

    .line 689
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 700
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetmDisplay()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 701
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetmDisplay()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 703
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputmDisplayState(I)V

    :cond_17
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
