.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/continuity/impl/e;

.field public final synthetic f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/mcf/continuity/impl/e;

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/e$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/e;->$r8$lambda$ls3sOVDu4Ds6uiTPePbZOKop1IY(Lcom/samsung/android/mcf/continuity/impl/e;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
