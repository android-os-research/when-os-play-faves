.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->$r8$lambda$TXRVXMgGudKX1d_PMlGQrzgvPDM(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
