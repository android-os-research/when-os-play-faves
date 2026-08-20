.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$lambda$10HKBieAEdoL-2sUqTQwCLpMvw4(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method
