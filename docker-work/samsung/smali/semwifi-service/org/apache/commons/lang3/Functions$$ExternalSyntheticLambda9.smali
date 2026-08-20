.class public final synthetic Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/lang3/Functions$FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;->f$0:Lorg/apache/commons/lang3/Functions$FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;->f$0:Lorg/apache/commons/lang3/Functions$FailableConsumer;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->$r8$lambda$bDaoMAw0Qz5Amiv94hABt3Sgzr4(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
