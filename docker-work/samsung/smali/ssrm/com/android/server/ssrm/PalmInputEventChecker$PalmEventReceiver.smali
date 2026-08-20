.class final Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;
.super Ljava/lang/Object;
.source "PalmInputEventChecker.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PalmInputEventChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PalmEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PalmInputEventChecker;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/PalmInputEventChecker;Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;-><init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 42
    move-object v0, p1

    .line 43
    .local v0, "ev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 44
    .local v1, "toolType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 45
    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-static {v2, v0}, Lcom/android/server/ssrm/PalmInputEventChecker;->-$$Nest$monRecognition(Lcom/android/server/ssrm/PalmInputEventChecker;Landroid/view/MotionEvent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 49
    .end local v0    # "ev":Landroid/view/MotionEvent;
    .end local v1    # "toolType":I
    :cond_e
    goto :goto_13

    .line 47
    :catch_f
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method
