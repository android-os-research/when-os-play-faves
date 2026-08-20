.class public final synthetic Lcom/android/server/RescueParty$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->$r8$lambda$22pAfMJucaCFFM4DEPjPoCmmWfQ(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
