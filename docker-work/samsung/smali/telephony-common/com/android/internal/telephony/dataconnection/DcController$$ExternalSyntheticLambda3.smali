.class public final synthetic Lcom/android/internal/telephony/dataconnection/DcController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcController;->$r8$lambda$PgEutw5hzY7qOlah80PZ4d_Vq_g(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result p0

    return p0
.end method
