.class public final synthetic Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/lang3/ClassUtils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Iterable;

    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->$r8$lambda$9VNCa0h13MTzsqTL8nhN1YqN6ic(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
