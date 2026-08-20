.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda24;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda24;->f$0:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$32CjxrL6RYOxbo0UH2y689QBHGY(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
