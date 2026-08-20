.class public final synthetic Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/arch/Processor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/arch/Processor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/arch/Processor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/arch/Processor;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArchUtils;->$r8$lambda$GU7PuivOKi6_z_1oqZeauKxL3bY(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V

    return-void
.end method
