.class Lcom/android/server/chimera/ChimeraAppManager$2;
.super Ljava/util/ArrayList;
.source "ChimeraAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager$2;->this$0:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "com.android.systemui"

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
