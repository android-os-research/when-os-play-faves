.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:Ljava/net/Socket;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;->f$1:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda7;->f$1:Ljava/net/Socket;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$6WdbBa5M3u-1or-2leCZGDzm3ok(Lcom/samsung/android/mcf/continuity/impl/t;Ljava/net/Socket;)V

    return-void
.end method
