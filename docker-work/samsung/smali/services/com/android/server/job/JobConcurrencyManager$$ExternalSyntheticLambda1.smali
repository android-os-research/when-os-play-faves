.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->$r8$lambda$NoaxEiu6_xJEv1MXjQuEjF_zoQw(Ljava/lang/Object;)V

    return-void
.end method
