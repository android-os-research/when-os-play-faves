.class public final Lcom/android/server/wm/AppWarnings$ConfigHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConfigHandler"
.end annotation


# static fields
.field public static final DELAY_MSG_WRITE:I = 0x2710

.field public static final MSG_WRITE:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .registers 4

    .line 483
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$ConfigHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 484
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 489
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 491
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$ConfigHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {p0}, Lcom/android/server/wm/AppWarnings;->-$$Nest$mwriteConfigToFileAmsThread(Lcom/android/server/wm/AppWarnings;)V

    :goto_b
    return-void
.end method

.method public scheduleWrite()V
    .registers 4

    const/4 v0, 0x1

    .line 497
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x2710

    .line 498
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
