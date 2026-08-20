.class public final synthetic Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/StateManager;

.field public final synthetic f$1:Lcom/android/server/desktopmode/State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/desktopmode/StateManager;

    iput-object p2, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/desktopmode/State;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/desktopmode/StateManager;

    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/desktopmode/State;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/StateManager;->$r8$lambda$jb_1rqRsEmwgmRP9-rEwugzRrXk(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
