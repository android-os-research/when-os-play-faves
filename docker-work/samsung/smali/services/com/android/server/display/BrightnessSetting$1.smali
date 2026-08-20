.class public Lcom/android/server/display/BrightnessSetting$1;
.super Landroid/os/Handler;
.source "BrightnessSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessSetting;Landroid/os/Looper;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lcom/android/server/display/BrightnessSetting$1;->this$0:Lcom/android/server/display/BrightnessSetting;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 47
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 48
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting$1;->this$0:Lcom/android/server/display/BrightnessSetting;

    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessSetting;->-$$Nest$mnotifyListeners(Lcom/android/server/display/BrightnessSetting;F)V

    :cond_10
    return-void
.end method
