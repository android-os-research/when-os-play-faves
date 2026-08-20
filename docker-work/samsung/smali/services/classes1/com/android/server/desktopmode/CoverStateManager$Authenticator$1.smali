.class public Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;
.super Ljava/lang/Object;
.source "CoverStateManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .registers 5

    .line 152
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyUnverifiedCoverAttachChanged, attached="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p3, :cond_30

    .line 155
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    iget-object p1, p1, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmHandler(Lcom/android/server/desktopmode/CoverStateManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;->this$1:Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthCompleteAndResetCallbacksReceiver()V

    :cond_30
    return-void
.end method
