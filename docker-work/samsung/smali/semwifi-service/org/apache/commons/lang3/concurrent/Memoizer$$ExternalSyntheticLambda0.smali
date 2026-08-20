.class public final synthetic Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/concurrent/Memoizer;->$r8$lambda$5q-Lkas31PZoHOfstgRvDKrTPdQ(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
