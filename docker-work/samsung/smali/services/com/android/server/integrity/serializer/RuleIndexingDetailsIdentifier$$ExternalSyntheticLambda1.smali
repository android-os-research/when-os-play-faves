.class public final synthetic Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->$r8$lambda$2-7USV2PGsqHKTPfeYoD9f-GBXE(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z

    move-result p0

    return p0
.end method
