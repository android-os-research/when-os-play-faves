.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:[Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/util/function/IntSupplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/IntSupplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/IntSupplier;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$4q6sjbckrRinauxrKkIdENhzwF8(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    return-void
.end method
