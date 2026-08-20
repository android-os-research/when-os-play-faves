.class public final synthetic Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->$r8$lambda$O8fJZ37G3QWJn0jPPwLvyiAnL0M(Lcom/android/server/desktopmode/StandaloneModeChanger;ZLjava/lang/Boolean;)V

    return-void
.end method
