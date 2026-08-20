.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/am/ProcessRecord;

    check-cast p1, Landroid/os/RemoteCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->$r8$lambda$Oq9KjhIs8x7mdpjVmO-QfjbcjR8(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/android/server/am/ProcessRecord;Landroid/os/RemoteCallback;)V

    return-void
.end method
