.class public Lcom/android/server/desktopmode/TouchpadManager$1;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public static synthetic $r8$lambda$XGKnllx9koVjbUjuGHNtyWJS-Zg(Lcom/android/server/desktopmode/TouchpadManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/TouchpadManager$1;->lambda$onDismiss$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDismiss$0()V
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateTouchpadOnDismiss(Lcom/android/server/desktopmode/TouchpadManager;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/TouchpadManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShow()V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$1;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateTouchpad(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    return-void
.end method
