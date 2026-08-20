.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final exec()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->$r8$lambda$2g9xQ-N8gxSF-AA45wXWEtO4tdc(Lcom/android/server/broadcastradio/hal2/RadioModule;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
