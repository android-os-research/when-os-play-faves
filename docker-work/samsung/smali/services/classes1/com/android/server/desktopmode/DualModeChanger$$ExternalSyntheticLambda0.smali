.class public final synthetic Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/DualModeChanger;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/DualModeChanger;->$r8$lambda$mwgMeD4hYdJ0jaZ4FQ7fZB9wLzM(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    return-void
.end method
