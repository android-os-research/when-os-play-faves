.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/service/games/IGameService;

    invoke-interface {p1}, Landroid/service/games/IGameService;->disconnected()V

    return-void
.end method
