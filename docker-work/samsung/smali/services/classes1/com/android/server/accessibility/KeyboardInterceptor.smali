.class public Lcom/android/server/accessibility/KeyboardInterceptor;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "KeyboardInterceptor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "KeyboardInterceptor"

.field public static final MESSAGE_PROCESS_QUEUED_EVENTS:I = 0x1


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

.field public final mHandler:Landroid/os/Handler;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 50
    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 63
    iput-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 64
    iput-object p3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addEventToQueue(Landroid/view/KeyEvent;IJ)V
    .registers 7

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    .line 127
    iget-object p3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez p3, :cond_15

    .line 129
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    return-void

    .line 133
    :cond_15
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->obtain(Landroid/view/KeyEvent;IJ)Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object p2, p1, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 135
    iput-object p1, p2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 136
    iput-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    return-void
.end method

.method public final getEventDelay(Landroid/view/KeyEvent;I)J
    .registers 5

    .line 172
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_10

    const/16 v1, 0x18

    if-ne v0, v1, :cond_d

    goto :goto_10

    :cond_d
    const-wide/16 p0, 0x0

    return-wide p0

    .line 174
    :cond_10
    :goto_10
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 114
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const-string p0, "KeyboardInterceptor"

    const-string p1, "Unexpected message type"

    .line 115
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->processQueuedEvents()V

    .line 119
    iget-object p1, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz p1, :cond_18

    .line 120
    invoke-virtual {p0}, Lcom/android/server/accessibility/KeyboardInterceptor;->scheduleProcessQueuedEvents()V

    :cond_18
    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 9

    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 70
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyboardInterceptor.onKeyEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 80
    :cond_32
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_6c

    .line 81
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 82
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 83
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    :goto_47
    if-eqz v0, :cond_6c

    .line 85
    iget-object v4, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v1, :cond_69

    iget-object v4, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 86
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_69

    iget-object v4, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    .line 87
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_69

    const-wide/16 v0, 0x1

    .line 88
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor;->addEventToQueue(Landroid/view/KeyEvent;IJ)V

    return-void

    .line 91
    :cond_69
    iget-object v0, v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    goto :goto_47

    .line 100
    :cond_6c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_77

    return-void

    :cond_77
    if-gtz v2, :cond_84

    .line 104
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_7e

    goto :goto_84

    .line 109
    :cond_7e
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    return-void

    .line 105
    :cond_84
    :goto_84
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/accessibility/KeyboardInterceptor;->addEventToQueue(Landroid/view/KeyEvent;IJ)V

    return-void
.end method

.method public final processQueuedEvents()V
    .registers 7

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 148
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-eqz v2, :cond_44

    iget-wide v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    cmp-long v3, v3, v0

    if-gtz v3, :cond_44

    .line 149
    iget-object v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget v2, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;->getEventDelay(Landroid/view/KeyEvent;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_22

    .line 152
    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    return-void

    :cond_22
    if-nez v4, :cond_2f

    .line 157
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-object v4, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->event:Landroid/view/KeyEvent;

    iget v3, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->policyFlags:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyKeyEvent(Landroid/view/KeyEvent;I)Z

    .line 159
    :cond_2f
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 160
    iget-object v3, v2, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iput-object v3, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    .line 162
    iput-object v4, v3, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->next:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    .line 164
    :cond_3a
    invoke-virtual {v2}, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->recycle()V

    .line 165
    iget-object v2, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    if-nez v2, :cond_4

    .line 166
    iput-object v4, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueStart:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    goto :goto_4

    :cond_44
    return-void
.end method

.method public final scheduleProcessQueuedEvents()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/accessibility/KeyboardInterceptor;->mEventQueueEnd:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;

    iget-wide v1, p0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->dispatchTime:J

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "KeyboardInterceptor"

    const-string v0, "Failed to schedule key event"

    .line 142
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method
