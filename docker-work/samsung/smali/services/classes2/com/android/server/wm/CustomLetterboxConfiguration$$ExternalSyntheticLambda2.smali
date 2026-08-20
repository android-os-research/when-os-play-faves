.class public final synthetic Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomLetterboxConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/CustomLetterboxConfiguration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/CustomLetterboxConfiguration;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {p0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->$r8$lambda$HWIBpAm9gXZ_7dtUeb8tKcri_2I(Lcom/android/server/wm/CustomLetterboxConfiguration;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
