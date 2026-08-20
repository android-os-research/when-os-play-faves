.class public Lcom/android/server/wm/AsyncRotationController$Operation;
.super Ljava/lang/Object;
.source "AsyncRotationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AsyncRotationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AsyncRotationController$Operation$Action;
    }
.end annotation


# static fields
.field public static final ACTION_FADE:I = 0x2

.field public static final ACTION_SEAMLESS:I = 0x1


# instance fields
.field public final mAction:I

.field public mCapturedDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mIsCompletionPending:Z

.field public mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    return-void
.end method
