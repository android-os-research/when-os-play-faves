.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o$e;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o$e;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/o$e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/o$e;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$e$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$e;->$r8$lambda$FJmh51f507MmVOjKpmtqr8rNEeg(Lcom/samsung/android/mcf/continuity/impl/o$e;Ljava/lang/String;)V

    return-void
.end method
