.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Landroid/os/RemoteCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$mh3mIOX-72dixanN8l_d8iGBecE(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/os/RemoteCallback;)V

    return-void
.end method
