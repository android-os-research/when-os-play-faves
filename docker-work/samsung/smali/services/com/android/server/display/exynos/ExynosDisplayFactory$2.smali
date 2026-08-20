.class public Lcom/android/server/display/exynos/ExynosDisplayFactory$2;
.super Landroid/os/Handler;
.source "ExynosDisplayFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/exynos/ExynosDisplayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 131
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto :goto_26

    .line 140
    :cond_f
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msysfsWriteCGC17_ENC(Lcom/android/server/display/exynos/ExynosDisplayFactory;Ljava/lang/String;)V

    goto :goto_26

    .line 137
    :cond_1b
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msysfsWriteCGC17_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)V

    goto :goto_26

    .line 134
    :cond_23
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    :goto_26
    return-void
.end method
