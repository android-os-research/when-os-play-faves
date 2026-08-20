.class public final Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;
.super Landroid/os/Handler;
.source "SystemUiVisibilityPolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SystemUiVisibilityHandler"
.end annotation


# static fields
.field public static final MSG_SYSTEMUI_VISIBILITY_CHANGED:I = 0x1

.field public static final MSG_SYSTEMUI_VISIBILITY_NOTIFY_TO_BINDER:I = 0x2

.field public static final MSG_THREAD_EXPIRED:I = 0x65


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/Looper;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 254
    invoke-static {}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/16 p1, 0x65

    if-eq v0, p1, :cond_28

    goto :goto_41

    .line 263
    :cond_28
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    invoke-static {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$mquitHandlerThread(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;)V

    goto :goto_41

    .line 260
    :cond_2e
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$mnotifySystemUiVisibilityToBinder(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;Landroid/os/IBinder;I)Z

    goto :goto_41

    .line 257
    :cond_3a
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController$SystemUiVisibilityHandler;->this$0:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->-$$Nest$mhandleUpdateVisibility(Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;I)V

    :goto_41
    return-void
.end method
