.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
