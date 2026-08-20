.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->$r8$lambda$wMSgfqXE3_nEWMjakSRyR0TcwC0(Lcom/android/server/enterprise/datetime/DateTimePolicy;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
