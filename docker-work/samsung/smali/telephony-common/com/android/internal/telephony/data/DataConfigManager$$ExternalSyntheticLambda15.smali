.class public final synthetic Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda15;->f$0:Ljava/util/Set;

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
