.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/server/people/data/DataManager;->$r8$lambda$zNRCHjcIJEyKdq3z1hLZNBZ1zcg(Landroid/util/Pair;)J

    move-result-wide p0

    return-wide p0
.end method
