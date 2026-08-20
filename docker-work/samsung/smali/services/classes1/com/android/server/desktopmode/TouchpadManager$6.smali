.class public Lcom/android/server/desktopmode/TouchpadManager$6;
.super Ljava/lang/Object;
.source "TouchpadManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$6;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_1d

    :cond_a
    const/16 v0, 0x4002

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 119
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$6;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fputmIsSPenDetached(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    .line 120
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$6;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateSPenState(Lcom/android/server/desktopmode/TouchpadManager;)V

    :cond_1d
    return-void
.end method
