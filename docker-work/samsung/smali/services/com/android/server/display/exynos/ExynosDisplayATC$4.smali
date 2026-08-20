.class public Lcom/android/server/display/exynos/ExynosDisplayATC$4;
.super Ljava/lang/Object;
.source "ExynosDisplayATC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/exynos/ExynosDisplayATC;->setCountDownTimer(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .registers 2

    .line 958
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 961
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$4;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->-$$Nest$minitCountDownTimer(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    return-void
.end method
