.class public final Lcom/android/server/sepunion/cover/StateNotifier$H;
.super Landroid/os/Handler;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final MSG_NOTIFY_COVER_ATTACH_STATE:I = 0x1

.field public static final MSG_NOTIFY_COVER_SWITCH_STATE:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V
    .registers 4

    .line 95
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_9

    goto :goto_22

    .line 108
    :cond_9
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_10

    move v1, v2

    :cond_10
    invoke-static {p0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$mhandleSendCoverAttachState(Lcom/android/server/sepunion/cover/StateNotifier;Z)V

    goto :goto_22

    .line 105
    :cond_14
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1f

    move v1, v2

    :cond_1f
    invoke-static {p0, v0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$mhandleSendCoverSwitchState(Lcom/android/server/sepunion/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V

    :goto_22
    return-void
.end method
