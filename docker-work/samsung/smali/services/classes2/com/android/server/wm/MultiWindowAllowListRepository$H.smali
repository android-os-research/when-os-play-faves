.class public final Lcom/android/server/wm/MultiWindowAllowListRepository$H;
.super Landroid/os/Handler;
.source "MultiWindowAllowListRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowAllowListRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final MSG_ALLOW_LIST_CHANGED:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowAllowListRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowAllowListRepository;Landroid/os/Looper;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository$H;->this$0:Lcom/android/server/wm/MultiWindowAllowListRepository;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_f

    .line 68
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository$H;->this$0:Lcom/android/server/wm/MultiWindowAllowListRepository;

    invoke-static {p0}, Lcom/android/server/wm/MultiWindowAllowListRepository;->-$$Nest$fgetmPolicyController(Lcom/android/server/wm/MultiWindowAllowListRepository;)Lcom/android/server/wm/MultiWindowSupportPolicyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateAllTasks()V

    :goto_f
    return-void
.end method
