.class public final Lcom/android/server/wm/AppPairController$H;
.super Landroid/os/Handler;
.source "AppPairController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppPairController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_NOT_SUPPORT_PAIR_EXECUTION_TOAST:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppPairController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppPairController;Landroid/os/Looper;)V
    .registers 3

    .line 543
    iput-object p1, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    .line 544
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 549
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_29

    .line 551
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    invoke-static {p1}, Lcom/android/server/wm/AppPairController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/AppPairController$H;->this$0:Lcom/android/server/wm/AppPairController;

    invoke-static {p0}, Lcom/android/server/wm/AppPairController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040823

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 551
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 555
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_29
    return-void
.end method
