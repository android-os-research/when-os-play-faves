.class public final synthetic Lcom/android/server/pm/Settings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Settings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Settings;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/Settings;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/Settings;

    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    invoke-static {p0, p1}, Lcom/android/server/pm/Settings;->$r8$lambda$sAmkmcgaY_j80FuENyprLfRyA98(Lcom/android/server/pm/Settings;Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method
