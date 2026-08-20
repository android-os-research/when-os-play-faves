.class public final synthetic Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->$r8$lambda$LK4cz49CoWrrP4mcfWDyK6mJcK8(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    return-void
.end method
