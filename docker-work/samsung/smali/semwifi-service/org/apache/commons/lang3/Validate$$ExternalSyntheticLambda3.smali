.class public final synthetic Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda3;->f$1:[Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Validate;->$r8$lambda$EsAPntgHB3V26gK-4DhMXps2B-s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
