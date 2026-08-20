.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda14;->f$0:Lcom/android/internal/telephony/data/DataNetwork;

    check-cast p1, Landroid/telephony/data/DataCallResponse;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->$r8$lambda$Ubr8k8tZ5l0hV5IbEsIVYy85Pfc(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/data/DataCallResponse;)Z

    move-result p0

    return p0
.end method
