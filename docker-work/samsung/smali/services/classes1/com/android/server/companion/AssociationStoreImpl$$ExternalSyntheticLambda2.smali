.class public final synthetic Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda2;
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

    check-cast p1, Landroid/net/MacAddress;

    invoke-static {p1}, Lcom/android/server/companion/AssociationStoreImpl;->$r8$lambda$O-QKO-wnxCoMMkKb8gdbiTE86-E(Landroid/net/MacAddress;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
