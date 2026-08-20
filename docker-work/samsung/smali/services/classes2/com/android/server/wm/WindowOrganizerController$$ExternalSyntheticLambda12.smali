.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/WindowContainerTransaction$Change;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/window/WindowContainerTransaction$Change;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$0:Landroid/window/WindowContainerTransaction$Change;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$0:Landroid/window/WindowContainerTransaction$Change;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;->f$1:[I

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$CBJYK7b3jOzxs-aJNHMihTYpGaM(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V

    return-void
.end method
