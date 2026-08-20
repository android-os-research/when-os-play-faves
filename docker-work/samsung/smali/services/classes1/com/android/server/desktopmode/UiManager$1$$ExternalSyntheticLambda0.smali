.class public final synthetic Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager$1;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager$1;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager$1;

    iput-object p2, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/UiManager$1;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/UiManager$1;->$r8$lambda$DXAFVSU0oh6Hc7SiEXAjLGX8k3c(Lcom/android/server/desktopmode/UiManager$1;Landroid/os/IBinder;)V

    return-void
.end method
