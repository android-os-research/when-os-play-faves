.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/o$a;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/o$a;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/o$a;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/o$a;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/o$a$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/o$a;->$r8$lambda$3EJs5zOKbZ38ZVVyN7hgJ3Tqnk0(Lcom/samsung/android/mcf/continuity/impl/o$a;Ljava/util/List;)V

    return-void
.end method
