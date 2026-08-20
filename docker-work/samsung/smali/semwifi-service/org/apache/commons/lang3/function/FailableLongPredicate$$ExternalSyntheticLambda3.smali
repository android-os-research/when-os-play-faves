.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongPredicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/function/FailableLongPredicate;

.field public final synthetic f$1:Lorg/apache/commons/lang3/function/FailableLongPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    return-void
.end method


# virtual methods
.method public final test(J)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;->f$0:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    iget-object p0, p0, Lorg/apache/commons/lang3/function/FailableLongPredicate$$ExternalSyntheticLambda3;->f$1:Lorg/apache/commons/lang3/function/FailableLongPredicate;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongPredicate;->$r8$lambda$SnjGQlPngo5Hy_eteg1OdH-rUvo(Lorg/apache/commons/lang3/function/FailableLongPredicate;Lorg/apache/commons/lang3/function/FailableLongPredicate;J)Z

    move-result p0

    return p0
.end method
