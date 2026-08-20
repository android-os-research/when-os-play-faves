.class public final synthetic Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;
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

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/Settings;->$r8$lambda$_1iQxCUkiPLV4436LEhCEIgMp_o(Lcom/android/server/pm/PackageSetting;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
