.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEventInfo"
.end annotation


# static fields
.field public static final MAX_POOL_SIZE:I = 0xa

.field public static final sLock:Ljava/lang/Object;

.field public static sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field public mInPool:Z

.field public mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNext(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 1055
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1120
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1121
    invoke-static {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 5

    .line 1068
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_3
    invoke-static {}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->obtainInternal()Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    .line 1070
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1071
    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 1072
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static obtainInternal()Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;
    .registers 2

    .line 1078
    sget v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v0, :cond_15

    add-int/lit8 v0, v0, -0x1

    .line 1079
    sput v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1080
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1081
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x0

    .line 1082
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x0

    .line 1083
    iput-boolean v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    goto :goto_1a

    .line 1085
    :cond_15
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;-><init>()V

    :goto_1a
    return-object v0
.end method

.method public static toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    goto :goto_2f

    .line 1128
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1127
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1128
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$smrecycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1114
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->-$$Nest$smrecycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    .line 1115
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    return-void
.end method

.method public final initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 1092
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1093
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1094
    iput p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    return-void
.end method

.method public recycle()V
    .registers 4

    .line 1098
    sget-object v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-nez v1, :cond_1e

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->clear()V

    .line 1103
    sget v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1c

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1104
    sput v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1105
    sget-object v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1106
    sput-object p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1107
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 1109
    :cond_1c
    monitor-exit v0

    return-void

    .line 1100
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Already recycled."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_26
    move-exception p0

    .line 1109
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method
