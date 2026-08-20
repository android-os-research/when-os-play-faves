.class public final synthetic Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Comparable;

.field public final synthetic f$1:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Comparable;

    iput-object p2, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Comparable;

    iget-object p0, p0, Lorg/apache/commons/lang3/compare/ComparableUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/compare/ComparableUtils;->$r8$lambda$rh3rAe1sBb2ZsiPHBTjojK55rxU(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method
