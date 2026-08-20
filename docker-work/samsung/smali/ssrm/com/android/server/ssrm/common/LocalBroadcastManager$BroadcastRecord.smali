.class Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/common/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "_intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "_receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/common/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 56
    iput-object p2, p0, Lcom/android/server/ssrm/common/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 57
    return-void
.end method
