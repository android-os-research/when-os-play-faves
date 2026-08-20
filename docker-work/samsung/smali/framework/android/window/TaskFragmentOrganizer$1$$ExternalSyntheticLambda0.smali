.class public final synthetic Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskFragmentOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/os/Bundle;

.field public final synthetic blacklist f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskFragmentOrganizer$1;->lambda$onTaskFragmentError$4$android-window-TaskFragmentOrganizer$1(Landroid/os/Bundle;Landroid/os/IBinder;)V

    return-void
.end method
