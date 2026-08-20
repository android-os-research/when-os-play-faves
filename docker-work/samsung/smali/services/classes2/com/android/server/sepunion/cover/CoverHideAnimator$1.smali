.class public Lcom/android/server/sepunion/cover/CoverHideAnimator$1;
.super Landroid/os/Handler;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverHideAnimator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 80
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_11

    const/16 v0, 0x66

    if-eq p1, v0, :cond_b

    goto :goto_16

    .line 85
    :cond_b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$mhandleCancelAnimation(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    goto :goto_16

    .line 82
    :cond_11
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->-$$Nest$mhandleStartAnimation(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    :goto_16
    return-void
.end method
