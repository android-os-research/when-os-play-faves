.class public final synthetic Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final synthetic f$1:Landroid/location/LocationConstants$STATE_TYPE;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Landroid/location/LocationConstants$STATE_TYPE;

    iput-object p3, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$1:Landroid/location/LocationConstants$STATE_TYPE;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->$r8$lambda$JjzfG36yH87O6dq7-U18rNbKXy8(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method
