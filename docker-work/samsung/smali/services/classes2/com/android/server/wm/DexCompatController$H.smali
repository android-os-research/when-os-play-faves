.class public final Lcom/android/server/wm/DexCompatController$H;
.super Landroid/os/Handler;
.source "DexCompatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexCompatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final START_ACTIVITY_AS_TOGGLE_FREEFORM:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexCompatController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexCompatController;Landroid/os/Looper;)V
    .registers 3

    .line 671
    iput-object p1, p0, Lcom/android/server/wm/DexCompatController$H;->this$0:Lcom/android/server/wm/DexCompatController;

    .line 672
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 677
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_17

    .line 680
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DexCompatController$Request;

    .line 681
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 682
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 683
    :goto_12
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController$H;->this$0:Lcom/android/server/wm/DexCompatController;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/wm/DexCompatController;->-$$Nest$mstartActivityAsToggleFreeform(Lcom/android/server/wm/DexCompatController;Lcom/android/server/wm/DexCompatController$Request;IZ)V

    :goto_17
    return-void
.end method
