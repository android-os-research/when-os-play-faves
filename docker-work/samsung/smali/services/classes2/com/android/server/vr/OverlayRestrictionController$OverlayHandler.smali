.class public Lcom/android/server/vr/OverlayRestrictionController$OverlayHandler;
.super Landroid/os/Handler;
.source "OverlayRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/OverlayRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverlayHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/OverlayRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/OverlayRestrictionController;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/android/server/vr/OverlayRestrictionController$OverlayHandler;->this$0:Lcom/android/server/vr/OverlayRestrictionController;

    .line 33
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    goto :goto_15

    .line 40
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 41
    :goto_e
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 43
    iget-object p0, p0, Lcom/android/server/vr/OverlayRestrictionController$OverlayHandler;->this$0:Lcom/android/server/vr/OverlayRestrictionController;

    invoke-static {p0, v1, p1}, Lcom/android/server/vr/OverlayRestrictionController;->-$$Nest$mhandleOverlayRestriction(Lcom/android/server/vr/OverlayRestrictionController;ZI)V

    :goto_15
    return-void
.end method
