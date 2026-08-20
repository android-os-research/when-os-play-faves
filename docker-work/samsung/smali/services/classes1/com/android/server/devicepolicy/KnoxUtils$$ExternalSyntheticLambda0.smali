.class public final synthetic Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/KnoxUtils;->$r8$lambda$dHf7FhZjHFK00fETtpcbTOmDmZ4(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
