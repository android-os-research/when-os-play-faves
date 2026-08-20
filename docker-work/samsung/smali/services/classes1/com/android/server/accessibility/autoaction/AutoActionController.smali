.class public Lcom/android/server/accessibility/autoaction/AutoActionController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AutoActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;,
        Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AutoActionController"


# instance fields
.field public mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/AutoActionController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 79
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3

    const/16 v0, 0x2002

    if-ne p1, v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_b

    .line 121
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 124
    :cond_b
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final handleMouseMotion(Landroid/view/MotionEvent;I)V
    .registers 5

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_15

    const/16 p1, 0x9

    if-eq v0, p1, :cond_27

    const/16 p1, 0xa

    if-eq v0, p1, :cond_27

    .line 153
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    goto :goto_27

    .line 142
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 143
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->update(Landroid/view/MotionEvent;I)V

    goto :goto_27

    .line 145
    :cond_22
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    :cond_27
    :goto_27
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->stop()V

    .line 131
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_13

    .line 134
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 135
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    :cond_13
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_1d

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateMetaState(I)V

    goto :goto_1d

    .line 111
    :cond_18
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 115
    :cond_1d
    :goto_1d
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12

    const/16 v0, 0x2002

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-nez v0, :cond_39

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    new-instance v7, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    const/16 v4, 0x258

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;III)V

    iput-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 93
    new-instance v1, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    iget v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    .line 97
    :cond_39
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/autoaction/AutoActionController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    goto :goto_44

    .line 98
    :cond_3d
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_44

    .line 99
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 102
    :cond_44
    :goto_44
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
