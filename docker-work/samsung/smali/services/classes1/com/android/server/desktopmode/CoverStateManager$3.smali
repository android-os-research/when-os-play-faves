.class public Lcom/android/server/desktopmode/CoverStateManager$3;
.super Ljava/lang/Object;
.source "CoverStateManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/CoverStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/CoverStateManager;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 3

    .line 120
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager$3;->this$0:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$fgetmAuthComplete(Lcom/android/server/desktopmode/CoverStateManager;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_14

    .line 121
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "onBlocked(), !mAuthComplete"

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 131
    :cond_14
    invoke-static {}, Lcom/android/server/desktopmode/CoverStateManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "onBlocked(), Unknown reason"

    invoke-static {p0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
