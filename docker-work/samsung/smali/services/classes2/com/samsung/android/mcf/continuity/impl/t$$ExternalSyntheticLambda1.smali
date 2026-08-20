.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:Ljava/net/Socket;

.field public final synthetic f$2:Ljava/util/function/Consumer;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/Consumer;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iput p4, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$1:Ljava/net/Socket;

    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda1;->f$3:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$MHtbT3Ld_pkXJ-E_lcNdQR0-eDQ(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;Ljava/util/function/Consumer;ILjava/lang/Boolean;)V

    return-void
.end method
