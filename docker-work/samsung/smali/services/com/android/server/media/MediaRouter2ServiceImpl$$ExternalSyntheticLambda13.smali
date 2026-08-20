.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/media/RouteDiscoveryPreference;

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$JIKPL018WkF7jiFCTOxYM_gj0RQ(Ljava/lang/Object;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method
