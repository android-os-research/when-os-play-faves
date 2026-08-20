.class public final Lcom/android/server/wm/MultiStarController$H;
.super Landroid/os/Handler;
.source "MultiStarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiStarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final SHOW_ENABLE_FOR_KEY_TOAST:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiStarController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiStarController;Landroid/os/Looper;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/MultiStarController$H;->this$0:Lcom/android/server/wm/MultiStarController;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_3a

    .line 123
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 124
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_10

    goto :goto_11

    :cond_10
    move v2, v1

    .line 126
    :goto_11
    iget-object p0, p0, Lcom/android/server/wm/MultiStarController$H;->this$0:Lcom/android/server/wm/MultiStarController;

    invoke-static {p0}, Lcom/android/server/wm/MultiStarController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiStarController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2a

    const-string v0, " disabled."

    goto :goto_2c

    :cond_2a
    const-string v0, " enabled."

    .line 127
    :goto_2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {p0, p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_3a
    return-void
.end method
