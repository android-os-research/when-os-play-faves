.class public final Lcom/android/server/wm/FreeformController$UiHandler;
.super Landroid/os/Handler;
.source "FreeformController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FreeformController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UiHandler"
.end annotation


# static fields
.field public static final SHOW_OVER_HEATING_DIALOG_UI_MSG:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;)V
    .registers 4

    .line 651
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$UiHandler;->this$0:Lcom/android/server/wm/FreeformController;

    .line 652
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 656
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_11

    :cond_5
    const-string p1, "FreeformController"

    const-string v0, "Show Overheating dialog"

    .line 658
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$UiHandler;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->showOverHeatingDialog()V

    :goto_11
    return-void
.end method
