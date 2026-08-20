.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction$HierarchyOp;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$1:Landroid/window/WindowContainerTransaction$HierarchyOp;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$3:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$1:Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$3:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$2Cp_q9PZ3Ua-sp0TWyXIose4EoQ(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result p0

    return p0
.end method
