.class public Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointerDownInfo"
.end annotation


# instance fields
.field public mTime:J

.field public mX:F

.field public mY:F

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmX(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmY(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 602
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 603
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    const-wide/16 v0, 0x0

    .line 604
    iput-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-void
.end method

.method public set(FFJ)V
    .registers 5

    .line 596
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 597
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 598
    iput-wide p3, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-void
.end method
