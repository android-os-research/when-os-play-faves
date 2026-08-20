.class public final synthetic Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Streams$ArrayCollector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Streams$ArrayCollector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/Streams$ArrayCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda2;->f$0:Lorg/apache/commons/lang3/Streams$ArrayCollector;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Streams$ArrayCollector;->$r8$lambda$YP2j3u29HOGMgRvpDQyc2GefN3A(Lorg/apache/commons/lang3/Streams$ArrayCollector;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
