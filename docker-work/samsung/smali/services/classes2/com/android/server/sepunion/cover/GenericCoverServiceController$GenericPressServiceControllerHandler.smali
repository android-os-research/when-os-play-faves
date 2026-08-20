.class public final Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;
.super Landroid/os/Handler;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericPressServiceControllerHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V
    .registers 4

    .line 94
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_1b

    .line 105
    :cond_8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->-$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V

    goto :goto_1b

    .line 102
    :cond_12
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V

    :goto_1b
    return-void
.end method
