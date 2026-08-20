.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/t;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/t;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/mcf/continuity/impl/t;

    iget p0, p0, Lcom/samsung/android/mcf/continuity/impl/t$$ExternalSyntheticLambda12;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/t;->$r8$lambda$IpOQamZx5lGzU92PcLcsvYP8M7s(Lcom/samsung/android/mcf/continuity/impl/t;I)V

    return-void
.end method
