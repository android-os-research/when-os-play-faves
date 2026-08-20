.class Lcom/android/ims/rcs/uce/UceController$1;
.super Ljava/lang/Object;
.source "UceController.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/UceController$ControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/UceController;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/UceController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/UceController;

    .line 185
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController$1;->this$0:Lcom/android/ims/rcs/uce/UceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createEabController(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)Lcom/android/ims/rcs/uce/eab/EabController;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 189
    new-instance v0, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/eab/EabControllerImpl;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)V

    return-object v0
.end method

.method public blacklist createOptionsController(Landroid/content/Context;I)Lcom/android/ims/rcs/uce/options/OptionsController;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 205
    new-instance v0, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/rcs/uce/options/OptionsControllerImpl;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public blacklist createPublishController(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 195
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)V

    return-object v0
.end method

.method public blacklist createSubscribeController(Landroid/content/Context;I)Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 200
    new-instance v0, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeControllerImpl;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
