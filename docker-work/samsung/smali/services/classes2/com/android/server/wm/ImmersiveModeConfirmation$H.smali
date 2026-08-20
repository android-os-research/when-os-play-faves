.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final HIDE:I = 0x2

.field public static final SHOW:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V
    .registers 3

    .line 821
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 822
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 827
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    goto :goto_16

    .line 832
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleHide(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    goto :goto_16

    .line 829
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->-$$Nest$mhandleShow(Lcom/android/server/wm/ImmersiveModeConfirmation;I)V

    :goto_16
    return-void
.end method
